<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>
<p align=justify>&emsp;&emsp;&emsp;Setiap berkas pada sistem operasi berbasis Linux mempunyai atribut yang menjelaskan hak akses <i>user</i> dan <i>group</i> terhadap berkas tersebut, yaitu hak akses untuk <i>owner</i>/<i>user</i>(pemilik berkas atau yang membuat berkas), <i>group</i>(grup yang berisi <i>user</i> tertentu), dan <i>other</i>(semua <i>user</i> dan grup). Hak akses pada sistem operasi berbasis Linux sama dengan Windows yaitu hak akses untuk membaca(<i>read</i>), memodifikasi(<i>write</i>),dan mengeksekusi berkas atau aplikasi(<i>eXecutable</i>) atau yang lebih populer disebut R-W-X.</p>
&emsp;&emsp;&emsp;Pada Unix Like OS (termasuk Linux dan MacOS) setiap file mempunyai 3 atribut yang menerangkan akan hak akses ke  file tersebut yaitu :<br>

1. <i>Owner Permission</i> : Hak akses terhadap pemilik/pembuat berkas tersebut.<br>
2. <i>Group Permission</i> : Hak akses suatu <i>group</i> dan semua <i>user</i> di dalam <i>group</i> tersebut terhadap berkas tersebut.<br>
3. <i>Other(World) Permission</i> : Hak akses untuk semua <i>user</i> yang ada di dalam sistem tersebut(baik <i>owner</i>, <i>group</i> dan <i>user</i> lain yang ada dalam sistem) terhadap <i>file</i> tersebut.<br>

&emsp;&emsp;&emsp;Untuk  melihat  file  permission  kamu  bisa  menggunakan  perintah ```$  ls -l``` dan hasilnya akan terlihat seperti dibawah ini :<br>
<p align=center>
<img src="http://i.imgur.com/zo4K1iV.png">
</p>
<p align=justify>&emsp;&emsp;&emsp;Untuk  merubah  permission  file  atau  folder  di  linux  kamu  bisa  menggunakan  2 cara, yaitu  memasukkan  atribut  angka  dan  huruf  saat  menggunakan  perintah  chmod untuk merubah dan mengatur permission suatu file. Perintah  untuk  mengatur  dan merubah  hak  akses/permission  file  dan  folder  di linux adalah $ sudo chmod permission. Contoh: $ sudo chmod 755 file1 untuk mengatur attribut permission/hak akses file1 menjadi rwxr-xr-x.</p>

<p align=justify>Contoh : # chmod 640 dokumen1–yang artinya mengeset attribut permission file  dengan  nama  dokumen1  sehingga  owner  mempunyai  permission  read-write ,group  mempunyai  permisson  read  dan  other  tidak  mempunyai  permision  apapun terhadap file ini. Digit pertama mewakili permission untuk owner,digit kedua mewakili permission untukgroupdan  digit  ketiga  mewakili  permission  untuk other(world).Adapun  nilai dari masing-masing attribut permission (rwx) adalah:</p>

r= 4 (read /dibolehkan membaca file)<br>
w=2 (write /dibolehkan mengedit-delete file)<br>
x=1 (executable /dibolehkan mengeksekusi file untuk file binary)<br>
t=1 (adalah permission untuk mengeset  sticky bit dan diletakan di digitpertama misal 1640)<br>
s=4 (SUID attribut,agar aplikasi menggunakan user owner berikut permissionnya ketika dijalankan oleh user lain)<br>
g=2 (SGID attribut,agar aplikasi menggunakan group owner berikutpermission nya ketika dijalankan oleh user lain)

<p align=justify>Secara  default  owner/kepemilikan  dari  sebuah  file  adalah  user  dan  group  dari pembuat file tersebut, namun adakalanya kita perlu meyesuaikan kepemilikan/ownner dari  sebuah  file  untuk  kepentingan  konfigurasi  lebih  lanjut,misalnya  sharing  file dengan user lain atau saat penginstallan aplikasi /service. Sebagai  contoh  jika  kita  membuat  file  dengan  nama jajal menggunaan  user masarie(masarie berada di group users) maka hak akses/permision untuk file yang baru kita buat dengan user tersebut akan terlihat seperti dibawah ini :</p>

[masarie@SparkFly ~]$ touch jajal[masarie@SparkFly ~]$ ls -l jajal -rw-r--r--1 masarie users 0 Jul 11 14:25jajal[masarie@SparkFly ~]$
12Pada  contoh  diatas  kepemilikan/owner  dari  file  tersebut  adalah  user masarie(permision read-write)dan permision untuk group dan world adalah read-only(r).<br><br>
  
<img src="https://i.imgur.com/Yt5i3xF.png">
<img src="https://i.imgur.com/Q5mSRDM.png">
<img src="http://i.imgur.com/eogPw8X.pngw">
<img src="https://i.imgur.com/Yt5i3xF.png">

<strong>Soal Latihan:</strong><br>
Buat dua <i>user</i> pada sistem operasi anda kemudian buatlah sebuah berkas <b>.txt</b> dari <i>user</i> pertama, dengan ketentuan :<br>
1. Berkas <b>.txt</b> bisa dibaca dan di-<i>edit</i> oleh <i>user</i> pertama.<br>
2. <i>User</i> kedua hanya bisa membaca berkas tersebut.
