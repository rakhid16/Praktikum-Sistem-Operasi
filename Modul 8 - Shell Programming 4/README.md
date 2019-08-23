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

* Nested Function

```bash
  #!/bin/bash

  #define functions
  ask_name() {
    echo "Siapa namamu?"
    reply                 #call reply function inside ask_name function
  }
  reply() {
    read nama
    echo "Hai $nama, selamat datang di praktikum sistem operasi!"
  }

  #call functions
  ask_name
```

