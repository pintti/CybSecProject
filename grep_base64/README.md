## Write up to complete the task

This task consists of using base64 with grep to find the flag from thousands of lines that are all base64 encrypted.

Hint: All the decoded lines start with 'CSP', for some reason we know that the decrypted flag contains the word 'WAGON'

```
Useful commands:
  -grep '<something here>' <(<something here> encoded_data.txt)
```

Example solution
```console
grep 'WAGON' <(base64 -d encoded_data.txt)
```

answer: CSP{PACWAGONRFTSIX}
