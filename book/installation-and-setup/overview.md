# Installation and setup for different types of users

Different types of users will interact with the website or the Jupyter Books differently and will therefore need to know more or less about the composition of the book. For now we will differentiate 5 types of users.

1. **Students providing feedback on the published website**.  <br>
<img src="figures/type 1.jpg" alt="Example Image" align="left" width="120" style="margin: 10px;">

    As can already be seen on the [MUDE website](https://mude.citg.tudelft.nl/book/intro.html) an extension has been added that allows students to highlight and annotate sections which they consider important. Through that extension students will also be able to leave feedback about the content or the website for the responsible teacher.

<br style="clear:both;">

2. **Colleague providing feedback on the draft website**. <br>
    In a similar manner, colleages and team members can leave content related comments on the webiste through that extension. In this way, multiple teachers can give input in the draft of the textbook and course material without requiring and exact understanding of Jupyter Books or GitLab. The responsible teacher (or student assistants) can then make the adaptations to the book as recommended by their colleagues.

3. **Colleague making adjustments in GitLab using single text editor**. <br>
    This type of user requires only very basic knowledge in GitLab in order to make changes to the website themselves without needing to install any software! Making adjustments using single text editor only requires the user to be able to login into GitLab and edit .md or .ipynb files. The changes can be done directly in the main or publish branch and if a new branch is needed for the changes then the set-up and merging can be taken care of by someone more familiar in GitLab.

    As an extra step, user 3.5 is a hybrid between type 3 and 4. Basically this user is making changes to individual chapters by editing the .md files locally using, for example, VS Code. Therefore this user requires a little bit more knowledge on git (think of pulling and pushing changes) but their main focus remains to make adjustments to the content of the book by editing .md files whereas user type 4 has more knowledge to make structral changes to the book as well.

4. **Colleague making adjustments to non-interactive content locally**. <br>
    This user has more knowledge in GitLab than the previous user and can basically take care of branching and merging by themselves. They know how to work with software for editing .md and .ipynb files. They can use the draft book online to view their changed in the book, or build the book locally. The tricky part however is implementing interactive features in the book as they definitely require more knowledge on implementation and testing using a local python server or in the draft version online.

5. **Colleague making adjustments to all content locally**. <br>
<img src="figures/type 5.jpg" alt="Example Image" align="left" width="120" style="margin: 10px;">

    This user has an understanding of GitLab and can independently make changes on the website built through Jupyter Books. Moreover they have an understanding of various extensions that allows them to make the pages interactive for the student.

<br style="clear:both;">

**Overview required software** 

Now that the types of users have been explained, you might have an idea which type corresponds to you! <br>
The following table will link the relevant installation and setup steps for you.

|<div style="width:120px">User Types</div>|<div style="width:400px">Relevant Sections</div>|<div style="width:150px">Installation</div>|
|:---:|:---|:---|
| Type 1<br>Type 2 | No software needed!<br>Just open your interactive book and navigate to the extension | [Extension Tutorial](extension.md) |
| Type 3 | Understanding Git & GitLab | [Git & GitLab](git-setup.md) |
| Type 4 | Understanding Git & GitLab<br>Edit using VS Code<br>Local Git with VS Code / GitHub Desktop<br>Anaconda<br>Using Anaconda in terminal<br>Working with directories<br>Python Environments<br>Python package: Jupyter book | [Git & GitLab](git-setup.md)<br>[VS Code](vscode-setup.md)<br>[How do I use git locally?](git-setup_local.md)<br>[Anaconda](anaconda.md)<br>[Anaconda in terminal](add_conda_to_path.md)<br>[Working directories](working-directory.md)<br>[Environments](environments.md)<br>[Jupyter Book](jupyter-book-setup)         |
| Type 5 | All sections of user type 4 are also relevant for user type 5.<br>With the addition of using extensions to create interactive features! |[Features](../features/overview.md) |

