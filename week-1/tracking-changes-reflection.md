## How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes a developers life easier by having multiple versions of a file so you can revert back to an earlier version if you accidentally introduce a bug.

## What is a commit?

A commit is the "save point" in which you return to when reverting.

## What are the best practices for commit messages?

Commit messages should be succinct (less than 50 characters), explain what the change is, and use the active voice.

## What does the HEAD^ argument mean?
The HEAD^ arguement tells you which commit is th emost recent. 

## What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages are the working directory, staging area, and git repository. To work on something in the working directory, it needs to be checked out using "checkout -b", then in order to add it to the staging area, you use "git add", and then to move it into the git repository, you use git commit.

## Write a handy cheatsheet of the commands you need to commit your changes?
1. git checkout -b "feature-name"   -- checks out a feature branch to make changes
2. git add .   --  adds all files and folders with changes
3. git commit -m "Message"    --  adds a commit message

## What is a pull request and how do you create and merge one?
A pull request is a way of notifying others that you have completed a segment of work and would like it be compared to the master branch and merged (or not). To initiate a pull request, the developer needs to push their changes to the remote repository. Then, it appears in GitHub as a pull request that much be reviewed for changes and merged.  

## Why are pull requests preferred when working with teams?
Pull requests are preferred when working with teams so changes can be tracked and monitored for quality and conflicting edits.

