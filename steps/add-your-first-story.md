---
layout: default
title: "1. Add your first story to Calibre"
subtitle: "Take a quick tour of Calibre, add a story file and read it"
permalink: /steps/add-your-first-story/
section: Hands-on steps
guide:
  result: "A story in your Calibre library that you can open and read, and a feel for how Calibre is laid out."
  needs:
    - {label: "Calibre installed and open, with an empty or new library"}
previous: {label: "What's what", url: "/whats-what/", section: "Start here"}
next: {label: "Install FanFicFare", url: "/steps/install-fanficfare/", section: "Hands-on steps"}
---

Before FanFicFare comes into it, let's see what Calibre does on its own. Calibre keeps your e-books in a **library**: one tidy, searchable list, with a built-in reader. In this step you'll add a single story to it and open it.

## 1. Meet the Calibre window

Open Calibre. If your library is new, it contains one sample book, the Quick Start Guide. You can ignore it.

<figure class="annotated">
  <img src="{{ '/assets/img/tour-main-window.png' | relative_url }}" alt="The Calibre window with five areas numbered">
  <span class="label" style="left: 92%; top: 8%;">1</span>
  <span class="label" style="left: 74%; top: 16.2%;">2</span>
  <span class="label" style="left: 6%; top: 62%;">3</span>
  <span class="label" style="left: 45%; top: 55%;">4</span>
  <span class="label" style="left: 90%; top: 82%;">5</span>
</figure>

1. **The toolbar.** Buttons for the things you do with books: add them, edit their details, read them. The FanFicFare button will join them in Step 2.
2. **The search bar.** Type here to find a book by title, author, tag or anything else about it.
3. **The left panel.** Browse your library by author, tag, series and more.
4. **The book list.** Every book in your library, one per row.
5. **The details panel.** Shows the cover, the details and the summary of whichever book is selected.

## 2. Add the sample story

I've made a short sample story for you to try, so you don't need anything else. It's the first three chapters of a story of mine, in an **EPUB** file, the standard e-book format. ([What's what]({{ '/whats-what/' | relative_url }}) says a little more about EPUBs.)

[Download the sample story (EPUB)]({{ '/downloads/sample-story-chapters-1-3.epub' | relative_url }}) and save it somewhere you can find it, such as your Downloads folder.

In Calibre, click **Add books** in the toolbar. A window opens for choosing files. Find the file you just saved, select it and confirm. (The small arrow next to the button has other ways to add books, which you don't need yet.)

The story appears in your book list.

## 3. Look at what you added

Click the story to select it. The details panel shows its author, its tags and its summary.

![Calibre with the sample story selected, showing its stand-in cover, tags and summary]({{ '/assets/img/step1-library.png' | relative_url }})

AO3 stories have no cover of their own, so Calibre shows a plain stand-in. Most of the long list of tags comes from the story's page on AO3, and FanFicFare adds a few of its own, such as the date of the last update. Later on, FanFicFare fills these in for you automatically.

### About tags

A tag is a keyword that describes a story. On AO3, tags cover things like the fandom, the relationships, the characters, and the additional tags the author chooses to add. Calibre puts all of them together in one list called **Tags**, which is why the list looks so long. With some more advanced techniques, they can be sorted into separate categories, for example one column for the fandom and another for the relationships. This guide doesn't cover that, but my [covers guide](https://wordsandpics.github.io/fff-covers/) shows one way to do it.

### Finding a story later

Once your library grows, there are three quick ways to find a story. Type a word, such as a title, an author or a tag, into the search bar. Click an item in the left panel, such as an author or a tag, to show only the books that have it. Or click a tag or an author in the details panel to see every story that shares it.

## 4. Read it

With the story selected, click **View**. Calibre opens it in its own reader.

The first page is a **title page** made by FanFicFare. It lists the story's details: category, tags, status and summary.

![The title page at the start of the story in Calibre's reader]({{ '/assets/img/step1-viewer-title.png' | relative_url }}){: .small}

The story itself begins right after it.

![The first page of the story in Calibre's reader]({{ '/assets/img/step1-viewer-story.png' | relative_url }}){: .small}

The reader shows its own instructions for moving around when you open a book, so there's no need to repeat them here.

You can also open the reader's list of chapters, as in this screenshot. You may notice that the title page says the story has eight chapters, while the list shows only three. That's on purpose, and you'll see why in Step 5.

![The reader with its list of chapters open on the left, showing chapters 1 to 3]({{ '/assets/img/update-viewer-before.png' | relative_url }}){: .small}

## 5. Change a story's details

Calibre keeps a set of details for each book: title, author, rating, tags and more. These details are called **metadata**. Changing them is different from changing the story itself: you're only changing how Calibre describes the book.

Select the story and click **Edit metadata**. Try giving it a rating, and add a tag of your own, such as `to-reread`. Click **OK**, and look at the book list and details panel to see your changes.

![The Edit metadata window for the sample story, with title, author, rating, tags and summary]({{ '/assets/img/step1-edit-metadata.png' | relative_url }})

The **Previous** and **Next** buttons at the bottom, and the "1 of 2" in the title bar, let you step through the other books in your list. You can ignore them.

## Next

You now have a library, a story in it, and a feel for the window. Next you'll add FanFicFare, so Calibre can fetch stories from AO3 on its own.
