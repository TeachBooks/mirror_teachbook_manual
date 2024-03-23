# Collaboration

As previosuly mentioned there are multiple platforms that can host Git repositeries. Here we will elaborate on two: GitLab and GitHub.

````{tab} GitLab

## Staging, committing and pushing

A jupyter book is composed out of many markdown files which contain the educational content produced by you. Through the use of branches it is possible to work on the book at the same time as your tem-members. Working on content for the book is mainly individual work, the beauty of git comes in when everybodys changes are merged into the main branch. Find out for about staging comitting and pushing [here](/book/installation-and-setup/git-stage-commit-push.md).

## Repositeries, Branching and Merging

We have previously introduced the notions of local and remote repositeries, branching and finally merging branches. You can find it [here](/book/installation-and-setup/git-branch.md). 

All the (markdown) files that make up the book are contained on the remote repositery on GitLab or Github. This could be on an open repositery on `gitlab.com`. In the context of creating educational books for students at TU Delft, the repositery will most likely be located on `gitlab.tudelft.com`.

The main branch is the default branch. The content on this branch will be the most up to date version of the book. Therefore, new branches, which are made to add or fix some content in the book, are usually cloned from the main branch. This has many advantages compared to making the edits immediately in the main branch. 
- The different branches help to keep an overview of the changes made to the book. 
- Branching allows multiple people to make changes to the book at the same time. 
- In case those changes made in parallel lead to conflicts, they can be resolved during the merging of the branches. 

This systematic workflow guarantees that editing the book goes smoothely. 

Merging a branch into the main branch is a also good moment to let a team-member review the content. This is done in the merge-request. By assigning a colleague to review your branch you can check the quality of your new content. 

## Milestones & Issues

In a repositery, team members can define Milestones and Issues. Milestones are used to track the overall progress of the project to make sure that deadlines are met. A milestone can group many issues, which are individual tasks that need to be finished in order to reach the milestone. Every team member can create issues when they think of a task that would improve the book like for example: 

<img src="figures/Issues.png" alt="New Issue" width="1000" style="display:block; margin-left:auto; margin-right:auto;"> <br>

You can create an issue by clicking on the blue `New Issue` button on the top right corner.

An issue is built up of the following attributes:
- the title, this should just be a quick description of the task 
- a label, to assign a category to the task such as: new content
- an assignee, the person who created the task can assign a team-member to the task or the task can remain without an assignee. Then whoever would like to pick up the task can assign it to themselves!
- a discussion section, here team-members can discuss any questions about the task
- a due date, in case the task is urgent or to keep track of deadlines

<img src="figures/New_Issue_GitLab.png" alt="New Issue" width="600" style="display:block; margin-left:auto; margin-right:auto;"> <br>

When the task is completed, the issue can be closed and you can move on to the next!

## Publishing the website

Once the book is ready to be published, a static website can be created through GitLab pages. (Need more info on that/Are we using gitlab pages?)

````
````{tab} GitHub


````



(An alternative is to use Github and Github pages to publish your book.?)#