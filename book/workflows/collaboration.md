# Collaborative book-editing

As previously mentioned there are multiple platforms that can host Git repositories which are extremely useful for collaboration on text-based files. Here we will elaborate on two: GitLab and GitHub both in the online environment and locally on your device.

Globally, the steps involved are as follows:
 1. Define an issue to work on
 2. Open the files of the repository online or clone the repository to work on it locally
 3. Create a branch for your changes
 4. Edit the book by:
    - Pulling remote changes from others
    - Staging your changes
    - Committing a collection of changes
    - If working on a repository locally: pushing your changes
 5. Reviewing and merging changes in a merge request
 6. Publishing the changes to  the published version of the book
```{admonition} User types
:class: tip
This page is useful for user type 3, 4 and 5.
```

A jupyter book is composed out of many files which contain the educational content produced by you. Through the use of branches it is possible to work on the book at the same time as your team-members. Working on content for the book is mainly individual work, the beauty of git comes in when everybody's changes are merged into the main branch.

We have previously introduced the notions of using Git in the online environment (remote) or locally. All the (text, figures, etc.) files that make up the book are contained on the remote repository on GitLab or GitHub. This could be on an open repository on `gitlab.com` or `github.com`. In the context of creating educational books for students at TU Delft, the repository will most likely be located on `gitlab.tudelft.nl` or `github.com/teachbooks`.

The steps involved are as follows:
 1. **Assign task to yourself (milestones, issues)**
 2. **Create your own version of the book by**
```````{tab-set}
``````{tab-item} ... user type 3
**... by directly creating your own version (branching) or selecting existing version:**
 - branching
``````
``````{tab-item} ... user type 4 and 5
**... for ...**
`````{tab-set}
````{tab-item} ... repository opened for first time
**... by opening the repository locally (cloning) and creating your own version (branching) or select existing version (checkout branch):**
 - cloning
 - branching / checkout branch
````
````{tab-item} ... previously opened repository
**... by updating your repository (pulling) and creating your own version (branching) or select existing version (checkout branch):**
 - pulling
 - branching / checkout branch
````

`````
``````
```````
 3. **Edit the book by ...**
```````{tab-set}
``````{tab-item} ... user type 3
**... by directly adding changes on a single file to Git-timeline (committing):**
 - adding or making changes to single file
 - committing
``````
``````{tab-item} ... user type 4
... on ...
`````{tab-set}
````{tab-item} ... brand new version (branch)
**... by making changes on a single / multiple file(s), selecting changes to be added to the Git-timeline (staging), adding those to the Git-timeline (committing) and adding those changes to GitLab/GitHub (pushing):**
- adding or making changes to file(s)
- staging
- committing
- pushing
````
````{tab-item} ... existing version (branch)
**... by regularly obtaining updates from colleagues from GitLab/GitHub (pulling), solving potential incompatible changes (merge conflicts), making changes on a single / multiple file(s), selecting changes to be added to the Git-timeline (staging), adding those to the Git-timeline (committing) and adding those changes to GitLab/GitHub (pushing):**
- pulling
- solving merge conflicts
- adding or making changes to file(s)
- staging
- committing
- pushing
````
`````
``````
``````{tab-item} ... user type 5
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
