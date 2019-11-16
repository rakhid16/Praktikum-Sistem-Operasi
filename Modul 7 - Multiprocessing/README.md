<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>
<p align=center>
<img src="https://sebastianraschka.com/images/blog/2014/multiprocessing_intro/multiprocessing_scheme.png" width=550 height=350>
</p>
<p align=justify>&emsp;&emsp;&emsp;Objektifitas pada modul 7 adalah melakukan pemrograman paralel(yang merupakan salah satu konsep dasar sistem operasi) dengan <i>Multiprocessing</i>. Pemrograman paralel adalah sebuah teknik eksekusi perintah yang mana dilakukan secara bersamaan pada CPU. Seluruh bahasa pemrograman yang populer dapat melakukan pemrograman paralel dengan modul bawaan atau memang pengaturan <i>default</i>'nya seperti itu. Praktikan akan melakukan penerapan pemrograman paralel sederhana dengan Python. Kami memilih Python karena bahasa pemrograman tersebut sudah otomatis terinstal di hampir seluruh sistem operasi berbasis Linux selain itu secara <i>default</i> komputasi di Python dilakukan secara sekuensial. Biarpun sekuensial kita dapat menjadikan'nya paralel dengan fungsi bawaan yang telah disediakan oleh Python</p>
  
<p align=center>
<img src="https://techdifferences.com/wp-content/uploads/2017/01/multiprocessing.jpg">
</p>
1 Menggunakan CPU untuk komputasi<br>
2 Tidak berbagi sumber daya memori<br>
3 Memerlukan sumber daya memori dan waktu yang tidak sedikit<br>
4 Tidak memerlukan sinkronisasi memori<br><br>

Referensi :<br>
https://sebastianraschka.com/Articles/2014_multiprocessing.html<br>
https://github.com/Rakhid16/OArKom/

Soal latihan :<br>
Dengan menggunakan pemrosesan paralel buatlah program yang dapat menentukan sebuah bilangan itu ganjil atau genap!<br>

Batasan :<br>
Nilai yang dijadikan argumen pada fungsi <b>sleep()</b> adalah satu detik.<br>
Masukkan jumlah'nya satu dan berupa bilangan bulat.<br>
Masukkan adalah batas dari perulangan tersebut.<br>
Setelah perulangan selesai program menampilkan waktu eksekusi pemrosesan sekuensial dan paralel.<br>

Contoh <i>input</i> :<br>
```3```<br>

Contoh <i>Output</i> :<br>
```
Sekuensial
1 Ganjil - ID proses **** 
2 Genap - ID proses ****
3 Ganjil - ID proses ****

multiprocessing.Process
1 Ganjil - ID proses ****
2 Genap - ID proses ****
3 Ganjil - ID proses ****

multiprocessing.Pool
1 Ganjil - ID proses ****
2 Genap - ID proses ****
3 Ganjil - ID proses ****

Waktu eksekusi sekuensial : ** detik
Waktu eksekusi multiprocessing.Process : ** detik
Waktu eksekusi multiprocessing.Pool : ** detik
```
