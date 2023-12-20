## Write up to complete the task

Previously you have learned about using commands separately, now it is time to learn how to combine multiple commands to one line of instruction. There are multiple ways to achieve this, you can use a semicolon ; or && or || or a pipe | .
Combine commands to create a directory and a file under that directory. The directory name should be "folder" and the file name should be "file.txt". The answer to this question is the command you used to do this on one line with the format: 

<command folder> <something that combines commands and runs the latter command only if the first one succeeds> <command file.txt>

```
Relevant commands:
    mkdir
    touch
    &&
    ||
```


Steps to comp
1. mkdir folder && touch ./folder/file.txt

ans: mkdir folder && touch ./folder/file.txt