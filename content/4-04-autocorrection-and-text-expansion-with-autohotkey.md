---
title: "Autocorrection and Text Expansion with AutoHotKey"
description: "Use AutoHotKey to improve your typing speed and accuracy."
callout: "Use AutoHotKey to improve your typing speed and accuracy."
metaKeywords: "autocorrection, text expansion, autohotkey, text expander, typing speed"
icon: other
weight: 404
---

## Improve typing speed and accuracy {#improve-typing-speed-and-accuracy}

Even if you are a good touch-typist, you will make typos, misspell words and generally have to re-type the same words and phrases often throughout your work day. On your smartphone, the keyboard application tries to predict what you are typing and auto-corrects what you enter to improve your typing accuracy. Wouldn't it be nice to have Windows software that helps you type more quickly and accurately *in any application*, including your go-to plaintext editor. Luckily, there are some utilities out there to handle auto-correction and text expansion. The free utility AutoHotKey can be set up for both functions, and a whole lot more.

### AutoHotKey {#autohotkey}

[AutoHotKey](http://www.autohotkey.com) allows you to create simple utility programs for Windows using its own scripting language. The scripts are stored as plaintext files (with .ahk extensions). This means that it is a little more difficult to set up than a packaged utility program, but it is a lot more powerful: it can automate a host of different things, and takes up hardly any system resources on your machine.

AutoHotKey is supported by a large community (meaning you can find numerous free AutoHotKey scripts online to do various things). You can can download and modify a couple template files to create scripts for auto-correction and text expansion.

## Organizing your scripts and starting them on login {#organizing-your-scripts-and-starting-them-on-login}

You can save AutoHotKey scripts anywhere on your system. I recommend creating an "AutoHotKey Scripts" folder in your home directory, and storing all your scripts there.

### Auto-correction: Correct common misspellings and typos, in any app, as you type. {#auto-correction-correct-common-misspellings-and-typos-in-any-app-as-you-type-}

AutoHotKey handles auto-correction invisibly: it will just replace mistyped words with correctly typed ones, wherever you type them. To set this up, follow the steps below:

1. Download the [AutoCorrect.ahk](http://www.autohotkey.com/download/AutoCorrect.ahk) script from AutoHotKey's web site.
2. Move AutoCorrect.ahk to your "AutoHotKey Scripts" folder, or wherever you would like to keep your AutoHotKey scripts.
3. Double-click the script to run it. Make sure that .ahk scripts are associated (that is, will open with) AutoHotKey.
4. To start this script on login, drag it to the Start Menu \> All Programs \> Startup.

### Text expansion: Make repetitive text entry faster and easier. {#text-expansion-make-repetitive-text-entry-faster-and-easier-}

Tip: for your own personal text expander shortcuts, start them with a character you don't often use, such as ";" or "\`".

1. Download the [TextExpander.ahk](./assets/TextExpander.ahk) script. Customize it to contain the text expansion shortcuts you need.
2. Move TextExpander.ahk to your "AutoHotKey Scripts" folder, or wherever you would like to keep your AutoHotKey scripts.
3. Double-click the script to run it. Make sure that .ahk scripts are associated (that is, will open with) AutoHotKey.
4. To start this script on login, drag it to the Start Menu \> All Programs \> Startup.
5. Edit the script to add new text expansion shortcuts.

Other options on Windows:

- [PhraseExpress](http://www.phraseexpress.com)
- [Breevy](http://www.16software.com/breevy/)

### Paste as plaintext: Paste richtext into other applications without formatting. {#paste-as-plaintext-paste-richtext-into-other-applications-without-formatting-}

I still see people paste text into Notepad to remove formatting, and then copy-and-paste it elsewhere. Save yourself a step and use an AutoHotKey script instead. `Windows-v` will paste any text on the clipboard as plaintext.

1. Download the [paste-as-plaintext.ahk](./assets/paste-as-plaintext.ahk) script.
2. Move paste-as-plaintext.ahk to your "AutoHotKey Scripts" folder, or wherever you would like to keep your AutoHotKey scripts.
3. Double-click the script to run it. Make sure that .ahk scripts are associated (that is, will open with) AutoHotKey.
4. To start this script on login, drag it to the Start Menu \> All Programs \> Startup.
