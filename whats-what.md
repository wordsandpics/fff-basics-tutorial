---
layout: default
title: "What's what"
subtitle: "Calibre, FanFicFare and how they fit together"
permalink: /whats-what/
section: Start here
previous: {label: "Overview", url: "/", section: "Start here"}
next: {label: "Add your first story to Calibre", url: "/steps/add-your-first-story/", section: "Hands-on steps"}
---

You'll use two tools in this guide, and they do different jobs. Here's a short introduction to each, and a few words you'll see along the way.

## Calibre: your library and reader

**Calibre** is a free program for keeping e-books. It holds them in a **library**: one tidy list that you can search, sort and read from. It runs on Windows, Mac and Linux.

On its own, Calibre can't fetch stories from AO3. That's where the second tool comes in.

## FanFicFare: the downloader

**FanFicFare** is a free add-on for Calibre. Given the link to a story, it reads the story from AO3 (and many other sites), builds an e-book from it, and adds it to your Calibre library. Later, it can check the story for new chapters and add them.

It is developed independently as open-source software. It's not part of Calibre, and it's not made by AO3.

An add-on like this is called a **plugin**. You'll install it in Step 2.

## Camoufox: working quietly in the background

FanFicFare uses a web browser called **Camoufox** behind the scenes to fetch stories from AO3. You switch it on with one line of settings in Step 3, and never use it yourself.

## EPUB: the file your stories are saved as

Every story you download is saved as an **EPUB** file. EPUB is the standard format for e-books, a bit like `.docx` is for documents. FanFicFare makes EPUBs by default, and most e-reader apps and devices can open them: Calibre's own reader, Apple Books, Google Play Books, Kobo and many others. The last page, [What next?]({{ '/next-steps/' | relative_url }}), covers reading on a phone or e-reader.

## How they fit together

<figure class="cover-flow" aria-labelledby="flow-title">
  <figcaption id="flow-title">From AO3 to your reading</figcaption>
  <div class="cover-flow-node"><strong>A story on AO3</strong><span>You copy its link.</span></div>
  <div class="cover-flow-arrow" aria-hidden="true">↓</div>
  <div class="cover-flow-node"><strong>FanFicFare, inside Calibre</strong><span>It reads the story and builds an e-book from it.</span></div>
  <div class="cover-flow-arrow" aria-hidden="true">↓</div>
  <div class="cover-flow-node"><strong>Your Calibre library</strong><span>The e-book is saved here, with its title, author, tags and summary.</span></div>
  <div class="cover-flow-arrow" aria-hidden="true">↓</div>
  <div class="cover-flow-node"><strong>You read it</strong><span>On your computer, or on a phone or e-reader.</span></div>
</figure>

## Words you'll see

- **Library:** your collection of e-books in Calibre. It's an ordinary folder on your computer.
- **EPUB:** the standard e-book file format, described above. Your stories are saved as EPUBs.
- **Link (or URL):** the address of a story's page on AO3, for example `https://archiveofourown.org/works/79605291`.
- **Metadata:** the details Calibre keeps about each book: title, author, tags, rating and so on.
- **Plugin:** an add-on that gives Calibre a new ability.

## Next

That's all the background you need. In Step 1 you'll open Calibre and add your first story.
