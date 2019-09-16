<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>

## Manipulasi Hak Akses Berkas
<p align=justify>&emsp;&emsp;&emsp;Setiap berkas pada sistem operasi berbasis Linux mempunyai atribut yang menjelaskan hak akses <i>user</i> dan <i>group</i> terhadap berkas tersebut, yaitu hak akses untuk <i>owner</i>/<i>user</i>(pemilik berkas atau yang membuat berkas), <i>group</i>(grup yang berisi <i>user</i> tertentu), dan <i>other</i>(semua <i>user</i> dan grup). Hak akses pada sistem operasi berbasis Linux sama dengan Windows yaitu hak akses untuk membaca(<i>read</i>), memodifikasi(<i>write</i>),dan mengeksekusi berkas (<i>eXecutable</i>) atau yang lebih populer disebut R-W-X.</p>
Tiga atribut yang menerangkan akan hak akses ke  file tersebut yaitu :<br>

1. <i>Owner Permission</i> : Hak akses terhadap pemilik/pembuat berkas tersebut.<br>
2. <i>Group Permission</i> : Hak akses suatu <i>group</i> dan semua <i>user</i> di dalam <i>group</i> tersebut terhadap berkas tersebut.<br>
3. <i>Other(world) Permission</i> : Hak akses untuk semua <i>user</i> yang ada di dalam sistem(baik <i>owner</i>, <i>group</i> dan <i>user</i> lain yang ada pada sistem operasi tersebut) terhadap <i>berkas</i> tersebut.<br>

Untuk melihat <i>file permission</i> kalian bisa menggunakan perintah ```ls -l``` dan hasilnya akan terlihat seperti dibawah ini :<br>
<p align=center>
<img src="http://i.imgur.com/zo4K1iV.png">
</p>
Mari kita ambil satu berkas untuk dipelajari :
<img src="http://i.imgur.com/izcRPYg.png">
<p align=justify>&emsp;&emsp;&emsp;Hak akses pada gambar di atas adalah <b>-rw-rw-r--</b>. Apabila semua huruf r dan w diganti dengan tanda <b>-</b> maka jumlah dari <b>-</b> adalah 10. Di mana <b>-</b> paling kiri sendiri adalah penunjuk apakah itu sebuah direktori(yang dilambangkan dengan <b>d</b>) atau hanya sekadar berkas biasa(yang dilambangkan dengan <b>-</b>). Nah setelah itu masih terdapat sembilan slot, slot ini(dari kiri ke kanan) itu merupakan hak akses untuk <i>owner</i>, <i>group</i>, dan <i>other</i>. Contohnya saja dari gambar tersebut hak akses untuk <i>owner</i> adalah <b>rw-</b> yang berarti <i>owner</i> hanya dapat <i>read</i>(membaca) & <i>write</i>(mengedit) sebuah berkas. Kemudian hak akses untuk <i>group</i> juga sama yaitu <b>rw-</b> yang berarti sebuah <i>group</i> hanya dapat <i>read</i>(membaca) & <i>write</i>(mengedit) sebuah berkas. Hak akses untuk <i>other</i> hanyalah <b>r--</b> yang berarti hanya dapat melihat/membaca sebuah berkas saja.</p>

<p align=justify>&emsp;&emsp;&emsp;Angka <b>1</b> adalah jumlah dari berkas tersebut. Apabila jumlahnya lebih dari satu maka pastikan itu adalah sebuah direktori/<i>folder</i>. Kemudian ada tulisan <b>ikal ikal</b>, <b>ikal</b> yang pertama(sebelah kiri) adalah <i>owner</i> dari berkas tersebut sedangkan <b>ikal</b> yang kedua(sebelah kanan) adalah sebuah <i>group</i> yang menampung <i>owner</i> <b>ikal</b>. 19 adalah ukuran berkas tersebut. Sep 7 14:38 adalah tanggal terakhir berkas tersebut dimodifikasi(diedit). Lalu tulisan paling kanan adalah nama beserta ekstensi dari berkas tersebut.</p>

Mari kita buktikan apakah berkas <b>belajar.sh</b> memang tidak bisa tereksekusi atau tidak :
<img src="http://i.imgur.com/Ch8WoyK.png">

