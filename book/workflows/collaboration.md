# Collaborative book-editing

```{admonition} User types
:class: tip
This page is useful for user type 3, 4 and 5.
```

A jupyter book is composed out of many files which contain the educational content produced by you. Through the use of branches it is possible to work on the book at the same time as your team-members. Working on content for the book is mainly individual work, the beauty of Git comes in when everybody's changes are merged into the main branch.

We have previously introduced the notions of using Git in the online environment (remote) or locally. All the (text, figures, etc.) files that make up the book are contained on the remote repository on GitLab or GitHub. This could be on an open repository on `gitlab.com` or `github.com`. In the context of creating educational books for students at TU Delft, the repository will most likely be located on `gitlab.tudelft.nl` or `github.com/teachbooks`.

The steps involved are as follows:

 1. **Assign a task to yourself (milestones, issues)**
 2. **Create your own version of the book as...**
```````{tab-set}
``````{tab-item} ... user type 3...

**... by creating your own version of the book (branching) or selecting existing version:**

 - branching
``````
``````{tab-item} ... user type 4 and 5...

`````{tab-set}
````{tab-item} Open repository for first time

**... by
(a) oopening the repository locally (cloning) and 
(b) creating your own version (branching) or selecting existing version (checkout branch):**

 - cloning
 - branching / checkout branch
````
````{tab-item} Work in previously opened repository

**... by 
(a) updating your repository (pulling) and 
(b) creating your own version (branching) or select existing version (checkout branch):**

 - pulling
 - branching / checkout branch
````
`````
``````
```````
 3. **Edit the book as ...**

```````{tab-set}
``````{tab-item} ... user type... 3

**... by directly adding changes on a single file to Git-timeline (committing):**

 - adding file or making changes to single file
 - committing
``````
``````{tab-item} ... user type 4...

`````{tab-set}
````{tab-item} ... on a brand new version (branch)

**... by 
(a) making changes on a single / multiple file(s), 
(b) selecting changes to be added to the Git-timeline (staging), 
(c) adding those to the Git-timeline (committing) and 
(d) adding those changes to GitLab/GitHub (pushing):**

- adding or making changes to file(s)
- staging
- committing
- pushing
````
````{tab-item} ... on an existing version (branch)

**... by 
(a) regularly obtaining updates from colleagues from GitLab/GitHub (pulling), 
(b) solving potential incompatible changes (merge conflicts), 
(c) making changes on a single / multiple file(s), 
(d) selecting changes to be added to the Git-timeline (staging), 
(e) adding those to the Git-timeline (committing) and adding those changes to GitLab/GitHub (pushing):**

- pulling
- solving merge conflicts
- adding or making changes to file(s)
- staging
- committing
- pushing
````
`````
``````
``````{tab-item} ... user type 5...
... on ...
`````{tab-set}
````{tab-item} ... brand new version (branch)
**... by making changes on a single / multiple file(s), checking changes locally, selecting changes to be added to the Git-timeline (staging), adding those to the Git-timeline (committing) and adding those changes to GitLab/GitHub (pushing):**
- adding or making changes to file(s)
- checking changes locally 
- staging
- committing
- pushing
````
````{tab-item} ... existing version (branch)
**... by regularly obtaining updates from colleagues from GitLab/GitHub (pulling), solving potential incompatible changes (merge conflicts), making changes on a single / multiple file(s), checking changes locally,  selecting changes to be added to the Git-timeline (staging), adding those to the Git-timeline (committing) and adding those changes to GitLab/GitHub (pushing):**
- pulling
- solving merge conflicts
- adding or making changes to file(s)
- checking changes locally 
- staging
- committing
- pushing
````

``````
```````
 4. **Check changes online**
 5. **Repeat steps 3 and 4 until you're satisfied**
 6. **Reviewing (merge request), (eventually repeat steps 3 and 4) and combine (merging) your version with main draft version of book**
 7. **Publish changes to student version of the book (merge request)**
