all: README.md

README.md:
	touch README.md
	echo "First-Repo" >> README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md