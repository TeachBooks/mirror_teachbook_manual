# Edit

Suppose we are writing a new chapter, or are updating an existing chapter for our Jupyter Book. We've created a new branch on which we are going to make the changes.

## Make changes to your file
```````{tab-set}
``````{tab-item} User type 3

Make changes to file in text editor...
or add new file by text or upload

```{error} To be written
```

``````
``````{tab-item} User type 4, 5 and 6

### Eventually solve issues with combining versions
First make sure you update your branch so that you've the most up-to-date version. If you collaborate on this branch, you get the updates from your colleagues as well. This might lead into a merge conflict. How to solve that?

`````{tab-set}
````{tab-item} With Git in VS Code

```{error} To be written
```

````
````{tab-item} With GitHub Desktop

```{error} To be written
```

````
`````

### Make actual changes

```{error} To be written
```
Make some changes in for example VS Code and save them.

### Select files ready to be added to Git-Timeline

`````{tab-set}
````{tab-item} With Git in VS Code

For demonstration purposes, we have created a new Markdown file called `new-chapter.md`, which we want to add to the book. Since this is a new file, Git has no knowledge about its existence yet. I.e., the file is *untracked*. To add new files to our repository, we need to *stage* and *commit* them. To do this, open the Source Control menu in the left side bar. Our new file should appear in this menu:

```{figure} ../images/git-new-file.png

The new file appears in the Source Control menu.
```

Notice that there is a green letter U placed besides the file, meaning that our file is untracked. To add a file to the *staging area*, click on the + that appears when you hover over the file. 
````
````{tab-item} With GitHub Desktop
The staging GitHub Desktop assumes you want to stage all files. You can unselect some of them (unstaging them)...
```{error} To be written
```

````
`````

``````
```````

## Review changes in book locally
```````{tab-set}
``````{tab-item} User type 3 and 4
Not possible, unless you want to be a user type 5. Otherwise you'll see your changes later on online.
``````
``````{tab-item} User type 5
build book locally ...
```{error} To be written
```
``````
``````{tab-item} User type 6
build book locally and startup python server...
```{error} To be written
```
``````
```````

## Share changes with others in Git-timeline
```````{tab-set}
``````{tab-item} User type 3

`````{tab-set}
````{tab-item} In GitLab
click commit in single text editor ...
```{error} To be written
```
````
````{tab-item} In GitHub
click commit in single text editor ...
```{error} To be written
```
````

``````
``````{tab-item} User type 4, 5 and 6

`````{tab-set}
````{tab-item} Using Git in VS Code
Next, in the field that says "Message", write a short description of the changes you have made. This message is what is called the *Commit Message*. After we've done this, the menu should now look something like this:

```{figure} ../images/git-file-added.png

The new file has been staged, and we've written a Commit Message.
```

Now, we are ready to add the changes to the repository. This is done by *committing* the staged changes. To do this, simply press the big, blue "Commit" button in the Source Control menu. 

In the bottom left corner, next to the branch name, click the "Synchronize Changes" button (the one that looks like this: 🔄, highlighted in the image below) to push the changes to GitLab.

```{figure} ../images/git-push.png

After committing, click the 🔄 button to push our changes to the remote repository.

````
````{tab-item} Using GitHub Desktop
```{error} To be written
```

````
`````
Are we done now? Yes, if you've made all your changes on GitLab / GitHub. However, no! if you did that locally! Up to now, we have only made changes and committed to the *local* copy of the repository. We still need to *push* our changes to the *remote* repository (the one that is on the TU Delft GitLab), so that others can see our changes and interact with them.

`````{tab-set}
````{tab-item} Using Git in VS Code

In the bottom left corner, next to the branch name, click the "Synchronize Changes" button (the one that looks like this: 🔄, highlighted in the image below) to push the changes to GitLab.

```{figure} ../images/git-push.png

After committing, click the 🔄 button to push our changes to the remote repository.

````
````{tab-item} Using GitHub Desktop
...

````
`````

``````
```````