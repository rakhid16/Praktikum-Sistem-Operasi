tipe data, input/output & percabangan

<p align="center"><img src="https://i.imgur.com/Pc85SYF.jpg" width=400 height=300></p>

## Apa itu Pemrograman Shell?
<p align=justify>&emsp;&emsp;&emsp;Pemrograman Shell atau disebut Shell Scripting ialah menyusun beberapa perintah shell (internal maupun eksternal) menjadi serangkaian perintah untuk melakukan tugas tertentu. Shell sendiri mempunyai beberapa macam antara lain :</p>

- Bourne shell(sh),
- C shell(csh),
- Korn shell(ksh),
- Bourne again shell(bash),
- dsb.

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

## Tipe Data
<p align=justify>Beberapa tipe data di pemrograman shell antara lain :</p>

- String
- Integer
- Array
- dsb.

<p><b>Contoh penggunaan String (single-quoted) & (double-quoted) : </b></p>
<p align="center"><img src="https://i.imgur.com/LaMFtno.jpg" width=400 height=300></p>

<p><b>Contoh penggunaan Integer : </b></p>
<p align="center"><img src="https://i.imgur.com/PDAHr6c.jpg" width=400 height=300></p>
<p>*let = digunakan untuk melakukan operasi perhitugan aritmatika</p>

<p><b>Contoh penggunaan Array : </b></p>
<p align="center"><img src="https://i.imgur.com/AFJVtU2.jpg" width=400 height=300>
<img src="https://i.imgur.com/uN76pbp.jpg" width=400 height=300></p>

## Ouput
<b>Output pada shell</b>
selain menggunakan output "echo", output bisa juga dilakukan dengan menggunakan printf seperti pada bahasa pemrograman C.
`bash
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt autoclean
`
