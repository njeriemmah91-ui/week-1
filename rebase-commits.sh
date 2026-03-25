#!/bin/bash

# Clone the repository
REPO_URL="https://github.com/njeriemmah91-ui/week-1.git"
git clone "$REPO_URL"
cd week-1 || exit

# Checkout master branch
git checkout master

# Perform interactive rebase with specified renames
git rebase -i HEAD~20

# During the rebase, you will need to manually change the commits' messages in your text editor according to the following mappings:
# ee99d20 -> '[Day 0] Add initial files'\n# d794280 -> '[Day 0] Refactor and clean up Python script'\n# 67e0ab7 -> '[Day 1] Create day 1 structure'\n# 67c54eb -> '[Day 1] Add files'\n# 7260b9f -> '[Day 1] Delete temporary files'\n# 063dbb4 -> '[Day 1] Delete po.py'\n# 6fc0f88 -> '[Day 1] Add print statement'\n# ce88698 -> '[Day 1] Cleanup'\n# 3ee36e4 -> '[Day 2] Add initial files'\n# 13a61b2 -> '[Day 2] Add pl.py'\n# 71f52a4 -> '[Day 2] Add files'\n# 25a2fc7 -> '[Day 3] Add exc4.py'\n# 36a38d2 -> '[Day 3] Add files'\n# a84f545 -> '[Day 4] Add exc6.py'\n# 576e0e5 -> '[Cleanup] Remove day 2'\n# 1b18d6c -> '[Cleanup] Remove shopping files'\n# 8fd9317 -> '[Cleanup] Remove day 1'\n# 4c5b500 -> '[Cleanup] Remove day 3'\n# ed33282 -> '[Cleanup] Remove day 4'\n# a75560a -> '[Week 2] Initialize week 2'

# Force push changes back to origin master
git push origin master --force
