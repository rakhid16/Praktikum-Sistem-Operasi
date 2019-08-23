<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>

## Fungsi
* Apa itu Fungsi?
<p><b>Fungsi</b> merupakan bagian script atau program yang berisi kumpulan beberapa statement yang melaksanakan tugas tertentu. dengan subrutin kode script kita tentunya lebih sederhana dan terstruktur, karena sekali fungsi telah dibuat dan berhasil maka akan dapat digunakan kapan saja kita inginkan.</p>

* Syntax

```
  nama_fungsi () { 
    perintah1
    perintah2
    ...
    perintahLain
  }
```

* Contoh:

```bash
  #!/bin/bash

  # Mendeklarasikan fungsi
  nama() {
    echo "Siapa namamu? dan sebutkan npm mu"
    read nama
  }
  npm() {
    read npm
    echo "Hai $nama dengan npm $npm, selamat datang \n di praktikum sistem operasi \n yang seru ini ya!"  
  }

  # Memanggil fungsi
  nama
  npm
```
