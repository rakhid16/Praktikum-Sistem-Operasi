
<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>

<p align="center"><img src="https://i.imgur.com/Pc85SYF.jpg" width=400 height=300></p>

## Apa itu Pemrograman Shell?
<p align=justify>&emsp;&emsp;&emsp;Pemrograman Shell atau disebut Shell Scripting ialah menyusun beberapa perintah shell (internal maupun eksternal) menjadi serangkaian perintah untuk melakukan tugas tertentu. </p>

* Shell sendiri mempunyai beberapa macam antara lain :
  * Bourne shell(sh),
  * C shell(csh),
  * Korn shell(ksh),
  * Bourne again shell(bash),
  * dsb.

<p align=justify>&emsp;&emsp;&emsp;Masing - masing shell mempunyai kelebihan dan kekurangan yang mungkin lebih didasarkan pada kebutuhan pemakai yang makin hari makin meningkat.</p>

## Variabel
<p align=justify>Beberapa hal yang perlu diperhatikan dalam mendefinisikan variabel:</p>

- Angka (0-9)
- Huruf (a-z dan A-Z)
- Karakter underscore (_)
- Nama variabel tidak boleh dimulai dengan angka 
- Tidak boleh menggunakan karakter spesial seperti !, *, $, #, -, dll karena karakter tersebut punya makna khusus untuk shell
- Bersifat case sensitive (membedakan huruf besar dan kecil)
- Pemberian nilai variable tidak boleh dipisahkan dengan spasi, karena shell akan menganggap pemisahan tersebut sebagai parameter

## Syntax Variabel

   - Mendefinisikan variabel

    nama_var=nilai

   - Mengakses variabel

    $nama_var

## Operator Aritmatika
| No |	Operator |	Deskripsi |
| - | :---: | :-------- |
| 1 |	+ |	Penjumlahan |
| 2 |	- |	Pengurangan |
| 3 |	* |	Perkalian |
| 4 |	/ |	Pembagian |
| 5 |	% |	Modulus (sisa pembagian) |
| 6 |	= |	Menempatkan nilai di sisi kanan ke variabel di sisi kiri |
| 7 |	== |	Membandingkan 2 nilai yang sama |
| 8 |	!= |	Membandingkan 2 nilai yang tidak sama |

## Tipe Data
- Beberapa tipe data di pemrograman shell antara lain :
    - String
    - Array
    - Integer
    - dsb.

* <p>Contoh penggunaan String (single-quoted) & (double-quoted) :</p>
<p align="center"><img src="https://i.imgur.com/LaMFtno.jpg" width=400 height=300></p>

* <p>Contoh penggunaan Array : </p>
<p align="center"><img src="https://i.imgur.com/AFJVtU2.jpg" width=400 height=300>
<img src="https://i.imgur.com/uN76pbp.jpg" width=400 height=300></p>

* <p>Contoh penggunaan Integer : </p>
<p align="center"><img src="https://i.imgur.com/PDAHr6c.jpg" width=400 height=300></p>
<p>Catatan : let = digunakan untuk melakukan operasi perhitugan aritmatika</p>

   * Ada 3 cara yang dapat digunakan untuk melakukan operasi matematika, yaitu:

      * Menggunakan perintah built-in ``let``
      * Menggunakan perintah eksternal ``expr`` atau ``awk``
      * Menggunakan perintah subtitusi ``$((ekspresi))``

* Contoh operasi "Let, Expr, Ekspresi" :
```bash
#!/bin/bash

a=15
b=7

#memakai let
let jumlah=$a+$b
let kurang=$a-$b
let kali=$a*$b

#memakai expr
bagi=`expr $a / $b`

#memakai perintah subtitusi $((ekspresi))
mod=$(($a % $b)) 

echo "a + b = $jumlah"
echo "a - b = $kurang"
echo "a * b = $kali"
echo "a / b = $bagi"
echo "a % b = $mod"

b=$a

echo "a = $a"
echo "b = $b"
```

* Output :

```
a + b = 22
a - b = 8
a * b = 105
a / b = 2
a % b = 1
a = 15
b = 15
```

## Input
<b>Input pada shell</b>

* Untuk membaca inputan dari user gunakanlah "read" dengan format penulisan “read nama_var”

