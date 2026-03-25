import subprocess

# Define the commit map
commit_map = {
    "ee99d20": "[Day 0] Add initial files",
    "d794280": "[Day 0] Refactor and clean up Python script",
    "67e0ab7": "[Day 1] Create day 1 structure",
    "67c54eb": "[Day 1] Add files",
    "7260b9f": "[Day 1] Delete temporary files",
    "063dbb4": "[Day 1] Delete po.py",
    "6fc0f88": "[Day 1] Add print statement",
    "ce88698": "[Day 1] Cleanup",
    "3ee36e4": "[Day 2] Add initial files",
    "13a61b2": "[Day 2] Add pl.py",
    "71f52a4": "[Day 2] Add files",
    "25a2fc7": "[Day 3] Add exc4.py",
    "36a38d2": "[Day 3] Add files",
    "a84f545": "[Day 4] Add exc6.py",
    "576e0e5": "[Cleanup] Remove day 2",
    "1b18d6c": "[Cleanup] Remove shopping files",
    "8fd9317": "[Cleanup] Remove day 1",
    "4c5b500": "[Cleanup] Remove day 3",
    "ed33282": "[Cleanup] Remove day 4",
    "a75560a": "[Week 2] Initialize week 2"
}

# Generate filter-branch command
command = ["git", "filter-branch"]
for commit_hash, new_message in commit_map.items():
    command.append(f"--msg-filter=sed -e 's/^.*{commit_hash}.*$/{new_message}/'")

command.append("-- --all")
subprocess.run(command)

# Force push the changes
subprocess.run(["git", "push", "--force", "origin", "master"])