<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>

# Array

<p align="center"><img src="https://blog.eduonix.com/wp-content/uploads/2015/09/arrays-in-linux-shell-scripting.jpg" width=650 height=300></p>


* <p align=justify>Array merupakan kumpulan variabel dengan tipe sejenis, yang  disimpan  ke  dalam  variabel  dengan  nama  yang sama,  dengan  memberi indeks  pada  variabel  untuk  membedakan  antara  yang  satu  dengan yang lain. Array ialah salah satu hal yang cukup penting dalam bahasa pemrograman, bisa dibayangkan array ini sebagai tumpukan buku - buku dimeja belajar.</p>

* Macam - Macam deklarasi array

    * Indirect Declaration 
      <p>Dengan menetapkan nilai dalam indeks tertentu dari variabel array.</p>

      ```
      Array_name[index]=value
      ```

    * Explicit Declaration
      <p>Dengan mendeklarasikan array kemudian menetapkan nilainya.</p>

      ```
      declare -a Array_name
      ```

    * Compound Assignment
      <p>Mendeklarasikan array dengan sekelompok nilai.</p>

      ```
      Array_name=([1]=10 [2]=20 [3]=30)
      ```
      
### Array [Indirect Declaration] :

   *  Contoh :

      ```bash
      #!/bin/bash
      
      # deklarasi array indirect declaration
      distroLinuxDesktop[0]=BlankOn
      distroLinuxDesktop[1]=Ubuntu
      distroLinuxDesktop[2]=Debian
      distroLinuxDesktop[3]=ArchLinux
      distroLinuxDesktop[4]=LinuxMint

      distroLinuxServer[0]=UbuntuServer
      distroLinuxServer[1]=CentOS
      distroLinuxServer[2]=FedoraServer

      # cara mengambil nilai array
      echo ${distroLinuxDesktop[*]}
      echo ${distroLinuxServer[*]}
      ```
     
   *  Output :

<p align="center"><img src="https://imgur.com/OP5AqFr.png" width=400 height=300></p>

### Array [Explicit Declaration] :

   *  Contoh :

      ```bash
      #!/bin/bash
      
      # deklarasikan array [Explicit Declaration] :
      declare -a angka    

      #clear
      i=0;
      while [ $i -le 4 ];
      do
         let isi=$i*2;
         angka[$i]=$isi;
         let i=$i+1;
      done

      #tampilkan semua elemen array
      #dengan indexnya berisi "*" atau "@"
      echo ${angka[@]}  
      ```

   *  Output :

<p align="center"><img src="https://imgur.com/3yTljjv.png" width=400 height=300></p>

### Array [Compound Assignment] :

   *  Contoh :

      ```bash
      #!/bin/bash
      
      #deklarasi array compound assignment
      distroLinuxDesktop=('BlankOn' 'Ubuntu' 'Debian' 'ArchLinux' 'LinuxMint')
      distroLinuxServer=('UbuntuServer' 'CentOS' 'FedoraServer')

      #cara mengambil nilai array
      echo ${distroLinuxDesktop[*]}
      echo ${distroLinuxServer[*]}
      ```

   *  Output :

<p align="center"><img src="https://i.imgur.com/qFkqOWU.png" width=400 height=300></p>

<br>
<br>

## Array Multi Dimensi

* <p align=justify>Didalam Script Bash, Bash tidak memiliki array multi dimensi. Dikarenakan Bash menyediakan variabel array terindeks dan asosiatif satu dimensi. Variabel apa saja dapat digunakan sebagai array yang diindeks, mendeklarasikan builtin akan secara eksplisit mendeklarasikan array, dll. Tetapi dapat mensimulasikan efek yang agak mirip dengan multi array asosiatif dimensi, sbb :</p>

   *  Contoh :

      ```bash
      #!/bin/bash

      # deklarasi array2dimensi " : " pemisah nilai (array [3][4])
      array2dimensi="1.1:1.2:1.3:1.4 2.1:2.2:2.3:2.4 3.1:3.2:3.3:3.4"

      # mengakali multi dimensi -> dengan pemisah dimensi "tr :"
      function dimensiBaris {
          for baris in $array2dimensi
          do
              dimensiKolom `echo $baris | tr : " "`
          done
      }

      function dimensiKolom {
          for kolom in $*
          do
              echo -n $kolom "  "
          done
          echo
      }

      # melakukan pemanggilan fungsi
      dimensiBaris
      ```
      
   *  Output :

<p align="center"><img src="https://imgur.com/xO0Leq3.png" width=400 height=300></p>

<br>
<br>

## Soal Latihan
* Buatlah program array yang dapat menghitung nilai IPK mahasiswa yang menerapkan beberapa konsep pemrograman bash seperti diatas dengan ketentuan sbb!
   -  user input data arrayIPSMahasiswa[index]
   -  IPK = (jumlah nilai IPS) / (jumlah data IPS) 
   
   Contoh Output :
   
   ```bash
   Input : 3
   4
   2
   3
   
   IPS mhs = 9 / 3
   IPK mhs = 3
   ```
