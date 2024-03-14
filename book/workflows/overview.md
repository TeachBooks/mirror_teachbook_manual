# Team collaboration in Git

```{warning} Under Construction!

Okay i have to admit that there are things i am still unsure of
- what does the publish branch do?
- what is a pipeline
- 

```
This page suggests a workflow how to collaborate in Git and GitLab for different user types. Every team might have a different workflows but this workflow is shown as an example and is used in the MUDE course in CEG and by the TeachBooks team.

# Repositeries, Branching and Merging

We have previously introduced the notions of local and remote repositeries, branching and finally merging branches. You can find it [here](/book/installation-and-setup/git-setup_local.md). 

All the (markdown) files that make up the book are contained on the remote repositery on GitLab. This could be on an open repositery on `gitlab.com`. In the context of creating educational books for students at TU Delft, the repositery will most likely be located on `gitlab.tudelft.com` (local server?).

The main branch is the default branch. The content on this branch will be the most up to date that is approved by a team-member during merging. New branches, which are made to add or fix some content in the book, are usually cloned(?) from the main branch. This has many advantages compared to making the edits immediately in the main branch. The different branches help to keep an overview of the changes made to the book. Branching allows multiple people to make changes to the book at the same time. In case those changes made in parallel lead to conflicts, they can be resolved during the merging of the branches. This systematic workflow guarantees that editing the book goes smoothely. 

# Issues



(An alternative is to use Github and Github pages to publish your book.?)#

