# Editing the book

A jupyter book is composed out of many markdown files which contain the educational content produced by you. Through the use of branches it is possible to work on the book at the same time as your team-members. Working on content for the book is mainly individual work, the beauty of git comes in when everybody's changes are merged into the main branch.

Suppose we are writing a new chapter, or are updating an existing chapter for our Jupyter Book. We've created a new branch on which we are going to make the changes, and we've checked out this branch (make sure this is really the case by checking the name of the current branch in the bottom-left corner of your VS Code window!).

## Pulling

If you're working on your local version of the repository, you've to make sure you're working on the most up-to-date version of your branch, pull changes from the remote repository on GitHub / GitLab into your local folder.

`````{tab-set}
````{tab-item} Pulling changes using Git in VS Code
...
````
````{tab-item}  Pulling changes using GitHub Desktop
...
````
`````

## Staging

`````{tab-set}
````{tab-item} Staging in GitLab
In GitLab staging doesn't exist, just edit a file and you can directly commit it.
...
````
````{tab-item} Staging in GitHub
In GitHub staging doesn't exist, just edit a file and you can directly commit it.
...
````
````{tab-item} Staging using Git in VS Code

For demonstration purposes, we have created a new Markdown file called `new-chapter.md`, which we want to add to the book. Since this is a new file, Git has no knowledge about its existence yet. I.e., the file is *untracked*. To add new files to our repository, we need to *stage* and *commit* them. To do this, open the Source Control menu in the left side bar. Our new file should appear in this menu:

```{figure} ../images/git-new-file.png

The new file appears in the Source Control menu.
```

Notice that there is a green letter U placed besides the file, meaning that our file is untracked. To add a file to the *staging area*, click on the + that appears when you hover over the file. 
````
````{tab-item} Staging using GitHub Desktop
...
````
`````

## Committing
Now that we've made some change, we need to add them to our git-timeline.

`````{tab-set}
````{tab-item} Committing in GitLab
...
````
````{tab-item} Committing in GitHub
...
````
````{tab-item} Committing using Git in VS Code
Next, in the field that says "Message", write a short description of the changes you have made. This message is what is called the *Commit Message*. After we've done this, the menu should now look something like this:

```{figure} ../images/git-file-added.png

The new file has been staged, and we've written a Commit Message.
```

Now, we are ready to add the changes to the repository. This is done by *committing* the staged changes. To do this, simply press the big, blue "Commit" button in the Source Control menu. 
````
````{tab-item} Committing using GitHub Desktop
...
````
`````

```{tip}
Unlike this example, you do not have to stage and commit every file individually. In a real case, a chapter may consist of multiple files (and images!), and it makes sense to add them in the same commit. 
```

## Pushing the changes
Are we done now? Yes, if you've made all your changes on GitLab / GitHub. However, no! if you did that locally! Up to now, we have only made changes and committed to the *local* copy of the repository. We still need to *push* our changes to the *remote* repository (the one that is on the TU Delft GitLab), so that others can see our changes and interact with them.

`````{tab-set}
````{tab-item} Committing using Git in VS Code
In the bottom left corner, next to the branch name, click the "Synchronize Changes" button (the one that looks like this: 🔄, highlighted in the image below) to push the changes to GitLab.

```{figure} ../images/git-push.png

After committing, click the 🔄 button to push our changes to the remote repository.
```
````
````{tab-item} Committing using GitHub Desktop
...
````
`````