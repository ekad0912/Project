README.md:
	 touch README.md
	 echo "# My Coursera Project" > README.md
	 echo -n "\n**Make date**: " >> README.md
	 date >> README.md
	 echo -n "\n**Number of lines in program:** " >> README.md
	 grep -c '' guessinggame.sh >> README.md
