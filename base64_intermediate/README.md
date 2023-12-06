## Write up to complete the task

The task consists of going through hundred files with a for loop and base64 decrypting each line to find out one line that is different than the others (the flag)

Example answer:
```console
for file in *; do
    if [ -f "$file" ]; then
        cat $file | base64 -d
	echo
    fi
done
```

ans: CSP{FORLOOPFLAGB64}
