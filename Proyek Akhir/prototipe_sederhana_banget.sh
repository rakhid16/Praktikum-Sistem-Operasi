while true
do
   clear
   echo "Tugas Proyek Akhir Sistem Operasi Mantul"

   echo "1. Bikin Folder baru"
   echo "2. Manipulasi hak akses berkas"
   echo "3. Buka firefox"
   echo "4. Jalankan Program python"
   echo "5. Keluar program"
   read pilih
   clear

   if [ $pilih == 1 ]
   then
      echo "Nama Folder'nya apa?"
      read nama_folder
      mkdir $nama_folder

      echo "Oke! Folder $nama_folder sudah jadi!"
      echo "Cek keberadaan folder?(y/t)"
      read cek_folder

      if [ $cek_folder == y ]
      then
         ls -l
      fi
      
      if [ $cek_folder != y ]
      then
         echo "Okd!"
      fi
      read
   fi

   if [ $pilih == 2 ]
   then
      ls -l

      echo "\nBerkas mana nih yang mau diubah hak akses nya?"
      read ubah_akses

      echo "Oke anda memilih $ubah_akses"
      sudo chmod 777 $ubah_akses
      clear

      echo "Oke kelar"
      ls -l
      read
      clear
   fi

   if [ $pilih == 3 ]
   then
      firefox
   fi

   if [ $pilih == 4 ]
      then
         echo "bikin dulu program'nya!"
         echo "nama file'nya apa nih? : "
         read nama_file_python
         nano $nama_file_python

         echo "Oke file Python udah jadi, ini hasil eksekusi'nya"
         python3 $nama_file_python
         read
         clear
   fi

   if [ $pilih == 5 ]
      then
      exit
   fi

done