---
title: "Why Markdown for Drafts?"
description: "It is more effective to write your drafts in a great text editor, using a lightweight markup language, than to use a bloated WSYSIWYG tool like  Word."
callout: "Use Markdown syntax to provide structure and emphasis to your plaintext writing."
metaKeywords: "notes, drafts, Markdown"
icon: notes
weight: 202
---

## Drafts {#drafts}

First off, what is a draft? It's a beginning or intermediate version of your work. Notes can be just a jumble of words, and formatting does not often matter too much. Drafts, on the other hand, should start to resemble your final product, at least in terms of structure. They should include basic structures such as paragraphs, headings, and lists.

If you are a writer, you know what drafts are, and know that you'll likely have multiple drafts of a document before you send it off for review or publish it. For your own deliverables, you typically write the first draft yourself and spend a lot of time with it before sharing it with others for input. At that time, the process of *writing* is most crucial, and you should want your tools to be just right.

## Writing efficiently {#writing-efficiently}

I am a writer, even though that is not my job title, I write dozens of pages per week at work. I am also a coder, and am fluent in tons of different markup and programing languages. Like most knowledge workers, most of what I produce has to end up in one of three Microsoft document formats: Word, Excel, or PowerPoint. These applications, while they have a ton of features, often get in the way of my writing work. Microsoft Word is the worst offender, in my opinion. My biggest problems with it are as follows:

1. It has too many features, and some of those features get in the way of productive writing. It's implementation of Styles is frustrating; when you paste text from another app into Word, Word tries to preserve its original formatting, which I almost never want to do. Even when I don't do that.
2. Working with lists and multi-level outlines is painful, both due to poor list-numbering logic and poor Styles support. I often can't get a list to look the way I want it to, and it is even worse if you paste something in from outside of Word into a list.
3. It crashes more than it should (which is *never, ever, ever*). You don't lose your work most of the time, but the "auto recover" feature makes you feel like you did and makes it confusing as to which version of your file you should keep.

If you absolutely must write in Microsoft Word, figure out how to use its Draft mode and how to use Word's Styles. If you can do most of your work in something else, then use Word in the last step for page layout and styling, do it. I've been doing that for a while now, it works for me, and wanted to share my experiences.

## Markdown {#markdown}

Everything I write at work, outside of email, is a structured document. That is, it has a title, subtitle, multiple levels of section headings, and, occasionally, bulleted or numbered lists. This is the sort of document the original HTML spec was designed for presenting, and, more recently, the lightweight markup language Markdown was designed for writing.

[Markdown](http://daringfireball.net/projects/markdown/) lets you write in plaintext, use a few decorations to denote headings (`#`, `##`, and `###` denote headings 1, 2, and 3, respectively), emphasis (`*`italics`*`), strong emphasis (`**`bold`**`), lists (`1.`, `2.`, `3.`) and block quotes (set off with `>` like quoted plaintext emails), and, with some simple software, convert that plaintext to HTML.

Markdown is not suited toward selecting multiple fonts and making your page look like a ransom note. It is not suited toward page layout, such as making a poster for your rock band. It is meant to provide meaningful structure to plaintext documents, and it excels at it. Moreover, it is meant to facilitate *writing* and let you focus on that, without worrying so much about *formatting*.

As a side benefit, working in plaintext allows you to do your writing with simpler text editors that get out of your way and have none of the overhead or baggage of Microsoft Word.
