# Anaconda

However, before you can create an evironment you first need to install Anaconda. 'Anaconda's conda tool simplifies package and environment management across operating systems' (Anaconda.com), such as windows or MacOS. It makes getting started with python a lot easier because it already has a lot of useful python packages pre-installed. You can download the installation files [here](https://www.anaconda.com/download).

When installing Anaconda, keep in mind the following:

- In general you should use the default file location (don’t put it on a separate disk drive, or in a disk partition that is different than your primary OS); however, an exception to this is if you have a space in your Windows username (e.g., `C:/Users/First Last/Program Files`). In this case, install directly ìn a folder on `C:/`

- install it only for your User on the computer (this is especially important on Windows; do not install for all users)

Once installed, we will check to make sure you are ready to use Python. Anaconda provides environments, like small virtual mini-computers inside your real computer, and inside each of those environments you have Python (as well as a lot of Python packages)!

1. Open a command line interface on your computer:
<br>Windows users: this will be the anaconda or conda prompt (search for it in the Start menu at the bottom left of your screen)
<br>Mac users: use the “terminal” application
2. Once the command line interface is open, type and execute (hit enter) the following: `python --version`
3. You should be running at least Python 3.11. If not, don’t worry, we will try to fix it below (but first make sure you have updated Anaconda as described above)
4. Which environment are you in? The name is between parenthesis at the bottom of your Anaconda Prompt: by default, this should be `(base)`.
5. How many other environments do you have? Execute `conda env list` to see a complete list.
6. Do you see the `*` in the list of environments? That is indicating your current active environment. Unless you have changed something, it should be `base`. And if you just installed Anaconda for the first time, this will be your only environment!