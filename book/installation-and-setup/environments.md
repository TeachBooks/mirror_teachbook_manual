# Creating python environments

A python virtual environment is, like the name might suggest, a reserved space within the computer that contains downloaded python packages. Each environment is like a clean slate and the packages and dependencies of one environment have no ifluence on other environments. In that sense, it makes sense to create a new (working) environment every time you start a new project. 

## Anaconda

However, before you can create an evironment you first need to install Anaconda. 'Anaconda's conda tool simplifies package and environment management across operating systems' (Anaconda.com), such as windows or MacOS. It makes getting started with python a lot easier because it already has a lot of useful python packages pre-installed. You can download the installation files [here](https://www.anaconda.com/download).

When installing Anaconda, keep in mind the following:

- In general you should use the default file location (don’t put it on a separate disk drive, or in a disk partition that is different than your primary OS); however, an exception to this is if you have a space in your Windows username (e.g., `C:/Users/First Last/Program Files`). In this case, install directly ìn a folder on `C:/`

- install it only for your User on the computer (this is especially important on Windows; do not install for all users)

Once installed, we will check to make sure you are ready to use Python. Anaconda provides environments, like small virtual mini-computers inside your real computer, and inside each of those environments you have Python (as well as a lot of Python packages)!

1. Open a command line interface on your computer:
        Windows users: this will be the anaconda or conda prompt (search for it in the Start menu at the bottom left of your screen)
        Mac users: use the “terminal” application
2. Once the command line interface is open, type and execute (hit enter) the following: `python --version`
3. You should be running at least Python 3.11. If not, don’t worry, we will try to fix it below (but first make sure you have updated Anaconda as described above)
4. Which environment are you in? The name is between parenthesis at the bottom of your Anaconda Prompt: by default, this should be `(base)`.
5. How many other environments do you have? Execute `conda env list` to see a complete list.
6. Do you see the `*` in the list of environments? That is indicating your current active environment. Unless you have changed something, it should be `base`. And if you just installed Anaconda for the first time, this will be your only environment!

## Environments

Now we will set up your first environment. The following steps will create an Anaconda environment and install Python 3.11. Even if you already have Python 3.11, it is still good practice to create a dedicated Anaconda environment for each of your major projects such as creating a jupyter book. Please make sure you have [upgraded Anaconda](https://docs.anaconda.com/free/anaconda/install/update-version/) before proceeding with these steps:

For simplicity we will call this environment `my_new_book`, but you can give it any name you like.

1. Open the commmand line interface (see above) or continue in the same session if it is still active
2. Execute: `conda create -n my_new_book python=3.11 anaconda` (this may take several minutes)
3. Activate: `conda activate my_new_book`
<br> Check: you should now see your new environment displayed somewhere in the prompt between parenthesis, like this: `(my_new_book)`

Now everytime you want to work on your jupyter-book or make use of the `build` function, you need to activate the environment! (step 3)

## Requirements