<p align=justify>&emsp;&emsp;&emsp;Untuk mengeksekusi berkas .sh yang mengikuti kaidah hak akses berkas kita gunakan <b>./nama_berkas.sh</b> sehingga perintah <b>bash nama_berkas.sh</b> atau <b>sh nama_berkas.sh</b> tidak digunakan karena nantinya pasti bisa tereksekusi. Yang jadi pertanyaannya sekarang adalah "<i>Bagaimana saya bisa mengubah hak akses suatu berkas?</i>". Caranya mudah cukup dengan menggunakan perintah <b>chmod</b> dengan kombinasi angka 4, 2, dan 1. Maksudnya Seperti ini :</p>

r = 4 (<i>read</i>-Mengizinkan membaca berkas)<br>
w = 2 (<i>write</i>-Mengizinkan mengedit berkas)<br>
x = 1 (<i>executable</i>-Mengizinkan mengeksekusi berkas <i>binary</i>)<br>

### Detail Akses Berkas
<img src="https://i.postimg.cc/QdQLznHV/konversi-hak-akses.png" width="220px" height="100px" >

| Nilai	|  Arti  | 
| :-: | :--------:|
| 0	| \- \- \- |
| 1	| \- \- x |
| 2	| \- w \- |  
| 3	| \- w x |
| 4	| r \- \- |
| 5	| r \- x |
| 6	| r w \- |
| 7	| r w x |

Berikut adalah hasil eksekusi perintah chmod dan kombinasi angka untuk merubah hak akses sebuah berkas :
<img src="http://i.imgur.com/DSIAmAS.png">
<p align=justify>&emsp;&emsp;&emsp;Setelah perintah <b>chmod</b> terdapat tiga angka yang masing-masing melambangkan hak akses untuk <i>owner,group,other</i>. Dapat diperhatikan jika hak akses tiap berkas berubah ubah tergantung kombinasi angka yang digunakan. Angka 7 itu berasal dari 1+2+4, angka 6 berasal dari 4+2, dan kombinasi semisalnya.</p>

### Management Users

* Pembuatan <i>user</i> baru dengan terminal :
<img src="https://i.imgur.com/Yt5i3xF.png">
Caranya dengan menulis perintah <b>sudo adduser nama_user</b><br><br>

* Cek <i>user(s)</i> yang telah dibuat :
<img src="https://i.postimg.cc/T3nYrt0R/1.png">
Caranya dengan menulis perintah <b>cd /home/</b> kemudian <b>ls</b><br><br>

* Menghapus user yang telah dibuat :
<img src="https://i.postimg.cc/tRSmRyh6/2.png">
Caranya dengan menulis perintah <b>sudo deluser --remove-home nama_user</b><br>

### Management Groups

* Membuat <i>group</i> dan menambahkan <i>user</i> ke dalam <i>group</i> :
<img src="https://i.imgur.com/Q5mSRDM.png">
Perintah <b>sudo addgroup nama_grup</b> untuk membuat grup<br>
Perintah <b>sudo adduser nama_user nama_grup</b>
<br><br>


* Melihat <i>group(s)</i> yang diikuti oleh <i>user</i> dan masuk ke dalam sebuah <i>user</i> "
<img src="http://i.imgur.com/eogPw8X.png">
Perintah <b>groups nama_user</b> untuk melihat <i>group(s)</i> yang diikuti oleh <i>user</i><br>
Perintah <b>su nama_user</b> untuk masuk ke dalam <i>user</i> tersebut. Untuk keluar dari sebuah <i>user</i> cukup mengetikkan perintah <b>exit</b>
<br><br>


* Mengubah <i>user/owner</i> dan <i>group</i> dari sebuah berkas :
<img src="http://i.imgur.com/StUR8bq.png">
Perintah <b>sudo chown nama_user berkas</b> untuk mengubah owner dari suatu berkas<br>
Perintah <b>sudo chgrp nama_group</b> untuk mengubah <i>group</i> dari sebuah berkas.
<br><br>


* Menghapus <i>group</i>
<img src="https://i.postimg.cc/85JpcfyX/111.png">
Printah <b>sudo delgroup nama_group</b><br>


## Soal Latihan
Buat dua <i>user</i> pada sistem operasi anda kemudian buatlah sebuah berkas <b>.txt</b> dari <i>user</i> pertama, dengan ketentuan :<br>
1. Berkas <b>.txt</b> bisa dibaca dan di-<i>edit</i> oleh <i>user</i> pertama.<br>
2. <i>User</i> kedua hanya bisa membaca berkas tersebut.
