<p align="center">
<img src="https://i.imgur.com/mrz6KQC.jpg" width=400 height=200>
</p>
<p align=justify>&emsp;&emsp;&emsp;Bash merupakan penerjemah perintah yang berjalan pada konsol/<i>command line intrepeter</i> di mana si pengguna dapat memberi perintah(<i>command(s)</i>) yang dapat mengakibatkan sesuatu dalam sebuah sistem operasi berubah. Bash juga dapat membaca perintah dari berkas yang disebut skrip. Soal penamaan, Bash adalah singkatan dari <b>Bourne Again Shell</b>. Bash merupakan versi baru dari <b>Bourne Shell</b> yang dikembangkan oleh Steve Bourne. Pemrograman Bash-Shell itu sendiri adalah pengeksekusian kumpulan perintah menggunakan skrip yang ditulis ke dalam bahasa Shell, sehingga dapat dieksekusi oleh sistem operasi. Pada Linux sendiri, penggunaan Bash ini dijalankan melalui Terminal. Terminal adalah sebuah program semacam <i>Command Prompt</i> pada Windows. Berikut adalah perintah dasar dari Bash yang wajib kalian ketahui:</p>

<strong>pwd</strong><br>
<img src="https://i.imgur.com/gD1p5AB.jpg">
<strong>pwd</strong> merupakan singkatan dari <i>parent working directory</i>.<br>
Apabila perintah ini dijalankan maka yang akan keluar adalah direktori yang <i>user</i> akses/gunakan.<br>

ls<br>
<img src="https://i.imgur.com/tZ0tfy3.jpg">
<img src="https://i.imgur.com/fdbgNRU.jpg">

cd<br>
<img src="https://i.imgur.com/qpsMMXl.jpg">

cat(alternatif lain adalah more dan less)<br>
<img src="https://i.imgur.com/NmvXtbW.jpg">

nano<br>
<img src="https://i.imgur.com/kxKpeOc.jpg">

mkdir<br>
<img src="https://i.imgur.com/31GqdYN.jpg">

rm<br>
<img src="https://i.imgur.com/lKqlFlA.jpg">

rmdir<br>
<img src="https://i.imgur.com/iZZSk6J.jpg">
<img src="https://i.imgur.com/1lm23Mx.jpg">

mv<br>
<img src="https://i.imgur.com/QhszljR.jpg">

cp<br>
<img src="https://i.imgur.com/MkFlgju.jpg">

df<br>
<img src="https://i.imgur.com/7vAOTk0.jpg">

top<br>
<img src="https://i.imgur.com/Hisy2iL.jpg">

free<br>
<img src="https://i.imgur.com/U1atX7t.jpg">

python<br>
<img src="https://i.imgur.com/MvFLai5.jpg">

version<br>
<img src="https://i.imgur.com/aVH4kFt.jpg">

whereis<br>
<img src="https://i.imgur.com/1f9urIx.jpg">

which<br>
<img src="https://i.imgur.com/WvLDD4t.jpg">

whatis<br>
<img src="https://i.imgur.com/ECiZDgB.jpg">

locate & find<br>
<img src="https://i.imgur.com/U1q8HEX.jpg">

ping<br>
<img src="https://i.imgur.com/U5qZttP.jpg">

poweroff, untuk <i>shutdown</i> sistem operasi<br>
reboot, untuk me-<i>restart</i> sistem operasi<br>
systemctl suspend, untuk masuk ke dalam mode <i>sleep</i><br>

<i>Commands</i> agar sistem operasi kalian selalu terperbarui :<br>
```bash
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt autoclean
```
Cara memasang perangkat perangkat lunak pada terminal :<br>
.deb<br>
apt based<br>
url<br>
targz, dsb.
#### Soal Latihan:
Dengan menggunakan Terminal, buatlah sebuah direktori bernama "<b>Belajar Bash Dasar</b>" kemudian masuk ke dalam direktori tersebut dan buatlah sebuah skrip Bash sederhana yang dapat menampilkan sebuah keluran seperti di bawah ini:
```bash
Halo dunia!
Ini adalah skrip Bash pertamaku di Linux!
```
