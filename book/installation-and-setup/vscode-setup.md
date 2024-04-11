# VS Code

```{admonition} User types
:class: tip
This page is useful for user type 4-6.
```

VS Code is a text editor with some extra features, such as integrated source control and a file browser. Moreover, extensions are available to add functionality to VS Code.

## Installation

VS Code can be downloaded from [here](https://code.visualstudio.com). The installation is fairly simple and won't be covered here.

## Extensions

When working with Jupyter Book (or Notebooks in general), these extensions are highly recommended:

- User type 4-6:
    - [MyST-Markdown](https://marketplace.visualstudio.com/items?itemName=ExecutableBookProject.myst-highlight) - adds support for MyST markdown, including previews.
    - [Spell checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) - Spelling checker for source code and text
- User type 5-6
    - [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) - enables validation of `.yml` files (the format of the Jupyter Book configuration files).
    - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) - for obvious reasons. Also includes Jupyter Notebook rendering.
    - [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot) - Your AI pair progammer
    - [Jupyter Cell Tags](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.vscode-jupyter-cell-tags) - Jupyter Cell Tags support

## Using the Terminal in VS Code (Windows only), user type 5-6 only
By default, Powershell is the default terminal used in VS Code. However, Git Bash is recommended because it provides Unix-like commands, making it much easier to find help on sites like Stack Exchange. It also works better with open source projects like Jupyter. Git Bash installs automatically with git which you'll learn in the next chapter; to set as default:
* Type `Ctrk+Shift+P` to open the command palette (it's also the top item in the "View" menu list)
* Start type "terminal default" and you will soon see and be able to select the setting "Terminal: Select Default Profile" (hit `Enter`)
* select Git Bash and hit "Enter" again to set as default

When creating a new terminal via the menu bar you should now automatically start with a Git Bash terminal. Note that if a Powershell terminal still opens by default, you can always create a new terminal and manually select Git Bash.