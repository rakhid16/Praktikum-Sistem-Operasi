tipe data, input/output & percabangan

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


## Tipe Data
- Beberapa tipe data di pemrograman shell antara lain :
    - String
    - Integer
    - Array
    - dsb.

* <p>Contoh penggunaan String (single-quoted) & (double-quoted) :</p>
<p align="center"><img src="https://i.imgur.com/LaMFtno.jpg" width=400 height=300></p>

* <p>Contoh penggunaan Integer : </p>
<p align="center"><img src="https://i.imgur.com/PDAHr6c.jpg" width=400 height=300></p>
<p>Catatan : let = digunakan untuk melakukan operasi perhitugan aritmatika</p>

* <p>Contoh penggunaan Array : </p>
<p align="center"><img src="https://i.imgur.com/AFJVtU2.jpg" width=400 height=300>
<img src="https://i.imgur.com/uN76pbp.jpg" width=400 height=300></p>


## Input
<b>Input pada shell</b>
<p>Untuk membaca inputan dari user gunakanlah "read" dengan format penulisan “read nama_var”</p>

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

<p align="center"><img src="https://i.imgur.com/ctO0CrW.jpg" width=400 height=300></p>

* Selain menggunakan output "echo", output bisa juga dilakukan dengan menggunakan printf seperti pada bahasa pemrograman C.

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
