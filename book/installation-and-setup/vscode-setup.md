# VS Code

VS Code is a text editor with some extra features, such as integrated source control and a file browser. Moreover, extensions are available to add functionality to VS Code.

## Installation

VS Code can be downloaded from [here](https://code.visualstudio.com). The installation is fairly simple and won't be covered here.

## Extensions

When working with Jupyter Book (or Notebooks in general), these extensions are highly recommended:

- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) - for obvious reasons. Also includes Jupyter Notebook rendering.
- [MyST-Markdown](https://marketplace.visualstudio.com/items?itemName=ExecutableBookProject.myst-highlight) - adds support for MyST markdown, including previews.
- [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) - enables validation of `.yml` files (the format of the Jupyter Book configuration files).

## Using the Terminal in VS Code (Windows only)

By default, Powershell is the default terminal used in VS Code. However, Git Bash is recommended because it provides Unix-like commands, making it much easier to find help on sites like Stack Exchange. It also works better with open source projects like Jupyter. Git Bash installs automatically with git; to set as default:
* Type `Ctrk+Shift+P` to open the command palette (it's also the top item in the "View" menu list)
* Start type "terminal default" and you will soon see and be able to select the setting "Terminal: Select Default Profile" (hit `Enter`)
* select Git Bash and hit "Enter" again to set as default

When creating a new terminal via the menu bar you should now automatically start with a Git Bash terminal. Note that if a Powershell terminal still opens by default, you can always create a new terminal and manually select Git Bash.

## Getting Anaconda to work in the VS Code terminal
(vscode-setup-bash)=
````{tab} Windows - Git Bash (preferred)

There are two things to do before you can use conda in VS Code: 1) adding Anaconda to your PATH variables (as user, *not* as system/admin), and 2) setting up Anaconda to run on Git Bash.

1. update the `PATH` variables: 
* search for 'env' in the windows search to find the settings page. Anaconda doesn't recommend adding them to the system `PATH`, therefore when searching for the setting with the Windows search, so be careful to open **"edit environment variables for your account"**; do **not** "edit the system environment variables". 
* Identify the box for adding variables for a specific user (the top box), not the system. 
* select the line with 'Path' and click edit
* Add the `Anaconda3` and `Anaconda3/Scripts` directories to `PATH`.

You will know if this worked because the `conda` commands below will not produce an error. You can also check by opening a Git Bash terminal and listing your Anaconda environments with `conda env list`.

2. To setup Anaconda, open git bash and run the collowing commands (note, the first two commands to create `myenv` can be skipped if you already have an Anaconda environment; e.g., default is `base`):
* `conda create -n myenv python`  
* `conda install -n myenv numpy`  
* run `conda init bash` to link conda to Git Bash
* restart shell (type `exit` to close)
* run `conda activate myenv` 
* restart shell

Check if it worked by opening a notebook in an aribtrary `DIR` using the command `jupyter lab --notebook-dir DIR`.
````
````{tab} MacOS
Usually, Anaconda works by default in the MacOS terminal. To check if it works for you, open a new terminal in VS Code by going clicking **View > Terminal** in the top menu bar. In the terminal window that appears, type `conda` and execute. If you get help page for `conda`, you're all set. If instead you get something like:

    zsh: command not found: conda

then do the following:

1. Find out where Anaconda is installed on your system. If you left everything as default during the installation, Anaconda is installed in `/Users/<username>/anaconda3` if you used the install script, or in `/Users/<username>/opt` if you used the graphical interface to install Anaconda.

2. Execute the following line:

        source <anaconda-installation-dir>/bin/activate

3. Then:

        conda init zsh

4. Restart VS Code, then test by executing `conda` again. This time, it should give you the help page. You now have access to you Anaconda environments in the VS Code terminal.
````
````{tab} Windows - Powershell

```{note}
This is not the preferred installation method: Powershell has a different set of terminal commands that are not Unix-based, whereas Git Bash does. Since the vast majority of coding information and examples on the internet related to Jupyter and other open source projects uses Unix-based commands, we strongly recommend you always run Git Bash for your work in the terminal.
``` 

On Windows, Anaconda usually does not work in the integrated VS Code terminal (Powershell). To check if it works for you, open a new terminal in VS Code by going clicking **View > Terminal** in the top menu bar. In the terminal window that appears, type `conda` and execute. If you get help page for `conda`, you're all set. If instead you get something like:

    conda : the term 'conda' is not recognized ...

then do the following steps:

1. Open Anaconda prompt **as administrator**.
2. Execute the following command:

        conda init --all

3. Close the Anaconda prompt. Then, open a Powershell window **as administrator** (go to the Start menu, type Powershell, then open Windows Powershell as administrator).
4. In the Powershell window, execute the following command: 
   
        Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

5. The command will ask you for some permissions. To do so, type `A`, then press enter.
6. Restart VS Code, then test by executing `conda` again. This time, it should give you the help page. You now have access to you Anaconda environments in the VS Code terminal.
````