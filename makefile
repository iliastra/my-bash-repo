all: README.md

README.md: 
	echo '## Here must be the title of the project' > README.md
	echo '\n Sorry. it was just for fun. The title is *The guessing game* >> README.md
	echo '* Th date is: $(shell date +%Y-%m-%d:%H:%M:%S) *' >> README.md
	echo '* There were $(shell wc -l < guessinggame.sh) lines in guessinggame.sh *' >> README.md
	echo '# Thank you for your attention!' >> README.md
clean:
	rm README.md
 
