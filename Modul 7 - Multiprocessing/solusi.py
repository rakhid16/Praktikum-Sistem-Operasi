from os import getpid
from time import time, sleep
from multiprocessing import Pool, Process

def modulus(angka):
	global angka_bagi

	if angka % angka_bagi == 0:
		print("Habis! ID proses", getpid())
	else:
		print(angka, "ID proses", getpid())
	sleep(1)

if __name__ == '__main__':
	awal = int(input())
	akhir = int(input())
	angka_bagi = int(input())
	
    # PEMROSESAN SEKUENSIAL
	print("\nPemrosesan Sekuensial")
	sekuensial_awal = time()

	for i in range(awal, akhir+1):
		modulus(i)

	sekuensial_akhir= time()
    
    # PEMROSESAN PARALEL DENGAN multiprocessing.process
	print("\nPemrosesan Paralel dengan multiprocessing.process")
	kumpulan_proses = []

	process_awal = time()

	for i in range(awal, akhir+1):
		p = Process(target=modulus, args=(i,))
		kumpulan_proses.append(p)
		p.start()

	for i in kumpulan_proses:
		p.join()

	process_akhir = time()
    
    # PEMROSESAN PARALEL DENGAN multiprocessing.pool
	print("\nPemrosesan Paralel dengan multiprocessing.pool")
	pool_awal = time()
	
	pool = Pool()
	pool.map(modulus, range(awal,akhir+1))
	pool.close()

	pool_akhir = time()
    
print("\nSekuensial", sekuensial_akhir-sekuensial_awal, "detik")
print("multiprocessing.process", process_akhir-process_awal, "detik")
print("multiprocessing.pool", pool_akhir-pool_awal, "detik")
