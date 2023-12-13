## Basic search task 3

You have become acquainted with finding files based on names, sizes and filetypes. Now it is time to find files based on permissions. Your task is to find a file from main_directory that has executable permissions.

```
Useful commands:
    cd
    ls
    find
    cat
```

Solution:
```
    1. find ./ -type f -perm /a=x
    2. cat ./main_directory/music/music.csv
```

ans: CSP{BIGGFILEFINDER}
