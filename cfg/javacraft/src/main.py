# Requirements:
# 1. Path to the current workstation directory.
# 2. Arguments parsing.
# 3. ...
from .path import Directory

dir = Directory()
print("current dir: ", dir.get_current_directory())

print("new path", dir.merge_paths("com/dev/crud"))
