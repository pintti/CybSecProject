


grep_beginner
	description: by now you should have recognized some kind of pattern in the naming of the flags in some tasks. Use this information with grep to find the flag from the file.txt 
	solution: grep '^CSP.*' file.txt
	answer:

grep_base64
	description: There are thousands of base64 encoded lines in the file. Your task is to use grep and base64 to figure out the content that is on the line that contains codeword 'WAGON'
	solution: grep 'WAGON' <(base64 -d encoded_data.txt)
	answer: CSP{PACWAGONRFTSIX}
