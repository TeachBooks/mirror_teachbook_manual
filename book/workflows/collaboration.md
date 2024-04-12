# Collaborative book-editing

```{admonition} User types
:class: tip
This page is useful for user type 3, 4 and 5.
```

A jupyter book is composed out of many files which contain the educational content produced by you. Through the use of branches it is possible to work on the book at the same time as your team-members. Working on content for the book is mainly individual work, the beauty of git comes in when everybody's changes are merged into the main branch.

We have previously introduced the notions of using Git in the online environment (remote) or locally. All the (text, figures, etc.) files that make up the book are contained on the remote repository on GitLab or GitHub. This could be on an open repository on `gitlab.com` or `github.com`. In the context of creating educational books for students at TU Delft, the repository will most likely be located on `gitlab.tudelft.nl` or `github.com/teachbooks`.

The steps involved are as follows:
 1. Assign task to yourself
 2. Create your own version (branching) of the book by:
```````{tab-set}
``````{tab-item} User type 3
- directly create your own version (branching) or select existing version 
``````
``````{tab-item} User type 4 and 5
`````{tab-set}
````{tab-item} First time opening (cloning) repository
- Find source link online repository
- Open repository locally (cloning)
- Create your own version (branching) or select existing version (checkout branch)
````
````{tab-item} Using previously opened (cloned) repository
- Obtain newest version from online repository (pulling)
- Create your own version (branching) or select existing version (checkout branch)
`````
``````
```````
 3. Edit the book by:
```````{tab-set}
``````{tab-item} User type 3
- Add or make changes to a file
- Add changes to Git-timeline (committing)
``````
``````{tab-item} User type 4
`````{tab-set}
````{tab-item} Brand new version (branch)
- Add or make changes to file(s)
- Select files ready to be added to Git-timeline (staging)
- Add changes to Git-timeline locally (committing)
- Add changes to GitHub/GitLab (pushing)
````
````{tab-item} Existing version (branch)
- Eventually solve conflicts with combining versions (merge conflicts, emerges after pulling)
- Add or make changes to file(s)
- Select files ready to be added to Git-timeline (staging)
- Add changes to Git-timeline locally (committing)
- Add changes to GitHub/GitLab (pushing)
````
`````
``````
``````{tab-item} User type 5
`````{tab-set}
````{tab-item} Brand new version (branch)
- Add or make changes to file(s)
- Check changes in book locally
- Select files ready to be added to Git-timeline (staging)
- Add changes to Git-timeline locally (committing)
- Add changes to GitHub/GitLab (pushing)
````
````{tab-item} Existing version (branch)
- Eventually solve conflicts with combining versions (merge conflicts, emerges after pulling)
- Add or make changes to file(s)
- Check changes in book locally
- Select files ready to be added to Git-timeline (staging)
- Add changes to Git-timeline locally (committing)
- Add changes to GitHub/GitLab (pushing)
````
`````
``````
```````
 4. Check changes online
 5. Repeat steps 3 and 4 until you're satisfied
 6. Reviewing (merge request), (eventually repeat steps 3 and 4) and combine (merging) your version with main draft version of book
 7. Publish changes to student version of the book (merge request)