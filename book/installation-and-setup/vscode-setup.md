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

By default, Powershell is the default terminal used in VS Code. However, Git Bash is recommended because it provides Unix-like commands, making it much easier to find help on sites like Stack Exchange. It also works better with open source projects like Jupyter. Git Bash installs automatically with git which you'll learn in the next chapter; to set as default:
* Type `Ctrk+Shift+P` to open the command palette (it's also the top item in the "View" menu list)
* Start type "terminal default" and you will soon see and be able to select the setting "Terminal: Select Default Profile" (hit `Enter`)
* select Git Bash and hit "Enter" again to set as default

When creating a new terminal via the menu bar you should now automatically start with a Git Bash terminal. Note that if a Powershell terminal still opens by default, you can always create a new terminal and manually select Git Bash.