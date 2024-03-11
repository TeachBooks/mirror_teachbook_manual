# Creating python environments

A python virtual environment is, like the name might suggest, a reserved space within the computer that contains downloaded python packages. Each environment is like a clean slate and the packages and dependencies of one environment have no ifluence on other environments. In that sense, it makes sense to create a new (working) environment every time you start a new project. 

## Set-up environments

Now we will set up your first environment. The following steps will create an Anaconda environment and install Python 3.11. Even if you already have Python 3.11, it is still good practice to create a dedicated Anaconda environment for each of your major projects such as creating a jupyter book. Please make sure you have [upgraded Anaconda](https://docs.anaconda.com/free/anaconda/install/update-version/) (if you didn't just download it) before proceeding with these steps:

For simplicity we will call this environment `my_new_book`, but you can give it any name you like.

1. Open the commmand line interface (see above) or continue in the same session if it is still active
2. Execute: `conda create --n my_new_book pip` (this may take several minutes)
3. Activate: `conda activate my_new_book`
<br> Check: you should now see your new environment displayed somewhere in the prompt between parenthesis, like this: `(my_new_book)`

4. Additional 4th step: `pip install -r requirements.txt` (explanation in the following section)

Now everytime you want to work on your jupyter-book, you need to activate the environment! (step 3) If you don't activate your environment, you will work in a 'wrong' working environment that might not contain all the packages you need.

As mentioned before, python packages can be downloaded in the environments you create. Both NumPy and pandas are popular Python packages used for data manipulation and analysis. For the creation of Jupyter Books, we will use the package `jupyter-book`. More information about this package [here](jupyter-book-setup.md).

## Text-based files

Working on larger projects (with many cool interactive features) may require you to install a lot of python packages. It can be useful to specify the required packages in a text-based file (for example `environment.yml`) and then telling `conda` to create the environment based on the contents of the file! 

Moreover, if you are joining a team that is working on complex projects, it can be useful for you to create a new environment based on use such a text-based file in order to create an up-to-date environment that will give you a flying start. The team might also provide a `requirements.txt` file which specifies all the packages you need to download in order to work on the project. Now it should also become clear why its preferrable to create new environment for each project/book that you work on because they might require you to use different packages!

Here's an example of what a `requirements.txt` file might look like.

```
# first list the packages you wish to download from PyPI
sympy

# now list the packages (and the respective url) you wish to download from the GitLab package registry
--index-url https://__token__:glpat-JduurUdhDczFJzvzZN4G@gitlab.tudelft.nl/api/v4/projects/13957/packages/pypi/simple
teachbooks
--extra-index-url https://gitlab.tudelft.nl/api/v4/projects/17983/packages/pypi/simple
jupyterbook_patches ~= 0.1.4
--extra-index-url https://gitlab.tudelft.nl/api/v4/projects/11239/packages/pypi/simple
sphinx-thebe ~= 0.9.9

# lastly any packages you wish to download directly from a Git repository
download_link_replacer @ git+https://gitlab.tudelft.nl/mude/sphinx-download-link-replacer
```
This file needs to be manually updated by the team everytime a new package is required. It will be useful to routinely update the packages in your environment by downloading the required packages again. 

This can be done by typing the following in your terminal (in the right environment): `pip install -r requirements.txt`.

**Note that the TeachBooks team works with these `requirements.txt` files which makes this an essential step in the set-up of your environment!**

```{note}

### Dependencies

Unfortunately, each of these packages are themselves require a number of different packages to function properly. To see this, try executing the following command in your Anaconda prompt or terminal. You can also try it for `(base)`.

`conda env export -n my_new_book`

You should see a long list of packages. Do you remember installing all of them with `conda install` or `pip install`? You shouldn't---but where did they come from? Many of them are packages required by the packages that you _did_ specifically install. These packages are called _dependencies_, and are necessary to make your Python packages function as expected. When you run `conda install numpy`, for example, `conda` checks all of the dependent packages that are needed and makes sure they are also provided in the `environment` that is being created. In reality, this is simply a folder on your computer with all of the `*.py` files stored in it. This _package management_ is what `conda` and `pip` are really doing when you run them with an `install` command. It also checks that it has a suitable _version_ of each dependency; this is why it sometime takes a long time to install a package Unfortunately, this means that as you add more packages to a particular environment, it gets more and more difficult to make sure everything works well together. Luckily, there is a practical solution: create new environments for specific projects to make sure the proper packages can function properly!

```
## Create an environment from text-based file

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
