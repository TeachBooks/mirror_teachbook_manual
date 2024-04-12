# Create your own version (branching, cloning, pulling)

Branches are a very useful feature of Git. Branches allow you to work on multiple versions of your codebase simultaneously; you create a copy of your codebase, on which you can work independently of the main codebase. The main branch is the default branch. The content on this branch will be the most up to date version of the book. Therefore, new branches, which are made to add or fix some content in the book, are usually cloned from the main branch. This has many advantages compared to making the edits immediately in the main branch.  Some advantages of working with branches are:

- Isolation: when you work on your own branch, your changes are isolated from the main codebase. Unfinished or unreviewed parts of your book are "hidden". Your own branch helps to keep an overview of the changes made to the book. 
- Collaboration: branches make it easier for multiple project members to work on the same codebase simultaneously. If every member works on their own branch, they can make their changes without having to worry about interfering with another members' changes. In case those changes made in parallel lead to conflicts, they can be resolved during the merging of the branches. 

This systematic workflow guarantees that editing the book goes smoothly. 

The act of making a new branch from an existing one is called *branching*. Usually, you want to branch from the `main` branch, but you can of course also choose to branch from another branch. The branch from which you create a new branch is called the *source* branch.

**Create your own version by ...**

`````````{tab-set}
````````{tab-item} ... user type 3

**... by directly creating your own version (branching) or selecting existing version in ...**

`````{tab-set}
````{tab-item} ... GitLab
1. On GitLab, navigate to the repository of your project. Under the project description, you should see a menu button with a "+" in it (see {numref}`new-branch-button`). Click this button, then click on "New branch".

```{figure} ../images/gitlab-branch.png
:name: new-branch-button

Click the highlighted button to make a new branch.
```

2. A new page opens ({numref}`new-branch-menu`), on which you can specify the name of your branch and the source branch. Try to think of a good name for your branch. For example, `chapter-2` is a suitable name if we're going to be working on Chapter 2 of our book. After you've made sure that the selected source branch is correct, click "Create branch".

```{figure} ../images/gitlab-branch-name.png
:name: new-branch-menu

We're making a new branch called `chapter-2` from the `main` branch.
```

3. You should be sent back to an overview page of your repository. In the branch selection menu (see {numref}`new-branch-repo`), it should now say `chapter-2` instead of `main`. Here you can also select another existing branch.

```{figure} ../images/gitlab-new-branch-repo.png
:name: new-branch-repo

The circled menu is the branch selection menu. 
```

````
````{tab-item} ... GitHub

```{error} To be written
```
````
`````
````````

````````{tab-item} ... user type 4 and 5


**... for ...**

```````{tab-set}
``````{tab-item} ... repository opened for first time

**... by opening the repository locally (cloning) and creating your own version (branching) or select existing version (checkout branch) from ...**

`````{tab-set}
````{tab-item} ... GitLab

1. On GitLab, go to the repository of your book. Click on the blue button that says "Clone" ({numref}`gitlab-clone`), and copy the link under "Clone with SSH".

```{figure} ../images/gitlab-clone.png
:name: gitlab-clone

The cloning menu.
```
````

````{tab-item} ... GitHub

```{error} To be written
```

````

````{tab-item} ... GitHub using GitHub Desktop

```{error} To be written
```

````
`````

**... with ...**

`````{tab-set}
````{tab-item} ... Git in VS Code
2. Open a new VS Code window. You should be greeted with a welcome page ({numref}`vscode-welcome`). On this page, click "Clone Git Repository". Alternatively, open the Source Control menu from the left side bar, and click on "Clone Repository".

```{figure} ../images/vscode-welcome.png
:name: vscode-welcome

The VS Code welcome screen.
```

3. On the top of your screen, you should get a prompt asking you for a URL. In this field, paste the link you copied from GitLab and press enter. It will ask you to choose the location of the repository. After you've chosen a location, a final prompt will show up asking if you want to open the repository. Click on "Open".

4. You now have a local copy of the repository.

5. The final step is to *check out* our new branch in VS Code. *Checking out* means that we're changing our working branch (i.e., the one to which we will be committing our changes) from one to the other. In VS Code, open the branch menu from the bottom left (see {numref}`git-branch-menu-main`). You'll be be greeted with a menu that looks like the one in {numref}`git-branch-selection-menu`. In this menu, we get an overview of the branches of our repository. Notice that our new branch `chapter-2` appears as `origin/chapter-2`, and has a cloud icon in front of it. This means that the branch only exists on the remote repository. Check out the branch by simply clicking on it. Check that the branch is indeed checked out by looking at the branch menu button in the bottom left again; it should now say the name of your branch instead of `main` (in our case `chapter-2`). 
```{figure} ../images/git-branch-menu-main.png
:name: git-branch-menu-main

Location of the branch menu.
```

```{figure} ../images/git-branch-selection-menu.png
:name: git-branch-selection-menu

The branch selection menu, where our new branch has shown up. From this menu you can also select (checkout in git terms) another existing branch.

````

````{tab-item} ... GitHub Desktop
```{error} To be written
```

````
`````

``````

``````{tab-item} ... previously opened repository 

**by updating your repository (pulling) and creating your own version (branching) or select existing version (checkout branch) with ...**

`````{tab-set}
````{tab-item} ... Git in VS Code

```{error} To be written
```

````
````{tab-item} ... GitHub Desktop

```{error} To be written
```

````
`````
``````

```````



````````
`````````

Now that we've created and checked out our new branch, we can start {ref}`making and committing changes <stage-commit-push>`.
