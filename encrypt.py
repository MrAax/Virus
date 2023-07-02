import os, platform,time
def Encrypt(filename, key):
    file = open(filename, "rb")
    data = file.read()
    file.close()
    
    data = bytearray(data)
    for index, value in enumerate(data):
        data[index] = value ^ key
        
    file = open(filename, "wb")
    file.write(data)
    file.close()
    print("\u001b[0;31m File is Encrypted success full \u001b[0m ")
    time.sleep(2)
    if (platform.system().lower() == 'windows'):
    	os.system("cls")
    else:
    	os.system("clear")
    

def Decrypt(filename, key):
    file = open(filename, "rb")
    data = file.read()
    file.close()
    
    data = bytearray(data)
    for index, value in enumerate(data):
        data[index] = value ^ key
        
    file = open(filename, "wb")
    file.write(data)
    file.close()
    print("\u001b[0;31m File is Decrypted success full \u001b[0m")
    time.sleep(2)
    if (platform.system().lower() == 'windows'):
    	os.system("cls")
    else:
    	os.system("clear")


choice = ""
while choice !="3":
    print("\u001b[0;31m Please select you option.\u001b[0m")
    print("\u001b[0;32m 1.Encrypt File \t 2.Decrypt File \t3.Quit")
    choice = input("> ")
    if choice == "1" or choice == "2":
        key = int(input("Enter a key as int (1-255) :"))
        filename = input("Enter file name with extension :")
    if choice == "1":
        Encrypt(filename, key)
    if choice == "2":
        Decrypt(filename, key)
