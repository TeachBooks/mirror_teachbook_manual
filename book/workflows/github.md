# GitHub template

To get started making your Jupyter Book with our functionalities, fork our template book https://github.com/PSOR-Books/template :

![alt text](../images/image-1.png)

Fill in a repository name, this name will be used in the future url of your book:

![alt text](../images/image-1.png)

Set up the build of your website using GitHub pages by selecting under `Settings` - `Pages` - `Build and deployment` - `Source` - `GitHub Actions`:

![alt text](../images/image-2.png)

Enable the predefined workflow to publish your book under `Actions` - `I understand my workflows, go ahead an enable them`:

![alt text](../images/image-3.png)

Edit a file under `Code` - `book` - A file of your choice - `Edit in place`, in the example below `book/intro.md` is edited:

![alt text](../images/image-5.png)

Make your edit and `Commit changes` to `main` branch:

![alt text](../images/image-6.png)
![alt text](../images/image-7.png)

Wait a few minutes for the website to be deployed, if you're curious, have a look at the progress under `Actions` - `All wokflows`:

![alt text](../images/image-8.png)

When the workflow has finished, visit your build book at https://<username>.github.io/<repository_name> (case sensitive). For our example it is: https://dummystudent-tom.github.io/My_own_book:

![alt text](../images/image-9.png)