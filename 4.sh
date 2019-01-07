clear
i=0
declare -a nama
declare -a npm
declare -a jur

while :;
do
 echo -e "Menu : \n\n1. Input\n2. View\n3. Search\n4. Delete\n5. Exit\n"
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

  if (("$i" >= 2))
  then
   for (( g=0; g<i-1; g++ ))
   do
       if (( "${npm[$i-1]}" == "${npm[g]}" ))
    then
          echo -e "\nNPM sudah ada!\nMasukan NPM lain!"
     read
     unset nama[$i-1]
     unset jur[$i-1]
     unset npm[$i-1]
     i=`expr $i - 1`
     break
       fi
   done
  fi
    clear

  elif (("$pilih" == 2));   # TAMPILKAN DATA
  then
    if (( i == 0 ))
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

  elif (("$pilih" != 4 && "$pilih" != 2 && "$pilih" != 1 && "$pilih" != 3       && "$pilih" != 5));   # APABILA MEMBERIKAN MASUKAN SELAIN 1-5
  then
    echo "Pilihan tidak valid"
    read
    clear

 elif (( "$pilih" == 4 ));   # HAPUS DATA
 then
  if (( i == 0))
    then
      clear
      echo "Tidak ada data yang dapat dihapus"
      read
      clear
    else
      clear
   echo -e "Data yang telah dimasukkan : \n"
      for (( q=0; q<i;q++  ))
      do
        echo -e "Data ke $[q+1]\nNama    : ${nama[q]}\nNPM     : ${npm[q]}\nJurusan : ${jur[q]}\n"
      done

   echo -n "Masukkan NPM mahasiswa yang ingin dihapus : "
         read cari

         k=0
         while (($cari != ${npm[$k]}))
         do
        k=`expr $k + 1`
         done

      if (($cari == ${npm[$k]}));
      then
        unset nama[k]
    unset npm[k]
    unset jur[k]

    if [[ -z ${npm[k]} ]]
    then
     if (($i == 1))
     then
      i=0

     elif (($i == 2))
     then
      for ((f=$k; f<i; f++))
      do
       nama[f]=${nama[$f+1]}
       npm[f]=${npm[$f+1]}
       jur[f]=${jur[$f+1]}
      done
      i=`expr $i - 1`

     elif (($i > 2))
     then
      if [[ -n ${npm[$k-1]} ]]
      then
       for (( d=$k; d<i; d++ ))
       do
        nama[d]=${nama[$d+1]}
        npm[d]=${npm[$d+1]}
        jur[d]=${jur[$d+1]}
       done
      fi
      i=`expr $i - 1`
     fi
    fi
      else
        clear
        echo -e "Data tidak ditemukan"
      fi
      read
         clear
    fi

  else    # KELUAR PROGAM
    exit
  fi
done
