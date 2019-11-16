from os import getpid
from time import time, sleep
from multiprocessing import cpu_count, Pool, Process

def cetak(i):
    print("Cetak angka", i+1,"- punya ID proses", getpid())
    sleep(1)
    
if __name__ == '__main__':
    # SEKUENSIAL
    print("Pemrograman Sekuensial")
    sekuensial_awal = time()
    
    for i in range(10):
        cetak(i)
    
    sekuensial_akhir = time()
    
    # KELAS PROCESS
    print("\nPemrograman Paralel dengan multiprocessing.Process")
    
    process_awal = time()
    
    for i in range(10):
        p = Process(target=cetak, args=(i,))
        p.start()
    
    process_akhir = time()
    
    # KELAS POOL
    print("\nPemrograman Paralel dengan multiprocessing.Pool")
    pool_awal = time()
    
    pool = Pool()
    pool.map(cetak, range(0,10))
    pool.close()
    
    pool_akhir = time()
    
print("\nSekuensial :", sekuensial_akhir - sekuensial_awal, "detik")
print("Kelas Process :", process_akhir - process_awal, "detik")
print("Kelas Pool :", pool_akhir - pool_awal, "detik")
