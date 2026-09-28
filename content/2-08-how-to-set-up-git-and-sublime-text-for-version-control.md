---
title: "How to Set Up Git and Sublime Text for Version Control"
description: "How set up version control for plaintext files with Git and Sublime Text."
callout: "Set up Git for version control of plaintext notes and drafts."
metaKeywords: "notes, drafts, Git, version control, revision history, Sublime Text, packages, how to"
icon: notes
weight: 208
---

## Git {#git}

To me, [Git](http://git-scm.com) is the ultimate version control tool for plaintext files. If you are a programmer, you should already be aware that Git is a free and open source distributed version control system. It was initially designed and developed by Linux Torvalds to use for the Linux kernel source code, so you know it has an amazing pedigree. Git is small, fast, reliable, and has dozens of software tools and web sites supporting it. It is also pretty simple to use, if, as in our case, we are just using a handful of its features.

**Warning: Using Git for version control of plaintext files may be a little over-ambitious and unnecessary if you are already using Dropbox and/or Local History. I prefer Git because I use it for source code as well and appreciate its power, and its ability to push changes to a repository on a remote server for backup. Stop here and just use [Local History and/or Dropbox](./2-07-version-control-revision-history-for-plaintext.html) if you do not need or want to use Git for your plaintext files.**

If you want to jump into using Git for version control, here is how to do it.

## Step 1: Install Git tools on Windows {#step-1-install-git-tools-on-windows}

### Step 1.1: Install Git for Windows {#step-1-1-install-git-for-windows}

First, download and install [Git for Windows](http://msysgit.github.io/). This will install a suite of Git tools, primarily command-line tools, on your system. You will be using these tools in the later steps.

![Git logo](./assets/git-logo.png)

### Step 1.2: Install SourceTree {#step-1-2-install-sourcetree}

Second, download and install [SourceTree](http://www.sourcetreeapp.com/). SourceTree is a free GUI front-end to Git. It will show you your repository (which, for us, will be a directory full of text files), a graph of the revision history (or "commit" history) of that repository (which, for us, will be a straight line with a node for each revision), the files changed in each commit, and the diffs between the various revisions ("commits") of each file. This tool is useful for grabbing text from prior versions of your files.

![SourceTree](./assets/sourcetree-logo.png)

### Step 1.3: Install the Git package in Sublime Text {#step-1-3-install-the-git-package-in-sublime-text}

Third, use Sublime Text's [Package Manager](./2-04-how-to-set-up-sublime-text-for-markdown-editing.html#first-install-package-control-the-sublime-text-package-manager) to install the "Git" package.

![Sublime Text Git package](./assets/st-package-install-git.png)

This package will add all manner of Git commands to Sublime Text's Command Palette (`control+shift+p`). The most important commands are "Git: Add", which stages the current file for committing, and "Git: Commit", which commits the staged files to the Git repository. Because all changes to a Git repository must be added to a "staging area" before they are committed, you *must* run "Git: Add" prior to running "Git: Commit" for the commit to work. The reason for staging the files isn't important if you are not a programmer, but you should know why committing to a Git repository isn't a one-step process.

## Step 2: Create your Git repository {#step-2-create-your-git-repository}

You can create your Git repository using either the [command line](#gitcommandline) or [GUI](#gitsourcetree).

{{< anchor "gitcommandline" >}}

### Option 1: command line {#option-1-command-line}

An easy way to create a Git repository is to use the command line. This is the only time I use the command line for Git.

1. Launch the command line by typing `cmd.exe` in the Start Menu's search box, or via the key command `windows+r`, and hitting `enter`.
2. In the command line console, change to the folder you want the repository in. For me, this is my "[@Drafts](./3-01-drafts-folder-for-plaintext-drafts-and-notes.html)" folder

    ```
     cd c:\Users\MyUserName\Documents\Docs\2013\@Drafts
    ```
3. To create the repository, type the following command and hit enter.

    ```
     git init
    ```

     At this point, you will have a blank Git repository stored in a ".git" subdirectory.
4. If you have existing files in your repository folder, commit them all with the following two commands:

    ```
     git add .
     git commit -m "initial commit"
    ```

{{< anchor "gitsourcetree" >}}

### Option 2: using SourceTree {#option-2-using-sourcetree}

SourceTree can create a new Git repository for you within the safe confines of its graphical user interface. This is a good option for users averse to the command line.

1. In SourceTree, click on the Clone/New... toolbar button, or click File \> Clone/New... in the menu.

    ![Clone/New... toolbar button](./assets/sourcetree-clone-new-button.png)
2. The "Clone / Add / Create Repository" dialog will appear. Click on the "Create New Repository" tab.

    ![Create New Repository dialog](./assets/sourcetree-dialog-create-new-repository.png)
3. The "Respostory Type" should be set to "Git". Enter the "Destination Path" to your Sublime Text project folder. The bookmark name will be pre-filled with the name of the folder you select. Change it if you wish. (The bookmark is just a shortcut to the repository within SourceTree.) Click the "Create" button to create the repository.
4. At this point, SourceTree has created an empty Git repository in our folder. We still need to add our files to it. To do so, click the big "Commit" button in SourceTree's toolbar.

    ![Commit dialog](./assets/sourcetree-dialog-commit.png)
5. The "Commit" dialog will appear. The files in your repository folder will be listed at the bottom of the dialog. Type in a "Commit message" in the big text area up top. Then, click the double-arrow "Stage All" button in the "Working File Changes" heading (toward the bottom left of the dialog) to stage all your files for your initial commit. Then, click the "Commit" button on the lower right of the dialog. SourceTree will then commit all your files into the repository.

## Step 3: Using Git in Sublime Text {#step-3-using-git-in-sublime-text}

Once you've installed the "Git" package on Sublime Text (see my article on that), Sublime Text will be aware that files are in Git repositories.

### Committing files to Git {#committing-files-to-git}

To commit a file to Git in Sublime Text is a three-step process.

1. Use the Command Palette to issue the "Git: Add" command, which stages the current file for committing.
2. Use the Command Palette to issue the "Git: Commit" command, which will commit the staged file(s) to the repository, once you enter a commit message.
3. A new tab will open in the editor. You should type in a commit message (just a short note about the version being committed) and then close the tab (`control+w`). The file will be committed to the Git repository and tagged with the message you typed in.

### Viewing diffs {#viewing-diffs}

Diffs show the differences between two versions of the same file, or, in Git-speak, the current file and a prior commit. Lines added since the last commit are prefaced with a "+", while lines removed are prefaced with a "-". For writing, this will show you the old version and the new version, stacked on top of each other.

#### Option 1: Sublime Text Git plugin {#option-1-sublime-text-git-plugin}

Sublime Text's Git package offers several useful diff options, all available from the Command Palette (control+shift+p).

- "Git: Diff Current File", which presents a diff of the current file and the last commit
- "Git: Diff All", which presents a diff of all files in your repository the last commit.
- "Git: Diff Staged", which presents a diff of all files you have staged (with the "Git: Add" command, for instance) for your next commit.

The diff will open up in a new file tab within Sublime Text. What's nice is that there is syntax highlighting which helps you identify the additions and deletions. When you are done reviewing the diff, just close the tab and it is gone.

![An example of a Git Diff in Sublime Text](./assets/st-git-diff.png)

#### Option 2: SourceTree {#option-2-sourcetree}

You can also view diffs when browsing your repository in SourceTree. First, select a file in the lower left pane of the window. Then, the diffs will show up in the lower right-hand page of the window. Additions and deletions are highlighted in green and red to help you differentiate them.

## Step 4: Automating Git commits {#step-4-automating-git-commits}

Programmers want to control when they commit changes to their git repository for many reasons, primary because it is poor practice to commit source code that does not compile. Plaintext notes, however, don't have to compile, so there's no harm committing intermediate states of work.

Because committing changes to a Git repository is a 3-step process, to make things easier, I wrote a script to automatically commit all my notes on an hourly basis to my notes repository. It is kicked off by [Windows Scheduled Tasks](http://windows.microsoft.com/en-us/windows7/schedule-a-task/) and runs under my user account.

[This is the script](./assets/git-commit-drafts.vbs.txt):

```
Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.CurrentDirectory = "C:\Users\MyUserName\Documents\Docs\@Archive\2013\@Drafts"
Return = WinScriptHost.Run("git add .", 0, true)
Return = WinScriptHost.Run("git commit -a -m ""Automated commit by git-commit-drafts.vbs on " & _
    FormatDateTime(Now(), 2) & " at " & FormatDateTime(Now(), 3) & ".", 0, true)
Set WinScriptHost = Nothing
```

My script is a VBScript, rather than a simple batch file, for one reason: When you call a batch file with Windows Scheduled Tasks, a black command prompt window appears, if only for a split second, which is inelegant and annoying. That doesn't happen when you call a VBScript.

To set up Windows to run this script hourly, do the following:

1. Create the script file. You can [download my copy](./assets/git-commit-drafts.vbs.txt). Make sure the file extension is .vbs; rename the file if you have to. Save the file to the root of your home directory or to your Documents folder. (Its location doesn't matter, but you need to know where it is.)
2. Hit the `windows` key to bring up the Start menu. Begin typing "schedule task" and select the command "Task Scheduler" or "Schedule tasks".

    ![Starting the Task Scheduler](./assets/windows-task-scheduler-start-menu-command.png)
3. The Task Scheduler will appear. Click the "Create Task" in the right sidebar.

    ![Task Schedule Main Window](./assets/windows-task-scheduler-initial-window.png)
4. The "Create Task" window will appear. Now we will fill out the various parts of a multi-tab form.

    ![Task Scheduler - General Tab - Blank](./assets/windows-task-scheduler-create-task-general-blank.png)
5. Fill out the "General" tab by adding a name and description to the task.

    ![Task Scheduler - General Tab - Filled In](./assets/windows-task-scheduler-create-task-general-filled-in.png)
6. Click on the "Triggers" tab. This is where we will establish the hourly schedule to execute our script.

    ![Task Scheduler - Triggers Tab - Blank](./assets/windows-task-scheduler-create-task-triggers-blank.png)
7. Click the "New..." button on the "Triggers" tab. This will bring up the "Edit Trigger" menu. Fill out the "Edit Trigger" tab as follows: Begin the task "On a schedule"; Daily; Set the start time to an on-the-hour time; Recur every 1 days; and, under Advanced settings, "Repeat task every" 1 hour for a duration of 1 day. Make sure the "Enabled" checkbox at the bottom of the form is checked.

    ![Task Scheduler - Edit Trigger](./assets/windows-task-scheduler-create-task-trigger-daily-hourly.png)
8. Click on the "Actions" tab. This is where we will set the command to run on the schedule we set in the prior step.

    ![Task Scheduler - Actions Tab - Blank](./assets/windows-task-scheduler-create-task-actions-blank.png)
9. Click the "New..." button on the "Actions" tab. This will bring up the "New Action" window. Fill in the "Program/script" with the full file path to the VBSCript file you saved in step 1. Then click the "OK" button.

    ![Task Scheduler - Actions Tab - New Action](./assets/windows-task-scheduler-create-task-new-action-git-commit-drafts.png)
10. You will be returned to the "Actions" tab, and you will see your new action in the list.

    ![Task Scheduler - Actions Tab - Filled In](./assets/windows-task-scheduler-create-task-actions-filled-in.png)
11. Click on the "Conditions" tab. Under "Power" settings, uncheck "Start the task only if the computer is on AC power". We want this task to run even if we are on battery power. Click the "OK" button.

    ![Task Scheduler - Conditions Tab - Filled In](./assets/windows-task-scheduler-create-task-conditions.png)
12. Finally, click the "OK" button at the bottom of the "Create" task window. The task will be created, will execute on the schedule you set, and will be present in the task list within the "Task Scheduler" window. You can close the Task Scheduler now.

    ![Task Scheduler - New Task Listed](./assets/windows-task-scheduler-listing-of-tasks.png)

## Step 5: Automating Git pushes to a remote repository {#step-5-automating-git-pushes-to-a-remote-repository}

Because Git is a *distributed* version control system, you can set up a *remote* repository to push your repository changes to remotely-hosted Git repository on your intranet or the Internet. You can use this feature as a really fancy backup system for your notes and drafts repository.

Detailed step-by-step instructions to set all this up are beyond the scope of this article, because they may differ depending on where your remote repository is hosted. If, in addition to writing at work, you also do programming, you also may want to do set up a remote repository because it works with your programming workflow. If you aren't a programmer or don't have anywhere to push your repository to, you can just back up your Git repository like any other file folder.

In general, for a Git push, you have to set up a repository on an online service, such as [BitBucket](https://www.bitbucket.org) (which is is great for free, private, single-user repositories). If you use BitBucket for this, [follow their instructions](https://bitbucket.org/product/guides/basics/four-starting-steps) to configure everything. You have to [configure the remote repository address](http://git-scm.com/book/ch2-5.html) in your repository (`git remote add [shortname] [url]`, or edit the "Repository Settings" in SourceTree). You will also have to set up SSH keys to transfer the files securely without entering a password each time.

This is a script that will push your Git repository to a remote server ([git-push-origin-master.vbs](./assets/git-push-origin-master.vbs.txt)):

```
Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.CurrentDirectory = "C:\Users\MyUserName\Documents\Docs\@Archive\2013\@Drafts"
Return = WinScriptHost.Run("git push -u origin master", 0, true)
Set WinScriptHost = Nothing
```

You can schedule this script to run regularly in Windows Scheduled Tasks. See the instructions above for scheduling commits, and set the "Action" to the "push" script, and set the schedule to "daily".
