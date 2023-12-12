## Basic search task

You have a filesystem with many different files under different directories,
your task is to use the find command with certain flags to find the correct file. 
We know the following about the file:
    - it is a text file
    - its name has "flag" in it

The wildcard * might come useful here too. Read more about it here:
https://linuxhint.com/bash_wildcard_tutorial/

```
Useful commands:
    search
    cat
```

Solution:
```
    1.
        a) find -type f
        b) find -name flag.txt
        c) find -type f -name flag.txt
    2. cat ./task/subdirectory_2/flag.txt --> get the hint for the real flag (this one is fake)
    3. find -name flag* 
    4. cat ./main_directory/subdirectory_3/nested_subdirectory/flag78.text --> contains the answer: CSP{SEARCHINGISAW5UM}
```
