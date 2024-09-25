# User types

Different types of users will interact with the website or the Jupyter Books differently and will therefore need to know more or less about the composition of the book. For now we will differentiate 5 types of users.

1. **Students providing feedback on the published website**.<br>  <img src="figures/type 1.jpg" alt="Example Image" align="right" width="130" style="margin: 10px;"> There are multiple tools of providing feedback in the built book:  a) using the issue button in the top-right corner to directly create issues visible to the editor team. b) Using the [hypothesis](https://jupyterbook.org/en/stable/interactive/comments/hypothesis.html)-extension which     allows public/private highlighting and annotating parts of the book. An example can be seen on the [MUDE website](https://mude.citg.tudelft.nl/book/intro.html). c) Using the [Utterances](https://jupyterbook.org/en/stable/interactive/comments/utterances.html)-extension which allows commenting on pages for books which are hosted on GitHub visible for everyone. Those comments are converted to issues on GitHub for the editors to handle.

2. **Colleague providing feedback on the draft website**. <br>
    In a similar manner as students, colleages and team members can leave content related comments on the website through extensions. In this way, multiple teachers can give input in the draft of the textbook and course material without requiring and exact understanding of Jupyter Books or GitLab/GitHub. The responsible teacher (or student assistants) can then make the adaptations to the book as recommended by their colleagues.

3. **Colleague making adjustments to single files in GitLab/GitHub using single text editor**. <br>
    This type of user requires only very basic knowledge in GitLab/GitHub in order to make changes to the website themselves without needing to install any software! Making adjustments using single text editor only requires the user to be able to login into GitLab/GitHub and edit .md or .ipynb files. The changes can be done directly in the main or publish branch and if a new branch is needed for the changes then the set-up and merging can be taken care of by someone more familiar in GitLab/GitHub.

4. **Colleague making text adjustments to multiple files at the same time locally**. <br>
    User 4 is a hybrid between type 3 and 5. Basically this user is making changes by editing the .md files locally using, for example, VS Code. Therefore, this user requires a little bit more knowledge on git (think of pulling and pushing changes) but their main focus remains to make adjustments to the content of the book by editing .md files whereas user type 5 has more knowledge to make changes to python files the book as well. This user can build the book online.

5. **Colleague making text and code (especially Python) adjustments to multiple files at the same time locally**. <br>
<img src="figures/type 5.jpg" alt="Example Image" align="right" width="120" style="margin: 10px;">

   This user has more knowledge in GitLab/GitHub than the previous user and can basically take care of branching and merging by themselves. They know how to work with software for editing .md and .ipynb files. They can use the draft book online to view their changed in the book, or build the book locally.

<br style="clear:both;">

