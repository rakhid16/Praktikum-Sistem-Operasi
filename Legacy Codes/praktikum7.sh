from os import getpid
from time import time, sleep
from multiprocessing import cpu_count, Pool, Process

def ale_ale1(angka):
   if angka%2 == 0:
    print(angka, "ID Proses", getpid())
   else:
    print(angka, "ID Proses", getpid())
   sleep(1)
def ale_ale2(angka):
   print(angka, "ID Proses Rahasia")

if __name__ == '__main__':

    angka1=0
    angka2=0
    angka1 = int(input("Masukkan Batas awal  : "))
    angka2 = int(input("Masukkan Batas akhir : "))

    # SEKUENSIAL
    print("\n")
    print("Pemrosesan Sekuensial")
    sekuensial_awal = time()

    for i in range(angka1,(angka2+angka1+1)-angka1):
        ale_ale1(i)

    sekuensial_akhir = time()

    # KELAS PROCESS
    print("\n")
    print("Pemrograman Paralel dengan multiprocessing.Process")

    kumpulan_proses = []
    process_awal = time()

    for i in range(angka1,(angka2+angka1+1)-angka1):
        p = Process(target=ale_ale2, args=(i,))
        kumpulan_proses.append(p)
        p.start()

    for i in kumpulan_proses:
        p.join()

    process_akhir = time()

    # KELAS POOL
    print("\n")
    print("Pemrograman Paralel dengan multiprocessing.Pool")
    pool_awal = time()

    pool = Pool()
    pool.map(ale_ale1,range(angka1,(angka2+angka1+1)-angka1))
    pool.close()

    pool_akhir = time()

print("\n")
print("Sekuensial :", sekuensial_akhir - sekuensial_awal, "detik")
print("Kelas Process :", process_akhir - process_awal, "detik")
print("Kelas Pool :", pool_akhir - pool_awal, "detik")
print("\n")
