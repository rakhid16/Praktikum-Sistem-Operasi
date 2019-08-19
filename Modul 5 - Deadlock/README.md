<p align="right">
بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>
<p align=center>
<img src="https://i.imgur.com/HsGBZos.jpg" height=400 width=300>
</p>

<p align=justify>&emsp;&emsp;&emsp;<i>Deadlock</i> merupakan sebuah situasi dimana dua proses atu lebih membutuhkan lebih dari satu sumber daya(<i>resource</i>) memori dari  sebuah  komputer  dan  masing-masing  proses  telah  mendapat akses ke salah satu dari sumber daya tersebut serta tidak mau melepaskannya sebelum ia mendapat sumber daya yang lain dan menyelesaikan tugasnya. Contoh : Dua proses yang  sama-sama  membutuhkan mesin cetak untuk  menyelesaikan  tugasnya.  Masing-masing proses sudah memegang salah satu sumber daya dan saling menunggu proses yang lain untuk melepaskan sumber dayanya.</p>
<p align=justify>&emsp;&emsp;&emsp;Jika di dalam bahasa pemrograman, situasi deadlock dapat diilustrasikan dengan kondisi looping (perulangan) yang tak kunjung usaiatau yang biasa disebut dengan infinite loop.Ada empat kondisi yang harus terpenuhi agar terjadi deadlock, yaitu :<br>
-Kondisi mutual exclusion, yaitu setiap resourcediberikan pada tepat satu proses pada waktu tertentu.
-Kondisi hold & wait, yaitu proses yang sedang memegang sebuah resourceboleh meminta resource yang lain.<br>
-Tidak  ada  kondisi pre-emption. Resource yang  sedang  memegang  digunakan oleh sebuah proses tidak dapat diambil secara paksa, tetapi harus dilepas secara eksplisit oleh proses yang sedang memegangnya.<br>
-Kondisi tunggu yang melingkar. Harus ada sebuah rantai melingkar dari dua atau lebih proses yang sedang dipegang oleh proses yang lain dalam rantai tersebut.</p>
<p align=justify>&emsp;&emsp;&emsp;Secara umum ada 4 strategi untuk menangani deadlock, yaitu:<br>
Mengabaikan permasalahan (The Ostrich Algorithm).<br>
Deteksi dan pemulihan (recovery).<br>
Pencegahan, dengan meniadakan salah satu dari 4 kondisi deadlock.<br>
Pengaokasian resource yang efisien.
</p>
