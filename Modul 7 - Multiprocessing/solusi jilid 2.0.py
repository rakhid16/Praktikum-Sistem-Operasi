from os import getpid
from time import time, sleep
from multiprocessing import Pool, Process

def gan_gen(angka):
    if angka%2 == 0:
        print(angka, "merupakan bilangan genap ID Proses", getpid())
    else:
        print(angka, "merupakan bilangan ganjil ID Proses", getpid())
    sleep(1)

if __name__ == '__main__':
    angka = int(input())
    
    # PEMROSESAN SEKUENSIAL
    print("\nPemrosesan Sekuensial")
    sekuensial_awal = time()
    
    for i in range(1, angka+1):
      gan_gen(i)
    
    sekuensial_akhir= time()
    
    # PEMROSESAN PARALEL DENGAN multiprocessing.process
    print("\nPemrosesan Paralel dengan multiprocessing.process")
    kumpulan_proses = []
    
    process_awal = time()
    
    for i in range(1,angka+1):
      p = Process(target=gan_gen, args=(i,))
      kumpulan_proses.append(p)
      p.start()
    
    for i in kumpulan_proses:
      p.join()
    
    process_akhir = time()
    
    # PEMROSESAN PARALEL DENGAN multiprocessing.pool
    print("\nPemrosesan Paralel dengan multiprocessing.pool")
    pool_awal = time()
    
    pool = Pool()
    pool.map(gan_gen, range(1,angka+1))
    pool.close()
    
    pool_akhir = time()
    
print("\nSekuensial", sekuensial_akhir-sekuensial_awal, "detik")
print("multiprocessing.process", process_akhir-process_awal, "detik")
print("multiprocessing.pool", pool_akhir-pool_awal, "detik")
