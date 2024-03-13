# Navigate to your working directory
You will need to know this to set up environments from a text-based file.

The essential command is `cd FILE_PATH`, which will navigate the terminal window to the directory at `FILE_PATH`. Note that although `cd` works on both Windows and Mac, many command line commands are different between the two.

````{tab} Windows
1. Open the folder you wish to use as your working directory in the File Explorer
2. In the bar near the top you will see the folder address; you may need to click in the window to see the file path (i.e., the tree of folders separated by forward slashes, `/`)
3. Select the entire path and copy it (CTRL+C or right-click, “copy address as text”)
4. You can now paste this path into the Anaconda Prompt after the `cd` command
5. Confirm you are in the right place by inspecting the path listed in your prompt (it should typically start with be `C:\ ...` and end wit `>`)
6. You can also inspect the contents of the directory by executing `dir`

Alternative
1. Open the folder you wish to use as your working directory in the File Explorer
2. Right-click the folder and click `Git bash here`
3. Confirm you are in the right place by inspecting the path listed in your prompt (it should typically start with be `C:\ ...` and end wit `>`)
4. You can also inspect the contents of the directory by executing `dir`

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