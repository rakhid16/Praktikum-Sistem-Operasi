<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>
<p align=center>
<img src="https://i.imgur.com/HsGBZos.jpg" height=400 width=300>
</p>

<p align=justify>&emsp;&emsp;&emsp;<i>Deadlock</i> merupakan sebuah situasi dimana dua proses atau lebih membutuhkan lebih dari satu sumber daya(<i>resource</i>) memori dari  sebuah  komputer  dan  masing-masing  proses  telah  mendapat akses ke salah satu dari sumber daya tersebut serta tidak mau melepaskannya sebelum ia mendapat sumber daya yang lain dan menyelesaikan tugasnya. Contoh : Dua proses yang  sama-sama  membutuhkan mesin cetak untuk  menyelesaikan  tugasnya.  Masing-masing proses sudah memegang salah satu sumber daya dan saling menunggu proses yang lain untuk melepaskan sumber dayanya.</p>
<p align=justify>&emsp;&emsp;&emsp;Jika di dalam bahasa pemrograman, situasi <i>deadlock</i> dapat diilustrasikan dengan kondisi perulangan yang tak kunjung usai atau yang biasa disebut dengan <i>infinite loop</i>. Ada empat kondisi yang harus terpenuhi agar terjadi <i>deadlock</i>, yaitu :<br>
1. Kondisi <i>mutual exclusion</i>, yaitu setiap sumber daya diberikan pada tepat satu proses pada waktu tertentu.<br>
2. Kondisi <i>hold & wait</i>, yaitu proses yang sedang memegang sebuah sumber daya boleh meminta sumber daya yang lain.<br>
3. Tidak  ada  kondisi <i>pre-emption</i>. Sumber daya yang sedang digunakan oleh sebuah proses tidak dapat diambil secara paksa, tetapi harus dilepas secara eksplisit oleh proses yang sedang menggunakannya.<br>
4. Kondisi tunggu yang melingkar. Harus ada sebuah rantai melingkar dari dua atau lebih proses yang sedang didijalankan oleh proses yang lain dalam rantai tersebut.</p>
<p>Secara umum ada empat cara untuk menangani <i>deadlock</i>, yaitu:<br>
1. Mengabaikan permasalahan(<i>The Ostrich Algorithm</i>).<br>
2. Deteksi dan pemulihan(<i>recovery</i>).<br>
3. Pencegahan, dengan meniadakan salah satu dari empat kondisi <i>deadlock</i>.<br>
4. Pengalokasian sumber daya yang efisien.
</p>

<i>Postscript</i>: Soal praktikum/latihan akan diberikan di kelas.<br><br>
Referensi :<br>
1 Modul Praktikum Sistem Operasi Teknik Informatika UPNVJT 2018<br>
2 https://drive.google.com/open?id=1eVejdSRRr1fdhLGBtxvZ6EoAH7rkfMuc

Video panduan untuk praktikum Modul 5 :<br>
<a href="https://drive.google.com/file/d/1Be0RHbVGaQ5bYX4ndfYtl-0C1gLJeQI0/view?usp=sharing">PANDUAN</a>
