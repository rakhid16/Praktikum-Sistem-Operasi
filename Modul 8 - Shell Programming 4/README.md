<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p><br>

<p align="center"><img src="https://i.imgur.com/oXs5qf2.jpg" width=380 height=200></p>

## BASH Function
* Apa itu Fungsi bash?
<p><b>Fungsi</b> merupakan bagian script atau program yang berisi kumpulan beberapa statement yang melaksanakan tugas tertentu. dengan subrutin kode script kita tentunya lebih sederhana dan terstruktur, karena sekali fungsi telah dibuat dan berhasil maka akan dapat digunakan kapan saja kita inginkan.</p>

* Deklarasi Function Syntax - 1 :

```
nama_fungsi () { 
    perintah1
    perintah2
    ...
    perintahLain
 }
```

* Contoh :

```bash
#!/bin/bash

# Mendeklarasikan fungsi
nama() {
    echo "Siapa namamu?"
    read nama
}
npm() {
    echo "Sebutkan npm mu"
    read npm
    echo -e "Hai $nama dengan npm $npm, selamat datang \n di praktikum sistem operasi yang seru ini ya!"  
}

# Memanggil fungsi
nama
npm
```
* Output :

<p align="center"><img src="https://i.imgur.com/ntXtYCP.jpg" width=400 height=300></p>

* Deklarasi Function Syntax - 2 :

```
function namaFungsi {
   Statement-1 command...
   Statement-2 command...
   Statement-3 command...   
   Etc
   
} 
```

* Contoh :

```bash
#!/bin/bash

# Mendeklarasikan fungsi
function nama {
    echo "Siapa namamu?"
    read nama
}
function npm {
    echo "Sebutkan npm mu"
    read npm
    echo -e "Hai $nama dengan npm $npm, selamat datang \n di praktikum sistem operasi yang seru ini ya!"  
}

# Memanggil fungsi
nama
npm
```
* Output :

<p align="center"><img src="https://i.imgur.com/ntXtYCP.jpg" width=400 height=300></p>

## Nested Function (Fungsi bersarang)
  
* Contoh :

```bash
#!/bin/bash

# Mendeklarasikan fungsi
nama() {
    echo "Siapa namamu?"
    read nama
    npm                               # <------  Memanggil fungsi di dalam fungsi (fungsi bersarang)
}
npm() {
    echo "Sebutkan npm mu"
    read npm
    echo -e "Hai $nama dengan npm $npm, selamat datang \n di praktikum sistem operasi yang seru ini ya!"  
}

# Memanggil fungsi
nama
```

* Output :

<p align="center"><img src="https://i.imgur.com/B2tIyqN.jpg" width=400 height=300></p>

## Bash Function Dengan Paramaeter (x, y)

* Deklarasi Function paramater :
  
```
function namaFungsi atau namafungsi() {
  par1=$1
  par2=$2
  command on $par1

} 
```

* Contoh :

```bash
#!/bin/bash

# Mendeklarasikan fungsi
identitas() {
	parameter1=$1
	parameter2=$2
	parameter3=$3
	echo "$parameter1"	
	echo "$parameter2"	
	echo "$parameter3"	
}

echo "Masukkan Nama : "
read a
echo "Masukkan Npm : "
read b
echo "Hobimu Apa :"
read c

printf "\n"
identitas $a $b $c
```

* Output :

<p align="center"><img src="https://i.imgur.com/wVFyrAP.png" width=400 height=300></p>

## Soal Latihan
* Buatlah program bash function yang dapat menghitung luas bidang persegi!
   
Contoh Output :
   
```bash
Masukkan Panjang :
10
   
Masukkan Lebar :
4
   
Luas Persegi :
40
   
```
