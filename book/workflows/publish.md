# Publishing your book

Now that we have talked about how you can collaborate using git, its time to explain how the book is actually built.

# GitLab Pages

# GitHub Pages

# Pipeline

Both GitLab and GitHub make use of CI/CD to publish the jupyter books. CI/CD stands for Continuous Integration/Continuous Deployment. Within the scope of jupyter books focuses on automating  the process of building and delpoying the books. It makes sure that the book is always up-to-date and available.

Concretely, Continuous Integration means that whenever changes are pushed to the repositery (where does the oublish branch come in?) the pipeline is triggered. Moreover, the pipeline also builds the book which is composed out of multiple .md or .ipynb files and converts those files into HTML.

Continuous Deployment ensures that the book is deployed onto the desired destination (in our case the website) and accessible to the readers.