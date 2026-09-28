---
title: "Drafts Folder for Plaintext Drafts and Notes"
description: "A simple yet brilliant method to keep all your plaintext notes and drafts in one place."
callout: "Keep all your work journal entries, notes, and drafts in a single @Drafts folder to save time organizing files. This folder brings together all the ideas covered up to this point."
metaKeywords: "files, folder, notes, drafts, Sublime Text, Markdown, preview, revision history, git, Word, docx"
icon: files
weight: 301
---

I do as much of my writing as possible in [plaintext](./2-01-why-plaintext-for-notes.html), and I keep *all* those plaintext files in a single folder called "@Drafts". Having everything in one place saves me a lot of time. I never need to think about where to save a note, and everything I write is in a single silo that is full-text searchable, both in Windows Explorer and within my preferred text editor, Sublime Text. Moreover, these files are easily backed up, ported to other computers or devices, and synced with Dropbox or other services. Because all these notes and drafts are just plaintext files, I added a simple way to include tags in the file names for easy searching and categorization.

## Features summary {#features-summary}

This outline is for a robust system of notes and drafts used for day-to-day work. I wrote out all the features of the system, and link to instructions I wrote to set everything up.

Once you set everything up that I describe, you will have a very powerful and flexible system for writing lots of things down and accessing your content very quickly.

