This task is used to demonstrate how easy short passwords are to bruteforce with just some elbow grease.

The ZIP file is protected by a short password made out of complete mumbo jumbo, so guessing it is not going to happen. But what we do know is that it is a six letter password, so that should be easy enough to crack.

Cracking it by bruteforcing every possibility is an option however. The hast.txt file can already be found so students can use hashcat to bruteforce the password.

The command to crack the has should be ```hashcat -m 13600 -a 3 hash.txt ?ldus?ldus?ldus?ldus?ldus?ldus```

The password is BdS1aT