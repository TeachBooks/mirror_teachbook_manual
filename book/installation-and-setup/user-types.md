# User Types

Different types of users will interact with the website or the Jupyter Books differently and will therefore need to know more or less about the workflow and GitLab. For now we will differentiate 5 types of users.

### 1. Students providing feedback on the website

As can already be seen on the [MUDE website](https://mude.citg.tudelft.nl/book/intro.html) an extension (hypothesis add link to features) has been added that allows students to highlight and annotate sections which they consider important. Through that extension students will also be able to leave feedback about the content or the website for the responsible teacher.

### 2. Colleague providing feedback on book website

In a similar manner, colleages and team members can leave content related comments on the webiste through that extension. In this way, multiple teachers can give input in the textbook and course material without requiring and exact understanding of Jupyter Books or GitLab. The responsible teacher (or student assistants) can then make the adaptations to the book as recommended by their colleagues.

### 3. Colleague making adjustments in GitLab using single text editor

This type of user requires only very basic knowledge in GitLab in order to make changes to the website themselves without needing to install any software! Making adjustments using single text editor only requires the user to be able to login into GitLab and edit .md or .ipynb files. The changes can be done directly in the main or publish branch and if a new branch is needed for the changes then the set-up and merging can be taken care of by someone more familiar in GitLab

(add pic?)

### 4. Colleague making adjustments to non-interactive content locally

This user has more knowledge in GitLab than the previous user and can basically take care of branching and merging by themselves. They know how to work with software for editing .md and .ipynb files. The trickty part however is implementing interactive features in the book as they definetly require more knowledge on implementation and testing using a local python server or in the draft version online. 

### 5. Colleague making adjustments to all content locally

This user has an understanding of GitLab and can independetly make changes on the website built through Jupyter Books. Moreove they have an understanding of various extensions that allows them to make the pages interactive for the student.