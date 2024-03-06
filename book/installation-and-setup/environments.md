# Creating python environments

A python virtual environment is, like the name might suggest, a reserved space within the computer that contains downloaded python packages. Each environment is like a clean slate and the packages and dependencies of one environment have no ifluence on other environments. In that sense, it makes sense to create a new (working) environment every time you start a new project. 

## Anaconda

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

## Environments

Now we will set up your first environment. The following steps will create an Anaconda environment and install Python 3.11. Even if you already have Python 3.11, it is still good practice to create a dedicated Anaconda environment for each of your major projects such as creating a jupyter book. Please make sure you have [upgraded Anaconda](https://docs.anaconda.com/free/anaconda/install/update-version/) before proceeding with these steps:

For simplicity we will call this environment `my_new_book`, but you can give it any name you like.

1. Open the commmand line interface (see above) or continue in the same session if it is still active
2. Execute: `conda create -n my_new_book python=3.11 anaconda` (this may take several minutes)
3. Activate: `conda activate my_new_book`
<br> Check: you should now see your new environment displayed somewhere in the prompt between parenthesis, like this: `(my_new_book)`

Now everytime you want to work on your jupyter-book, you need to activate the environment! (step 3)

As mentioned before, python packages can be downloaded in the environments you create. Both NumPy and pandas are popular Python packages used for data manipulation and analysis. For the creation of Jupyter Books, we will use the package jupyter-book. More information about this package [here](jupyter-book-setup.md).

## Dependencies

Unfortunately, each of these packages are themselves require a number of different packages to function properly. To see this, try executing the following command in your Anaconda prompt or terminal. You can also try it for `(base)`.

`conda env export -n my_new_book`

You should see a long list of packages. Do you remember installing all of them with `conda install` or `pip install`? You shouldn't---but where did they come from? Many of them are packages required by the packages that you _did_ specifically install. These packages are called _dependencies_, and are necessary to make your Python packages function as expected. When you run `conda install numpy`, for example, `conda` checks all of the dependent packages that are needed and makes sure they are also provided in the `environment` that is being created. In reality, this is simply a folder on your computer with all of the `*.py` files stored in it. This _package management_ is what `conda` and `pip` are really doing when you run them with an `install` command. It also checks that it has a suitable _version_ of each dependency; this is why it sometime takes a long time to install a package Unfortunately, this means that as you add more packages to a particular environment, it gets more and more difficult to make sure everything works well together. Luckily, there is a practical solution: create new environments for specific projects to make sure the proper packages can function properly!

## Intermezzo: Navigate to your working directory
You will need to know this for the following steps.

The essential command is `cd FILE_PATH`, which will navigate the terminal window to the directory at `FILE_PATH`. Note that although cd works on both Windows and Mac, many command line commands are different between the two..

````{tab} Windows
1. Open the folder you wish to use as your working directory in the File Explorer
2. In the bar near the top you will see the folder address; you may need to click in the window to see the file path (i.e., the tree of folders separated by forward slashes, `/`)
3. Select the entire path and copy it (CTRL+C or right-click, “copy address as text”)
4. You can now paste this path into the Anaconda Prompt after the `cd` command
5. Confirm you are in the right place by inspecting the path listed in your prompt (it should typically start with be `C:\ ...` and end wit `>`)
6. You can also inspect the contents of the directory by executing `dir`

````
````{tab} Mac

1. Find the folder you wish to use as your working directory
2. Right-click and select Get Info
3. Hold down the Alt (Option) key; the menu items will change\
4. Select Copy … As Pathname
5. You can now paste this path into the Terminal after the `cd` command
6. Confirm you are in the right place by executing the command `pwd`
7. You can also inspect the contents of the directory by executing ls (that’s a lower case “L”)
8. Go here to see the source of this tip, along with screenshots.
````

## Create an environment from text-based file

Working on larger projects (with many cool interactive features) may require you to install a lot of python packages. It can be useful to specify the required packages in a text-based file, and then telling `conda` to create the environment based on the contents of the file! Moreover, if you are joining a team that is working on complex projects, it can be useful for you to create a new environment based on use such a text-based file in order to create an up-to-date environment that will give you a flying start.

If you want to create a file listing the required packages yourself, you can do it by creating a file with the following file extension: the `*.yml` file (pronounced "yah-mul"). It is a text-readable file, that stands for "Yet another Markup Language." This is one of _many_ types of files that use a particular type of text formatting to give a computer specific instructions. It is very similar to the way Markdown formatting works.

The `environment.yml` file will look something like this:

```
name:  MUDE
dependencies:
  - python=3.11
  - numpy
  - scipy
  - matplotlib
  - statsmodels
  - pip
  - conda-forge::jupyterlab

```     
You should see that it uses a colon `:` to list the information, like name and dependencies. This will be processed by `conda` when creating the new environment.

If you want to create an environment based on an existing `*.yml` file, you can follow these steps:

1. You need to have the file locally on your computer (for example by cloning the git repositery that it is in)
2. Open Anaconda Prompt
3. Navigate to your working directory (where this file and `environment.yml` is located)
4. Finally, execute this command: `conda env create -f environment.yml`

This may take several minutes because you are installing many packages at once! Keep an eye on the terminal window as this process is completed. First `conda` is collecting information about the dependencies, then it will _solve_ the environment; in other words, figure out which version of each package it should use. Once it is ready, it will present the list of packages and proceed with the "installation" (really just downloading `*.py` files and putting them in a folder on your computer)
Note that the prompt may ask you to confirm that the installation should proceed, depending on your system settings. 

Once the environment is created, we can activate it, and also check that everything was installed properly. Try `conda env export -n my_new_book` to see what was installed by "default." The list is very long, even though we only asked for a few packages!

It is also interesting to try `conda env export --from-history` (make sure you activated it already), which shows the specific packages requested. 

## Deleting Environments

Although the environments do not interfere with each other, you might want to delete environment you don't use. Try running the following in a Terminal or Anaconda prompt, which will list the file locations of your environment. 

`conda info --envs`

If you have many projects, the amount of environments can take up a lot of space on your computer as one environment can get very large. It is a good idea to remove environments once you know they are no longer useful.

To remove an environment, in your Anaconda Prompt, run:

`conda remove --name my_new_book --all`

You will be asked to confirm the deletion, then it may take a while to remove all of the files. To verify that the environment was removed, in your terminal window or an Anaconda Prompt, run:

`conda info --envs`

The environments list that displays should not show the removed environment.

This information has been taken from the [Anaconda documentation](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#removing-an-environment).

Now you can delete any other useless environments you have lying around on your computer!
