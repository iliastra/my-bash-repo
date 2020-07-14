all: README.md

README.md: guessinggame.sh
	echo "## Here must be the title of the project" > README.md
	echo "# Sorry. it was just for fun. The title is *The guessing game*" >> README.md
	echo "* This makefile was run at: $(shell date +%Y-%m-%d:%H:%M:%S) *" >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