- [Plaintext notes](#plaintext-notes)
- [One root folder](#one-root-folder)
- [Tags and dates](#tags-and-dates)
- [Quick file creation](#quick-file-creation)
- [Search for files and within files](#search-for-files-and-within-files)

    - [Ways to search within Windows](#ways-to-search-within-windows)
    - [Ways to search within Sublime Text](#ways-to-search-within-sublime-text)
- [Markdown](#markdown)

    - [Markdown formatting, list completion, and keyboard shortcuts](#markdown-formatting-list-completion-and-keyboard-shortcuts)
    - [Markdown color scheme](#markdown-color-scheme)
- [Revision history](#revision-history)

    - [Local History](https://github.com/vishr/local-history)
    - [Dropbox](#dropbox)
    - [Git](#git)
- [Export Markdown to Word (docx)](#export-markdown-to-word-docx-)
- [Backup](#backup)

## Features details {#features-details}

### Plaintext notes {#plaintext-notes}

My notes are stored as plaintext files, using .md (for Markdown) as the default file extension. Other file extensions (such as .cs, .sql, .txt. and .html) are allowable if they contain source code, plaintext, or other text-based markup.

The primary text editor I use for this system is [Sublime Text](). (One great thing about plaintext files, however, is that you are not locked into one editor. I still use my old favorite Windows Markdown editor, Markdown Pad, and other specialized editors upon occasion.)

### One root folder {#one-root-folder}

All my drafts, which include my [work journal](./2-09-work-journal.html), [standing lists](./2-11-standing-lists-for-gtd-or-other-organizational-systems.html) and other files, and even my [todo.txt](./1-01-why-todo-txt.html) files, are in one folder: "@Drafts". I don't use subfolders to categorize my drafts at all. The reason: I never want to have to think about where to save a file, or to search all over on my system for where my writing is. My "@Drafts" folder lives within my permanent "[File System For Life](./3-02-file-folder-structure-for-life.html)" and is a Favorite in my [Windows Explorer Sidebar](./3-03-windows-explorer-sidebar.html).

To help keep Sublime Text confined to my "@Drafts" folder, I created a Sublime Text project for it. A project helps scope your searches and ensure that new files get created in the correct folder. It is necessary for this system to work smoothly.

To create a project, do the following:

1. Call the command "Project: Add Folder" from the Command Palette (`control+shift+p`). (If you are more comfortable using the menus, find the command in "Project \> Add Folder to Project...".)
2. Choose a folder to add to the project. This should be your "@Drafts" folder.
3. Call the command "Project: Save As" from the Command Pallete. (If you are more comfortable using the menus, find the command in "Project \> Save Project As...".)
4. Type a file name for the project (leave the default extension alone), and save it within the "@Drafts" folder.

Sublime Text should stick with that project until you create or open another one. You can use the "Project" menu to easily switch or reopen a project.

{{< anchor "tagsanddates" >}}

### Tags and dates {#tags-and-dates}

I write tags within the note file names, borrowing some of the conventions used in the \[todo.txt\]\[[http://todotxt.com/](http://todotxt.com/)\] format. Project name tags are preceded by "+" and context tags are preceded by "@". Dates are always captured in "yyyy-mm-dd" format in file names. This date format is an international standard, and is useful because dates will sort alphanumerically.

For example, files may be named "Meeting Notes +NewWebSite @office 2013-12-01.md" or "Journal 2013-12-01.md". I don't bother using tags for my journal entry files, typically because I don't often have a plan for them before I write them. I do try, however, to tag every project-specific file I write, even if I have to rename them to add the tags.

### Quick file creation {#quick-file-creation}

I don't want to even think about where I am going to create notes and drafts, so I store them all in the same folder called "@Drafts". I also don't want to call up a file save window every time I create a new file; that's too slow. I want creating drafts to *lightning fast*.

In Sublime Text, I use the "[Advanced New File](https://github.com/skuroda/Sublime-AdvancedNewFile/)" package to allow for really quick file creation. New files can be created using the keystroke `control+alt+n`, typing the file name, and pressing enter. I set the package settings to default to a ".md" extension, to save me a few keystrokes per new file.

See [this article](./2-06-sublime-text-features-and-packages-of-interest-to-writers.html) for package installation and configuration instructions.

### Search for files and within files {#search-for-files-and-within-files}

A whole bunch of text files aren't useful if you can't get what you want out them quickly. Fortunately, Windows Explorer and Sublime Text make searching for words in file names and within the full text of each file lightning fast.

Make your computer work for you! Always search for file names or contents rather than browsing through folders. That said, sort your notes and drafts folder by date, descending, so that your latest notes are always sorted to the top. That can save time, too.

#### Ways to search within Windows {#ways-to-search-within-windows}

Windows 7 and later have built-in file name and full-text search capabilities that are only keystrokes away at any time.

1. Use the Start Menu (hit the Windows key then start typing).
2. Use the search bar in Windows explorer on your notes and drafts folder.

#### Ways to search within Sublime Text {#ways-to-search-within-sublime-text}

Sublime Text can easily search within file names or for text within files, and its search range can be scoped to a folder tree or a Sublime Text project.

1. Sublime Text's built-in "Go To Anything" command (control+p) will provide a list of files that you can narrow down by typing keywords. This works very, very quickly.
2. To dig into the text within the files, use Sublime Text's built-in "Find in Files" command (control+shift+f).

### Markdown {#markdown}

#### Markdown formatting, list completion, and keyboard shortcuts {#markdown-formatting-list-completion-and-keyboard-shortcuts}

The Sublime Text "[MarkdownEditing](https://github.com/ttscoff/MarkdownEditing/)" package enables Markdown editing support, with live preview to format your headings, boldface, and italics nicely, and automatic list continuation and other shortcuts that streamline the Markdown writing process.

See [this article](2-04-how-to-set-up-sublime-text-for-markdown-editing.html) for package installation and configuration instructions.

#### Markdown color scheme {#markdown-color-scheme}

Black text on a white background can be tiring to stare at all day. The Sublime Text "[MarkdownEditing](https://github.com/ttscoff/MarkdownEditing/)" package provides a lower-contrast, dark-gray on light-gray theme that makes writing easier on the eyes.

See [this article](2-04-how-to-set-up-sublime-text-for-markdown-editing.html) for package installation and configuration instructions.

### Revision history {#revision-history}

#### Local History in Sublime Text {#local-history-in-sublime-text}

Keeping revisions (older versions) of notes and drafts is important to me. In Sublime Text, the "[Local History](https://github.com/vishr/local-history)" package will produce a version of the file each time it is saved, and can show changes, or diffs, between the current version and prior versions. In my opinion, Local History is a lot easier to work with than Git, though Git brings with it a ton of other features, and doesn't rely on using Sublime Text at all.

#### Dropbox {#dropbox}

If you are allowed to store your notes on a third-party service, you can use the cloud storage and syncing service Dropbox to sync your notes between devices and to maintain a version history of all the files you sync. It is easy to browse through earlier revisions of your files on the Dropbox web site. iOS writing apps like Editorial and Byword offer great in-app revision history browsing, unlike anything I have seen offered on the Windows desktop.

If you don't have a Dropbox account, please consider using my [referral link](https://db.tt/LRMfKUs1)!) to sign up.

(Yes, there are alternative to Dropbox, but Dropbox is very easy to set up and use, and has a huge number of third-party applications supporting it.)

#### Git {#git}

I can't use Dropbox for my work notes, and I don't need it for online backup (my corporation provides that). Therefore, for revision history, I decided to use the same, rock-solid version control system I use for my source code: Git.

You can install Git on your system and use it to store multiple versions of each note and view the differences between versions. Git integrates with Sublime Text and other editors, can be used on its own outside an editor, and can even be called by a Windows Scheduled Task. This option is useful if you can't use Dropbox or Sublime Text's "Local History" package, or if you are comfortable with Git's workflow already.

See [this article](2-08-how-to-set-up-git-and-sublime-text-for-version-control.html) for package installation and configuration instructions.

### Export Markdown to Word (docx) {#export-markdown-to-word-docx-}

For drafts, I often need to convert my Markdown-formatted text files to Word .docx format. I use a command line document conversion tool called Pandoc to do it, and call it from within Sublime Text via a simple keystroke. Pandoc can also be called from [AutoHotKey](http://www.autohotkey.com/) or (of course) the command line.

See [this article](./2-05-how-to-set-up-sublime-text-for-markdown-export-to-word.html) for configuration instructions\].

### Backup {#backup}

You *must* set up some kind of backup of your files so you do not lose your work. Backup protects you from data loss due to theft, accidental destruction, or failure of your equipment. (Hard drives, especially spinning disks, fail all the time!)

If you are working on a corporate computer, they should provide you some kind of backup solution, or at least a home directory on a file server that is backed up at least nightly. If you have a home directory, consider using it to store all your files. If you don't, and all your files are on local storage, you could use Dropbox and/or another online service for offsite backup. Windows 7 also has a [built-in backup program](http://windows.microsoft.com/en-us/windows7/back-up-your-files) that is pretty easy to set up.
