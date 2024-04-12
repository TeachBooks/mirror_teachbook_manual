# Edit (merge conflicts, staging, committing, pushing)

Suppose we are writing a new chapter, or are updating an existing chapter for our Jupyter Book. We've created a new branch on which we are going to make the changes.

`````````{tab-set}
````````{tab-item} User type 3

**Add or make changes to a file**

Make changes to file in text editor...
or add new file by text or upload

```{error} To be written
```

````````
````````{tab-item} User type 4 and 5

```````{tab-set}
``````{tab-item} Brand new version (branch)

If your branch was build from main, you've the most up-to-date version. So you can just continue with the next step. Next time you come here things might be different!
``````
``````{tab-item} Existing version (branch)

**Eventually solve conflicts with combining versions (merge conflicts, emerges after pulling)**

If you collaborate with colleagues on this branch, you can get the updates from your colleagues as well by pulling from GitLab/GitHub. Now your branch is up-to-date. However, this might lead into a merge conflict if you and colleagues have made incompatible changes. How to solve that?

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

``````
```````

**Add or make changes to file(s)**

```{error} To be written
```
Make some changes in for example VS Code and save them.


````````
`````````

**Check changes in book locally**
```````{tab-set}
``````{tab-item} User type 3 and 4
Not possible, unless you want to be a user type 5. Otherwise you'll see your changes later on online.
``````
``````{tab-item} User type 5
build book locally and eventually startup python server...
```{error} To be written
```
``````
```````

```````{tab-set}
``````{tab-item} User type 3

`````{tab-set}
````{tab-item} In GitLab

**Add changes to Git-timeline (committing)**

click commit in single text editor ...
```{error} To be written
```
````
````{tab-item} In GitHub

**Add changes to Git-timeline (committing)**

click commit in single text editor ...
```{error} To be written
```
````

``````
``````{tab-item} User type 4 and 5


`````{tab-set}
````{tab-item} Using Git in VS Code

**Select files ready to be added to Git-timeline (staging)**

For demonstration purposes, we have created a new Markdown file called `new-chapter.md`, which we want to add to the book. Since this is a new file, Git has no knowledge about its existence yet. I.e., the file is *untracked*. To add new files to our repository, we need to *stage* and *commit* them. To do this, open the Source Control menu in the left side bar. Our new file should appear in this menu:

```{figure} ../images/git-new-file.png

The new file appears in the Source Control menu.
```

Notice that there is a green letter U placed besides the file, meaning that our file is untracked. To add a file to the *staging area*, click on the + that appears when you hover over the file. 

**Add changes to Git-timeline locally (committing)**

Next, in the field that says "Message", write a short description of the changes you have made. This message is what is called the *Commit Message*. After we've done this, the menu should now look something like this:

```{figure} ../images/git-file-added.png

The new file has been staged, and we've written a Commit Message.
```

**Add changes to GitHub/GitLab (pushing)**

Now, we are ready to add the changes to the repository. This is done by *committing* the staged changes. To do this, simply press the big, blue "Commit" button in the Source Control menu. 

In the bottom left corner, next to the branch name, click the "Synchronize Changes" button (the one that looks like this: 🔄, highlighted in the image below) to push the changes to GitLab.

```{figure} ../images/git-push.png

After committing, click the 🔄 button to push our changes to the remote repository.

````
````{tab-item} Using GitHub Desktop

**Select files ready to be added to Git-timeline (staging)**

The staging GitHub Desktop assumes you want to stage all files. You can unselect some of them (unstaging them)...
```{error} To be written
```

**Add changes to Git-timeline locally (committing)**

```{error} To be written
```

**Add changes to GitHub/GitLab (pushing)**

```{error} To be written
```

````
`````
``````
```````