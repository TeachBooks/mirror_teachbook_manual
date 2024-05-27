# Open files online / clone files
We have previously introduced the notions of using Git in the online environment (remote) or locally. All the (markdown) files that make up the book are contained on the remote repository on GitLab or GitHub. This could be on an open repository on `gitlab.com` or `github.com`. In the context of creating educational books for students at TU Delft, the repository will most likely be located on `gitlab.tudelft.nl`.

If you'd like to work on your book locally (on your device, perhaps using Jupyter Lab or VS Code), you need to clone your repositery from the remote to your device. In familiar words, this means you need to make a copy of your book on your laptop.

### Cloning a repository

You can clone a repositery from GitLab and GitHub using GitHub Desktop or you can clone it with Git in VS Code.

`````{tab-set}
````{tab-item} Clone from GitLab using GitHub Desktop

1. On GitLab, go to the repository of your book. Click on the blue button that says "Clone" or "Code", and copy the link under "Clone with SSH".

```{figure} ../images/gitlab-clone.png
:name: gitlab-clone

The cloning menu.
```
2. Navigate to GitHub Desktop (which you've previously installed using [this tutorial](/book/installation-and-setup/git-setup_local.md)).

3. Click on `File` in the top menu.
4. Click on `Clone Repositery`. You should see the following window appear.

```{figure} ../figures/CloneGitHubDesktop.png
:name: CloneGitHubDesktop

Cloning in GitHub Desktop.
```
5. Paste the link you've just copied and define the location on your device.
````

````{tab-item} Clone from GitLab using GitHub Desktop
1. On GitLab, go to the repository of your book. Click on the blue button that says "Clone" ({numref}`gitlab-clone`), and copy the link under "Clone with SSH".

```{figure} ../images/gitlab-clone.png
:name: gitlab-clone

The cloning menu.
```
2. Navigate to GitHub Desktop (which you've previously installed using [this tutorial](/book/installation-and-setup/git-setup_local.md)).

3. Click on `File` in the top menu.
4. Click on `Clone Repositery`. You should see the following window appear.

```{figure} ../figures/CloneGitHubDesktop.png
:name: CloneGitHubDesktop

Cloning in GitHub Desktop.
```
5. Paste the link you've just copied and define the location on your device.
````

````{tab-item} Cloning repository with Git in VS Code
...
````
`````

Now that we've obtained the source, we can set up the files locally:

`````{tab-set}
````{tab-item} Cloning repository with Git in VS Code
2. Open a new VS Code window. You should be greeted with a welcome page ({numref}`vscode-welcome`). On this page, click "Clone Git Repository". Alternatively, open the Source Control menu from the left side bar, and click on "Clone Repository".

```{figure} ../images/vscode-welcome.png
:name: vscode-welcome

The VS Code welcome screen.
```

3. On the top of your screen, you should get a prompt asking you for a URL. In this field, paste the link you copied from GitLab and press enter. It will ask you to choose the location of the repository. After you've chosen a location, a final prompt will show up asking if you want to open the repository. Click on "Open".

4. You now have a local copy of the repository.
````

````{tab-item} Cloning repository with GitHub Desktop
....
````
`````