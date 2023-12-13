## Write up to complete the task

Contains a single file with the flag of the task encoded in hex.
Some explanation on the command/used flags should be provided. `xxd` might also not be available in the most basic of linux distributions, so an alternative might be needed. 

1. The command to decode the file is `cat hex_file | xxd -r -p`

2. This will output the flag `CSP{HEKSADESIMAALILUKUJA}` in plaintext
