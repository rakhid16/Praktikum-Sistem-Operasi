<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>

## Function
* Apa itu Fungsi?
<p><b>Fungsi</b> merupakan bagian script atau program yang berisi kumpulan beberapa statement yang melaksanakan tugas tertentu. dengan subrutin kode script kita tentunya lebih sederhana dan terstruktur, karena sekali fungsi telah dibuat dan berhasil maka akan dapat digunakan kapan saja kita inginkan.</p>

* Syntax :

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

* Nested Function (Fungsi bersarang)
  
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

## Soal Latihan
* Buatlah program fungsi kompleks yang menerapkan beberapa konsep pemrograman bash seperti diatas !
  
