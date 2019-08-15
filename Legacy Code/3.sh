clear
i=0
declare -a nama
declare -a npm
declare -a jur

while :;
do
 echo -e "Menu : \n\n1. Input\n2. View\n3. Search\n4. Exit\n"
 echo -n "Masukkan pilihan : "
 read pilih

 if (("$pilih" == 1));   # INPUT DATA
 then
  clear
  echo -n "Masukkan Nama    : "
  read nama[$i]
  echo -n "Masukkan NPM     : "
  read npm[$i]
  echo -n "Masukkan Jurusan : "
  read jur[$i]
  i=`expr $i + 1`
  clear

 elif (("$pilih" == 2));   # TAMPILKAN DATA
 then
  if (( i == 0))
  then
   clear
   echo "Tidak ada data yang dapat ditampilkan"
   read
   clear
  else
   clear
   echo -e "Data yang telah dimasukkan : \n"
   for (( q=0; q<i;q++  ))
   do
    echo -e "Data ke $[q+1]\nNama    : ${nama[q]}\nNPM     : ${npm[q]}\nJurusan : ${jur[q]}\n"
   done
   read
   clear
  fi

 elif (("$pilih" == 3));   # CARI DATA
 then
  if (( i == 0))
  then
   clear
   echo "Tidak ada data yang dapat dicari"
   read
   clear
  else
   clear
      echo -n "Masukkan NPM mahasiswa yang ingin dicari : "
      read cari

      k=0
      while (($cari != ${npm[$k]}))
      do
    k=`expr $k + 1`
      done

   if (($cari == ${npm[$k]}));
   then
    echo -e "\nNama    : ${nama[k]}\nNPM     : ${npm[k]}\nJurusan : ${jur[k]}"

   else
    clear
    echo -e "Data tidak ditemukan"
   fi
   read
      clear
  fi

 elif (( "$pilih" != 4 && "$pilih" != 2 && "$pilih" != 1 && "$pilih" !=       3  ));   # APABILA MEMBERIKAN MASUKAN SELAIN 1-4
 then
  echo "Pilihan tidak valid"
  read
  clear

 else    # KELUAR PROGAM
  exit
 fi
done
