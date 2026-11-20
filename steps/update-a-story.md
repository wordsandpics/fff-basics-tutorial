---
layout: default
title: "5. Keep a story up to date"
subtitle: "Fetch new chapters for a story you've already downloaded"
permalink: /steps/update-a-story/
section: Hands-on steps
guide:
  result: "A story in your library brought up to date with all its chapters."
  needs:
    - {label: "FanFicFare installed and set up", url: "/steps/set-up-fanficfare/"}
    - {label: "A story with its AO3 link stored in it: the sample from Step 1 has one, and so does any story you download with FanFicFare"}
previous: {label: "Download a story from its link", url: "/steps/download-from-a-link/", section: "Hands-on steps"}
next: {label: "What next?", url: "/next-steps/", section: "Keep going"}
---

Stories on AO3 grow as authors post new chapters. A book in your library doesn't change by itself: it's a snapshot of the story on the day you downloaded it. FanFicFare can check AO3 and add whatever is new.

It finds the story using the AO3 link stored in the book, which you saw as **Ids** in the details panel in Step 4. That's why it works for stories downloaded with FanFicFare, and for the sample story from Step 1.

## 1. See what you have

The sample story from Step 1 is a good example, because it's deliberately incomplete. Select it and click **View** to open it.

![The title page says Chapters: 8, but the contents list holds only chapters 1 to 3]({{ '/assets/img/update-viewer-before.png' | relative_url }}){: .small}

The title page describes the whole story as AO3 lists it: **Chapters: 8**. The contents list on the left shows what this file actually holds: only the first three chapters.

In real life you'd update a story that's still being posted, one where the author has added chapters since you downloaded it. This sample stands in for that.

## 2. Start the update

Close the viewer. In Calibre, make sure the story is selected. Open the FanFicFare menu and choose **Update Existing FanFiction Books**.

A window lists the books it's about to update, with a green tick beside each.

![The Update Existing List window, showing one story with a green tick, its author and its AO3 link]({{ '/assets/img/update-dialog.png' | relative_url }}){: .small}

Click **OK**. As in Step 4, a progress window appears while FanFicFare checks AO3, and the **Jobs** counter at the bottom right shows work in the background.

![The progress window during an update: Fetched metadata for 0 / 1]({{ '/assets/img/update-progress.png' | relative_url }}){: .small}

Updating a story with many chapters takes longer than a short one, because FanFicFare fetches each new chapter.

## 3. Say yes to add the new chapters

When FanFicFare finishes, it reports the result in the same kind of window you saw in Step 4 and asks whether to go ahead. Click **Yes**.

## 4. Check the result

Open the story again with **View**. The contents list now shows all eight chapters.

![The same story after the update: the contents list now shows chapters 1 to 8]({{ '/assets/img/update-viewer-after.png' | relative_url }}){: .small}

## When there's nothing new

Run the update again on the same story. It now has every chapter, so FanFicFare finds nothing to add, and says so:

![FanFicFare's message: None of the 1 URLs/stories given can be/need to be downloaded]({{ '/assets/img/update-nothing-new.png' | relative_url }}){: .small}

It still asks whether to proceed, but there's nothing to add, so you can click **No**.

<div class="callout note">
  <div class="callout-title">Updating several stories at once</div>
  <p>You can select more than one story before choosing <strong>Update Existing FanFiction Books</strong>. They all appear in the list, and FanFicFare checks each one in turn. But every story means more requests to AO3, and checking a lot of stories at once can get you blocked for a while. Do a few at a time.</p>
  <img src="{{ '/assets/img/update-two-stories.png' | relative_url }}" alt="The Update Existing List window with two stories listed, each with a green tick" class="small">
</div>

<div class="callout note">
  <div class="callout-title">Coming later: updating from email</div>
  <p>If you follow a lot of stories, there's a smarter way to keep up. AO3 emails you when a story you subscribe to gets a new chapter, and FanFicFare can use those emails to update only the stories that have changed, instead of checking all of them. That's covered in a later guide.</p>
</div>

<div class="callout note">
  <div class="callout-title">Something not working?</div>
  <ul>
    <li><strong>The update reports a problem:</strong> click <strong>View log</strong> in the results window. If it mentions AO3 refusing the request (for example 403 or 429), wait a few minutes and try again.</li>
    <li><strong>FanFicFare can't find the story's link:</strong> select the book and click <strong>Edit metadata</strong>. Look at the <strong>Ids</strong> box. It should contain a line like <code>url:https://archiveofourown.org/works/79605291</code>. If it's empty, type the story's AO3 address after <code>url:</code>, click <strong>OK</strong>, and try again.</li>
    <li><strong>Nothing seems to change:</strong> if the message says "None of the 1 URLs/stories given can be/need to be downloaded", the story has no new chapters.</li>
  </ul>
</div>

## Next

That's the whole basic loop: add a story, download new ones from a link, and keep them up to date. The last page shows what you can do with your library from here.
