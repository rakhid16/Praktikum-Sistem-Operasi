<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>
<p align="center">
<img src="https://i.imgur.com/mrz6KQC.jpg" width=400 height=200>
</p>
<p align=justify>&emsp;&emsp;&emsp;Bash merupakan penerjemah perintah yang berjalan pada konsol/<i>command line intrepeter</i> di mana si pengguna dapat memberi perintah(<i>command(s)</i>) yang dapat mengakibatkan sesuatu dalam sebuah sistem operasi berubah. Bash juga dapat membaca perintah dari berkas yang disebut skrip. Soal penamaan, Bash adalah singkatan dari <b>Bourne Again Shell</b>. Bash merupakan versi baru dari <b>Bourne Shell</b> yang dikembangkan oleh Steve Bourne. Pemrograman Bash-Shell itu sendiri adalah pengeksekusian kumpulan perintah menggunakan skrip yang ditulis ke dalam bahasa Shell, sehingga dapat dieksekusi oleh sistem operasi. Pada Linux sendiri, penggunaan Bash ini dijalankan melalui Terminal. Terminal adalah sebuah program semacam <i>Command Prompt</i> pada Windows. Berikut adalah perintah dasar dari Bash yang wajib kalian ketahui:</p>

<strong>pwd</strong><br>
<img src="https://i.imgur.com/gD1p5AB.jpg">
<strong>pwd</strong> merupakan singkatan dari <i>parent working directory</i>.<br>
Apabila perintah ini dijalankan maka yang akan keluar adalah direktori yang <i>user</i> akses/gunakan.<br>

<strong>ls</strong><br>
<img src="https://i.imgur.com/tZ0tfy3.jpg">
<strong>ls</strong> digunakan untuk melihat isi dari sebuah direktori.
<img src="https://i.imgur.com/fdbgNRU.jpg">
Tambahkan <strong>-l</strong> untuk mengetahui hak akses beserta waktu terakhir dari sebuah berkas/direktori diubah.

<strong>cd</strong><br>
<img src="https://i.imgur.com/qpsMMXl.jpg">
<strong>cd</strong> merupakan singkatan dari <i>change directory</i>.<br>
Perintah ini digunakan untuk berpindah direktori dari satu direktori ke direktori yang lain.

<strong>cat</strong>(alternatif lain adalah <strong>more</strong> dan <strong>less</strong>)<br>
<img src="https://i.imgur.com/NmvXtbW.jpg">
Perintah tersebut digunakan untuk melihat isi dari suatu berkas.

<strong>nano</strong><br>
<img src="https://i.imgur.com/kxKpeOc.jpg">
<strong>nano</strong> dapat dikategorikan sebagai teks editor dengan fitur yang sangat terbatas.<br>

<strong>mkdir</strong><br>
<img src="https://i.imgur.com/31GqdYN.jpg">
<strong>mkdir</strong> digunakan untuk membuat direktori/<i>folder</i> baru.

<strong>rm</strong><br>
<img src="https://i.imgur.com/lKqlFlA.jpg">
Perintah di atas digunakan untuk menghapus sebuah berkas.

<strong>rmdir</strong><br>
<img src="https://i.imgur.com/iZZSk6J.jpg">
<strong>rmdir</strong> digunakan untuk menghapus sebuah direktori.
<img src="https://i.imgur.com/1lm23Mx.jpg">
Apabila direktori tersebut tidak kosong maka perintah yang dapat digunakan adalah <strong>rm -rf nama_direktori</strong>.<br>
<b>r</b> untuk <i>recursive</i> dan <b>f</b> untuk <i>force</i>.

<strong>mv</strong><br>
<img src="https://i.imgur.com/QhszljR.jpg">
Digunakan untuk memindahkan suatu berkas(<i>cut-paste</i>).

<strong>cp</strong><br>
<img src="https://i.imgur.com/MkFlgju.jpg">
Digunakan untuk menyalin suatu berkas(<i>copy-paste</i>).

<strong>df</strong><br>
<img src="https://i.imgur.com/7vAOTk0.jpg">
<strong>df</strong> singkatan dari <i>disk free</i>.<br>
Digunakan untuk melihat ruangan tersisa dari partisi yang ter-<i>mount</i>.

<strong>top</strong><br>
<img src="https://i.imgur.com/Hisy2iL.jpg">
Menunjukan informasi mengenai proses-proses dan <i>threads</i> yang sedang dijalankan oleh kernel Linux.

<strong>free</strong><br>
<img src="https://i.imgur.com/U1atX7t.jpg">
Digunakan untuk mengetahui sumber daya RAM yang terpakai atau tidak.

<strong>python</strong><br>
<img src="https://i.imgur.com/MvFLai5.jpg">
Digunakan untuk menjalankan <i>Python Interpreter</i>.

<strong>version</strong><br>
<img src="https://i.imgur.com/aVH4kFt.jpg">
Digunakan untuk mengetahui sebuah versi dari suatu perangkat lunak.

<strong>whereis</strong><br>
<img src="https://i.imgur.com/1f9urIx.jpg">
Digunakan untuk mengetahui direktori di mana berkas-berkas perangkat lunak tersebut di simpan.

<strong>which</strong><br>
<img src="https://i.imgur.com/WvLDD4t.jpg">
Digunakan untuk mendapatkan direktori utama yang menyimpan berkas-berkas suatu perangkat lunak.

<strong>whatis</strong><br>
<img src="https://i.imgur.com/ECiZDgB.jpg">
Digunakan untuk mendapatkan definisi dari sebuah perangkat lunak.

<strong>locate</strong> & <strong>find</strong><br>
<img src="https://i.imgur.com/U1q8HEX.jpg">
Sama-sama digunakan untuk mencari berkas.<br>
<b>locate</b> lebih cepat dibanding <b>find</b> karena <b>locate</b> mencari pada <i>prebuilt database</i> sedangkan <b>find</b> mencari berkas secara keseluruhan.

<strong>ping</strong><br>
<img src="https://i.imgur.com/U5qZttP.jpg">
Digunakan untuk mengecek koneksi internet dengan sebuah alamat IP, website dan sebagainya.

<strong>poweroff</strong>, untuk <i>shutdown</i> sistem operasi.<br>
<strong>reboot</strong>, untuk me-<i>restart</i> sistem operasi.<br>
<strong>systemctl suspend</strong>, untuk masuk ke dalam mode <i>sleep</i>.<br>

<i>Commands</i> agar sistem operasi kalian selalu terperbarui :<br>
```bash
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt autoclean
```
Pelajari juga cara memasang perangkat lunak melalui terminal :<br>
1 .deb<br>
2 apt based<br>
3 url<br>
4 targz, dsb.
#### Soal Latihan:
Dengan menggunakan Terminal, buatlah sebuah direktori bernama "<b>Belajar Bash Dasar</b>" kemudian masuk ke dalam direktori tersebut dan buatlah sebuah skrip Bash sederhana yang dapat menampilkan sebuah keluran seperti di bawah ini:
```bash
Halo dunia!
Ini adalah skrip Bash pertamaku di Linux!
```
