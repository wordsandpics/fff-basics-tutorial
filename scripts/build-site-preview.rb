# Builds a local preview of the site into .site-preview/ (no Jekyll needed).
# Run:  ruby scripts/build-site-preview.rb
# View: python3 -m http.server 4000 --directory .site-preview   then open http://localhost:4000
require 'fileutils'
require 'date'
require 'kramdown'
require 'kramdown-parser-gfm'
require 'liquid'
require 'yaml'

ROOT = File.expand_path('..', __dir__)
OUTPUT = File.join(ROOT, '.site-preview')

module PreviewFilters
  def relative_url(input)
    value = input.to_s
    value.start_with?('/') ? value : "/#{value}"
  end
end

Liquid::Template.register_filter(PreviewFilters)

def split_frontmatter(text)
  match = text.match(/\A---\n(.*?)\n---\n?/m)
  return [{}, text] unless match
  [YAML.safe_load(match[1], permitted_classes: [Date], aliases: true) || {}, text[match[0].length..]]
end

def page_url(file, data)
  return data['permalink'] if data['permalink']
  relative = file.delete_prefix("#{ROOT}/").sub(/\.md\z/, '')
  relative == 'index' ? '/' : "/#{relative}/"
end

config = YAML.safe_load(File.read(File.join(ROOT, '_config.yml')), aliases: true)
layout = File.read(File.join(ROOT, '_layouts', 'default.html'))
site = config.merge('nav' => config['nav'])

FileUtils.mkdir_p(OUTPUT)
# Empty the folder instead of deleting it, so a running preview server keeps working.
Dir.children(OUTPUT).each { |child| FileUtils.rm_rf(File.join(OUTPUT, child)) }
FileUtils.cp_r(File.join(ROOT, 'assets'), OUTPUT)
FileUtils.cp_r(File.join(ROOT, 'downloads'), OUTPUT) if File.directory?(File.join(ROOT, 'downloads'))

skip_dirs = %w[/.git/ /.site-preview/ /screenshots-draft/ /sample/ /scripts/ /tests/]
skip_names = %w[README.md DECISIONS.md TODO.md RESEARCH-camoufox.md SCREENSHOT-LIST.md AGENTS.md]

files = Dir.glob(File.join(ROOT, '**', '*.md')).reject do |file|
  skip_dirs.any? { |d| file.include?(d) } || skip_names.include?(File.basename(file))
end

files.each do |file|
  data, markdown = split_frontmatter(File.read(file))
  next if data['published'] == false

  url = page_url(file, data)
  page = data.merge('url' => url)
  liquid_markdown = Liquid::Template.parse(markdown).render('page' => page, 'site' => site)
  content = Kramdown::Document.new(liquid_markdown, input: 'GFM', syntax_highlighter: 'rouge').to_html
  html = Liquid::Template.parse(layout).render('page' => page, 'site' => site, 'content' => content)

  destination = url == '/' ? File.join(OUTPUT, 'index.html') : File.join(OUTPUT, url, 'index.html')
  FileUtils.mkdir_p(File.dirname(destination))
  File.write(destination, html)
end

puts "Built #{files.length} source pages in #{OUTPUT}"
