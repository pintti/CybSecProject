## Write up to complete the task

Unzipping files tasks should be completed before this one.

The task consists of a file with personal information, a zip file, and a list of passwords that have already been tested unsuccesfully to access the zip file. Idea is to look at the personal information and try to guess the password from that through trial and error, to show how weak a password using identifiable information is.

The list of already tried passwords should give a hint on the structure of what the password might be.

Steps to complete:

1. The student should check the files `ilmoittautumistiedot` and `yritetyt_salasanat.txt` with `cat` to get started

2. They should then try to unzip the zip file with `unzip top_secret.zip` and try to guess the password

3. The password to open the file is `musti1989`

4. Once successful, the folder contains a text file with the flag `CSP{MUSTIONKOIRA}`
