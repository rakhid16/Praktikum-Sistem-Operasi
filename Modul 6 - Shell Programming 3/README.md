<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>

## Array

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
      
      #deklarasi array compound assignment
      distroLinuxDesktop=('BlankOn' 'Ubuntu' 'Debian' 'ArchLinux' 'LinuxMint')
      distroLinuxServer=('UbuntuServer' 'CentOS' 'FedoraServer')

      #cara mengambil nilai array
      echo ${distroLinuxDesktop[*]}
      echo ${distroLinuxServer[*]}
      ```
     
   *  Output - 1 :

<p align="center"><img src="https://i.imgur.com/M4kip2M.jpg" width=400 height=300></p>

### Array [Explicit Declaration] :

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

   *  Output - 2 :

<p align="center"><img src="https://i.imgur.com/M4kip2M.jpg" width=400 height=300></p>

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

   *  Output - 3 :

<p align="center"><img src="https://i.imgur.com/M4kip2M.jpg" width=400 height=300></p>


  
  