```bash
#!/bin/bash
clear
 
echo -n "Hallo, masukkan nama anda : ";
read nama;
echo "Selamat datang $nama";
```
<p align="center"><img src="https://i.imgur.com/IAl6zC8.jpg" width=400 height=300></p>


## Ouput
<b>Output pada shell</b>

* echo digunakan untuk menampilkan output dengan syntax sebagai berikut:

   * Menampilkan teks biasa
`echo "teks"`

   * Menampilkan isi dari sebuah variabel
`echo $nama_var`

Catatan:

    Jika ingin menggunakan new line character (\n) pada echo, gunakan echo -e "teks\n teks"
    
* Contoh

```bash
#!/bin/bash
matakuliah="Sistem Operasi"

echo "Siapa namamu?"
read nama
echo -e "\nHai $nama!\nSelamat datang di praktikum $matakuliah:))))"
```
<p align="center"><img src="https://i.imgur.com/ctO0CrW.jpg" width=400 height=300></p>

* Selain menggunakan output "echo", output bisa juga dilakukan dengan menggunakan printf seperti pada bahasa pemrograman C.

* Contoh

```bash
#!/bin/bash

# Inisialisasi Var 
a=55;
b=4;
distroLinux="Ubuntu 19.04 LTS";
let c=a%b;

# Output Printf
printf "OS : $distroLinux \n";
printf "$c \n";
printf "%.2f float \n" $a;
printf "%.1f float \n" $a;
```
<p align="center"><img src="https://i.imgur.com/4L4PRvi.jpg" width=400 height=300></p>

## Percabangan
<p>Sebelum melangkah ke percabangan alangkah baiknya terlebih dahulu mengetahui dasar operasi relasional yang mana biasanya digunakan bersama dengan conditional statements.</p>

| No        | Operator           | Deskripsi  |
| :-------------: |:-------------:| :-----|
| 1      | -eq | Memeriksa apakah nilai kedua operan sama (==)  |
| 2      | -ne      |   Memeriksa apakah nilai kedua operan tidak sama (!=) |
| 3 | -gt      |    Memeriksa apakah nilai operan kiri lebih besar daripada operan kanan (>) |
| 4      | -lt | Memeriksa apakah nilai operan kiri lebih kecil daripada operan kanan (<) |
| 5      | -ge      |   Memeriksa apakah nilai operan kiri lebih besar atau sama dengan operan kanan (>=) |
| 6 | -le      |    Memeriksa apakah nilai operan kiri lebih kecil atau sama dengan operan kanan (<=) |

* If ..... Else

  * Syntax
```
    if [ kondisi1 ]
    then 
      perintah1 
    elif [ kondisi2 ]
    then
      perintah2 
    else
      alternatif_perintah
    fi
```
  * Contoh:
```bash
    #!/bin/bash

    a=15
    b=7

    if [ $a == $b ]
    then
      echo "a sama dengan b"
    elif [ $a -gt $b ]
    then
      echo "a lebih besar dari b"
    elif [ $a -lt $b ]
    then
      echo "a lebih kecil dari b"
    else
      echo "Tidak ada kondisi yang memenuhi"
    fi
```
<p align="center"><img src="https://i.imgur.com/Ta54NQq.jpg" width=400 height=300></p>

* Case .... Esac

    * Syntax

    ```case var in
      pola1)
        perintah1 
        ;;
      pola2)
        perintah2 
        ;;
      *)
        alternatif_perintah
        ;;
    esac
    ```
* Contoh:

    ```Bash
       #!/bin/bash

       printf "Jajan apa  yang kamu suka ?\n"
       printf "pentol ?\n"
       printf "batagor ?\n"
       printf "cireng ?\n"

       read jajan

       case "$jajan" in
         "pentol") 
           echo "Pentol buk mah wenak slur!" 
           ;;
         "batagor")
           echo "Batagore mas budi  mantap bat" 
           ;;
         "cireng")
           echo "Cirenge kantin rasane unch-unch" 
           ;;
         *)
           echo "Makanan yang kamu suka gaenak hehe" 
           ;;
       esac
    ```
<p align="center"><img src="https://i.imgur.com/StVeBWD.jpg" width=400 height=300></p>

## Soal Latihan
* Buatlah program percabangan sederhana aritmatika yang menerapkan beberapa konsep pemrograman bash seperti diatas !
