# Makefile for Guessing Game

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n## Date and Time" >> README.md
	echo "\n$(shell date)" >> README.md
	echo "\n## Number of Lines in guessinggame.sh" >> README.md
	echo "\n$(shell wc -l < guessinggame.sh) lines" >> README.md
