all: create_readme update_readme

CURRENT_DATE := $(shell date)
NUM_LINES := $(shell wc -l guessinggame.sh | egrep -o ^[0-9]+)

create_readme:
	@touch README.md
	@echo "# Peer-graded Assignment; Bash, Make, Git, and Github" > README.md
	@echo "" >> README.md
	@echo "#### _This was autogenerated by a makefile._" >> README.md

update_readme:
	@echo "" >> README.md
	@echo "* Make was run at: " $(CURRENT_DATE) >> README.md
	@echo "* The number of lines in guessinggame.sh is: "$(NUM_LINES)"."  >> README.md
	@echo "Huzzah!  README.md was created."

clean:
	@rm README.md
	@echo "All clean!  README.md file was deleted."
