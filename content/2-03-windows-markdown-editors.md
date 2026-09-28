---
title: "Windows Markdown Editors"
description: "It is more effective to write your drafts in a great text editor, using a lightweight markup language, than to use a bloated WSYSIWYG tool like  Word."
callout: "Find a good Windows Markdown editor. I recommend Sublime Text, but there are simpler alternatives."
metaKeywords: "notes, drafts, Markdown"
icon: notes
weight: 203
---

## Is Markdown just for Macs? {#is-markdown-just-for-macs-}

John Gruber created [Markdown](http://daringfireball.net/projects/markdown/), which is a simple set of rules for marking up your plaintext files for formatting. Markdown is brilliant because it keeps formatting marks down to a bare minimum, and most of the formatting decorations Markdown includes are things that people used to use anyway before rich text took over almost every editor in the world.

John Gruber's Markdown implementation is a command-line tool, written in Perl, that converts Markdown files to HTML. While you could install Perl on Windows, configure it, and use Mr. Gruber's tool, getting Perl on your PC is way beyond what a normal worker should be doing on their machine. For this reason, and probably many others, Markdown just didn't catch on with Windows users. Mac users, and now iOS users, on the other hand, have dozens of simple, sometimes beautiful apps for writing Markdown, previewing the output, and even converting the output into formats other than HTML (such as Word). Windows is under-served when it comes to Markdown apps, especially for users who wish to work with, and search through, multiple notes at a time.

I found about five Markdown editors that run on Windows 7. Some of them are beautiful but suited only toward single-document or even full-screen (distraction-free) writing. These I ruled out for business use, because I need to juggle many notes at a time. This left me with only a handful of decent choices, each of which I will go through below.

## ResophNotes {#resophnotes}

ResophNotes was my first Windows Markdown editor. It is basically a plaintext editor build to write and organize a heap of notes. It is fast and very good at what it does, but it does not have many sophisticated features and does not make writing Markdown any quicker or easier than, say, NotePad.

Pros:

- It is free.
- It is simple.
- It offers Markdown preview.
- It offers SimpleNote syncing.
- It can manage all your notes in one XML file or as many text files.
- It offers tags and pinning for notes, and these features sync with SimpleNote's apps and web site.

Cons:

- It does not offer inline Markdown preview.
- It has very limited features for editing Markdown (no autocompletion or useful keyboard shortcuts).
- Its search functionality works only across files, not so much within files.
- Limited Markdown save-as options (HTML).

## Markdown Pad {#markdown-pad}

One editor that is very good, attractive, and feature-rich is Markdown Pad. Its signature feature is a live preview, which renders your Markdown text into HTML. Markdown Pad also has helpful keyboard shortcuts for all the Markdown syntax you'll use, which makes writing Markdown very quick and pleasurable. Overall, this app looks great, is good for juggling multiple documents, has never crashed on me, and has features like auto-save (for registered users only) that help make sure you don't lose your work.

It doesn't allow you to save Markdown files as Word documents, however, but can save Markdown to HTML, which you can then open in Word. When I needed to send Markdown from Markdown Pad to Pandoc, I used an [AutoHotKey](http://www.autohotkey.com) script I wrote to do so, or I did it from the command line.

Pros:

- Keyboard shortcuts and syntax highlighting for Markdown.
- Live preview of Markdown's HTML output.
- Tabbed and multi-window interface for working with multiple files.
- Registered version is a reasonable price.

Cons:

- Limited Markdown save-as options (HTML only).
- Limited syntax highlighting options (you can't change heading colors, for instance, so dark-background themes don't look that good).
- Auto-save feature is only for registered users. It cost me $20 to register Markdown Pad, and I recommend that you do so and set it to auto-save every minute or every 5 minutes.

## Sublime Text {#sublime-text}

Sublime Text is a programmer's editor. It costs $70 to register (though its trial version has no time limit and no feature limits), has a steep learning curve, and is not even set up for Markdown out-of-the-box. It took me about a day to get my mind around how to use it, thanks to [some great instructional videos I found online](http://net.tutsplus.com/articles/news/perfect-workflow-in-sublime-text-free-course/). Whereas Markdown Pad is friendly and familiar, Sublime Text is cold, complex, and hard core. It is also, without a doubt, the most powerful Markdown editor on Windows, and maybe on any other platform.

It is attractive, extensible, and heavily keyboard centric, which is great for writers. It has great keyboard shortcuts for text navigation, text selection, find/replace, and so on. Once you know a couple key combinations, you can find anything, open any file, and call any command with just a few key presses.

Sublime Text's best feature is that it is extensible, meaning that people can write plugins (called packages) for it that extend its functionality. It is supported by a rich community of package writers, who have written packages for nearly any feature I could imagine.

If you are willing to learn how to use Sublime Text, the time you spend will reap you dividends: With the right plugins, Sublime Text is remarkable for writing in Markdown and outputting it to various file formats.

Pros:

- It is the most feature-rich text editor you'll find outside of vim and emacs.
- It can be entirely keyboard driven and keyboard shortcuts can be customized.
- Its MarkdownEditing plugin offers predictive text and syntax highlighting, which makes writing Markdown much quicker and more pleasurable.
- Other plugins are be installed to make working with multiple notes quick and easy.
- You can set up a "build system" to send your current file to any other program for text processing, such as Markdown conversion to other file formats.
- It is a programmer's editor, and offers syntax highlighting, integration with version control software, and better find and replace functionality than you even need.
- You can close the editor or kill it or have it crash (though it has never crashed on me) and you will not lose your work, even if you haven't saved it yet. This is amazing for piece of mind on a less-than-stable Windows system.

Cons:

- It takes a day or so to learn how to get more out of it than basic text editing; it helps to look online for guidance.
- It is complex to configure, especially at first, because there are no configuration dialogs, only configuration files.
- It does not offer split-screen live preview of Markdown's HTML output. You can install plugins that will show you a preview in a separate browser. (Live preview doesn't matter that much when you are editing.)
- It costs $70 to register, though its trial version is just nagware, has no feature restrictions, and never expires. Once registered, you can install it on any or all of your computers, on any operating system on which it runs (Windows, Mac OS X, and Linux).
