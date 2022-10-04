import os, time
from threading import Thread
from colorama import Fore, Back, Style

os.system("cls")
drive = ["D:\\", "E:\\", "F:\\"]

def drives():
    for path in drive[0:]:
        path = os.walk(path)
        for root, dirc, files in path:
            for file in files:
                sourspath = root + "\\" + file
                print(f"File path : {sourspath}")

            for dirctory in dirc:
                dircName = root + "\\" + dirctory
                print(dircName)
            time.sleep(1)
            
thread = Thread(target=drives).start()
# thread = Thread(target=drives).start().join()
