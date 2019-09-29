<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>

## Perulangan

* <b>Perulangan (Loop)</b> merupakan struktur program yang dapat digunakan untuk melakukan statement yang sama secara terus-menerus dengan cara yang efisien dan efektif selama kondisi tersebut terpenuhi (bernilai true).
* Macam-macam perulangan :
1. <b>While loop</b>
    * While loop digunakan untuk mengeksekusi serangkaian perintah berulang kali selama suatu kondisi terpenuhi.
    
    * Syntax :

       ```
       while kondisi
       do
          perintah 
       done
       ```
     * Contoh :

       ```bash
       #!/bin/bash
       a=0

       while [ $a -lt 10 ]
       do
         echo $a
         a=$((a + 2))
       done
       ```  
    
     * Output :
    
<p align="center"><img src="https://i.imgur.com/M4kip2M.jpg" width=400 height=300></p>
   
2. <b>For Loop</b>
   * For loop digunakan untuk mengulang serangkaian perintah untuk setiap item pada daftar.

   *  Syntax :

      ```
      for variabel in daftarItem
      do
         perintah 
      done
      ```
   *  Contoh :

      ```bash
      #!/bin/bash

      for angka in 1 2 3 4 5
      do
         echo $angka
      done
      ```
   *  Selain itu, bisa ditulis seperti ini :

      ```bash
      #!/bin/bash

      for ((angka=1; angka<=5; angka=angka+1))
      do
         echo $angka
      done
      ```
   *  Output :
   
<p align="center"><img src="https://i.imgur.com/kCIjxy1.jpg" width=400 height=300></p>
   
3. <b>Select Loop</b> 
      * Select Loop digunakan ketika kita ingin membuat sebuah program dengan beberapa daftar pilihan yang bisa dipilih oleh user, misalnya daftar menu.

      * Syntax :

         ```
         select variabel in daftarItem
         do
            perintah
         done
         ```

      * Contoh :

         ```bash
         #!/bin/bash

         select minuman in teh kopi air jus susu semua gaada
         do
           case $minuman in
             teh|kopi|air|semua) 
               echo "Maaf, habis"
               ;;
             jus|susu)
               echo "Tersedia"
             ;;
             gaada) 
               break 
             ;;
             *) echo "Tidak ada di daftar menu" 
             ;;
           esac
         done
         ```
         
      * Output :
      
<p align="center"><img src="https://i.imgur.com/4HQHLMZ.jpg" width=400 height=300></p>

4. <b>Until Loop</b> 
      * Berbeda dengan while, until loop digunakan untuk mengeksekusi serangkaian perintah berulang kali sampai suatu kondisi terpenuhi.

      * Syntax :

         ```
         until kondisi
         do
            perintah
         done
         ```

      * Contoh :
          
         ```bash
         #!/bin/bash

         a=0

         until [ ! $a -lt 10 ]
         do
            echo $a
            a=$((a + 2))
         done
         ```
         
      * Output
      
<p align="center"><img src="https://i.imgur.com/kHjZLfj.jpg" width=400 height=300></p>

## Materi ++
*  <b> Materi Tambahan </b>
<p><a href="https://github.com/Rakhid16/Praktikum-Sistem-Operasi/tree/master/Modul%202%20-%20Shell%20Programming%201"> Materi Tambahan Percabangan (Case ... Esac) </a></p>

## Soal Latihan
* Buatlah program perulangan yang menerapkan beberapa konsep pemrograman bash seperti diatas dengan ketentuan sbb!
   -  user menginputkan acuan bilangan
   -  mencetak bilangan positif kelipatan ganjil 3 5 7 9 dst dari bilangan acuan
   
   Contoh Output :
   
   ```
   Input : 15
   
   15
   13
   11
   9
   7
   5
   3
   1
   ```
