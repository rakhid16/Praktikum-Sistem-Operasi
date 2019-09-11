<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>
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

<p align=justify>&emsp;&emsp;&emsp;Angka <b>1</b> adalah jumlah dari berkas tersebut. Apabila jumlahnya lebih dari satu maka pastikan itu adalah sebuah direktori/<i>folder</i>. Kemudian ada tulisan <b>ikal ikal</b>, <b>ikal</b> yang pertama(sebelah kiri) adalah <i>owner</i> dari berkas tersebut sedangkan <b>ikal</b> yang kedua(sebelah kanan) adalah sebuah <i>group</i> yang menampung <i>owner</i> <b>ikal</b>. 19 adalah ukuran berkas tersebut. Sep 7 14:38 adalah tanggal terakhir berkas tersebut dimodifikasi(diedit). Lalu tulisan paling kiri adalah nama beserta ekstensi dari berkas tersebut.</p>

Mari kita buktikan apakah berkas <b>belajar.sh</b> memang tidak bisa tereksekusi atau tidak :
<img src="http://i.imgur.com/Ch8WoyK.png">

<p align=justify>&emsp;&emsp;&emsp;Untuk mengeksekusi berkas .sh yang mengikuti kaidah hak akses berkas kita gunakan <b>./nama_berkas.sh</b> sehingga perintah <b>bash nama_berkas.sh</b> atau <b>sh nama_berkas.sh</b> tidak digunakan karena nantinya pasti bisa tereksekusi. Yang jadi pertanyaannya sekarang adalah "<i>Bagaimana saya bisa mengubah hak akses suatu berkas?</i>". Caranya mudah cukup dengan menggunakan perintah <b>chmod</b> dengan kombinasi angka 4, 2, dan 1. Maksudnya Seperti ini :</p>

r = 4 (<i>read</i>-dibolehkan membaca berkas)<br>
w = 2 (<i>write</i>-dibolehkan mengedit berkas)<br>
x = 1 (<i>executable</i>-dibolehkan mengeksekusi berkas <i>binary</i>)<br>

Berikut adalah hasil eksekusi perintah chmod dan kombinasi angka untuk merubah hak akses sebuah berkas
<img src="http://i.imgur.com/DSIAmAS.png">
<p align=justify>&emsp;&emsp;&emsp;Setelah perintah <b>chmod</b> terdapat tiga angka yang masing-masing melambangkan hak akses untuk <i>owner,group,other</i>. Dapat diperhatikan jika hak akses tiap berkas berubah ubah tergantung kombinasi angka yang digunakan. Angka 7 itu berasal dari 1+2+4, angka 6 berasal dari 4+2, dan kombinasi semisalnya.</p>

Pembuatan <i>user</i> baru dengan terminal :
<img src="https://i.imgur.com/Yt5i3xF.png">
Caranya dengan menulis perintah <b>sudo adduser nama_user</b><br>

Cek <i>user(s)</i> yang ada pada sistem operasi :
<p align="center"><img src="https://i.postimg.cc/g2YBkdhG/1.png"></p>

<p align="center"><img src="https://i.postimg.cc/Ghrkzh2H/2.png"></p>
<p align="center"><b>note</b> : cat /etc/passwd</p>

<p align="center"><img src="https://i.imgur.com/Q5mSRDM.png"></p>

<p align="center"><img src="http://i.imgur.com/eogPw8X.pngw"></p>

<p align="center"><img src="http://i.imgur.com/StUR8bq.png"></p>

## Soal Latihan
Buat dua <i>user</i> pada sistem operasi anda kemudian buatlah sebuah berkas <b>.txt</b> dari <i>user</i> pertama, dengan ketentuan :<br>
1. Berkas <b>.txt</b> bisa dibaca dan di-<i>edit</i> oleh <i>user</i> pertama.<br>
2. <i>User</i> kedua hanya bisa membaca berkas tersebut.
