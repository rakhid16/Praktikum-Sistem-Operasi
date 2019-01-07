clear
i=0
declare -a nama
declare -a kode
declare -a lahir
declare -a mati
declare -a agama

cetak()
{
	echo -e "Data yang telah dimasukkan : \n"			
		for (( q=0; q<i;q++  ))
		do
			echo -e "Data ke $[q+1]\nNama Mayat            : ${nama[q]}\nNomor Kematian        : ${kode[q]}\nTempat, tanggal lahir : ${lahir[q]}\nTempat, tanggal wafat : ${mati[q]}\nAgama                 : ${agama[q]}\n"
		done
}

while :;
do
	echo -e "Sistem Informasi Data Mayat pada Tempat Pemakaman Umum\n\n1. Masukkan data mayat\n2. Lihat data mayat\n3. Cari data mayat\n4. Perbarui data mayat\n5. Hapus data mayat\n6. Keluar program\n"
 	echo -n "Masukkan pilihan : "
 	read pilih

 	if (("$pilih" == 1));   # INPUT DATA
 	then 
  		clear
 	 	echo -n "Nama Mayat            : "
 	 	read nama[$i]
 	 	echo -n "Nomor Kematian        : "
  		read kode[$i]
	  	echo -n "Tempat, tanggal lahir : "
  		read lahir[$i]
		echo -n "Tempat, tanggal wafat : "
  		read mati[$i]
	  	echo -n "Agama                 : "
  		read agama[$i]
 	 	i=`expr $i + 1`
		
		if (("$i" >= 2))
		then
			for (( g=0; g<i-1; g++ ))
			do
	   			if (( "${kode[$i-1]}" == "${kode[g]}" ))
				then
		     			echo -e "\nNomor kematian ini sudah terdaftar!\nMasukan nomor yang lain!"
					read
					unset nama[$i-1]
					unset kode[$i-1]
					unset lahir[$i-1]
					unset mati[$i-1]
					unset agama[$i-1]
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
   			cetak
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
      			echo -n "Masukkan nomor kematian yang ingin dicari : "
      			read cari
   
      			k=0
      			while (($cari != ${kode[$k]}))
      			do
    				k=`expr $k + 1`
      			done
      
   			if (($cari == ${kode[$k]}));
   			then
    				echo -e "Nama Mayat            : ${nama[k]}\nNomor Kematian        : ${kode[k]}\nTempat, tanggal lahir : ${lahir[k]}\nTempat, tanggal wafat : ${mati[k]}\nAgama                 : ${agama[k]}\n"   

   			else
    				clear    
    				echo -e "Data tidak ditemukan"
   			fi
   			read
      			clear
  		fi
   
 	elif (("$pilih" != 4 && "$pilih" != 2 && "$pilih" != 1 && "$pilih" != 3 && "$pilih" != 5 && "$pilih" != 6));   # APABILA MEMBERIKAN MASUKAN SELAIN 1-6
 	then
  		echo "Pilihan tidak valid"
  		read
  		clear

	elif (( "$pilih" == 5 ));   # HAPUS DATA
	then
		if (( i == 0))
  		then
   			clear
   			echo "Tidak ada data yang dapat dihapus"
   			read
   			clear
  		else  
   			clear
   			cetak
			echo -n "Masukkan nomor kematian : "
      			read cari
   
      			k=0
      			while (($cari != ${kode[$k]}))
      			do
    				k=`expr $k + 1`
      			done
      
   			if (($cari == ${kode[$k]}));
   			then			
    				unset nama[k]
				unset kode[k]
				unset lahir[k]
				unset mati[k]
				unset agama[k]

				if [[ -z ${kode[k]} ]]
				then
					if (($i == 1))
					then
						i=0
	
					elif (($i == 2))
					then
						for ((f=$k; f<i; f++))
						do
							nama[f]=${nama[$f+1]}
							kode[f]=${kode[$f+1]}
							lahir[f]=${lahir[$f+1]}
							mati[f]=${mati[$f+1]}
							agama[f]=${agama[$f+1]}
						done
						i=`expr $i - 1`

					elif (($i > 2))
					then
						if [[ -n ${kode[$k-1]} ]]
						then
							for (( d=$k; d<i; d++ ))
							do
								nama[d]=${nama[$d+1]}
								kode[d]=${kode[$d+1]}
								lahir[d]=${lahir[$d+1]}
								mati[d]=${mati[$d+1]}
								agama[d]=${agama[$d+1]}
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

	elif (("$pilih" == 4));   # MEMPERBAHARUI DATA
	then
		if (( i == 0))
  		then
   			clear
   			echo "Tidak ada data yang dapat diperbarui"
   			read
   			clear
  		else  
   			clear
			cetak
      			echo -e -n "\nMasukkan nomor kematian yang ingin diperbarui : "
      			read baru
   
      			l=0
      			while (($baru != ${kode[$l]}))
      			do
    				l=`expr $l + 1`
      			done
      
   			if (($baru == ${kode[$l]}));
   			then
				echo -n "Nama Mayat            : "
		 	 	read nama[$l]
			  	echo -n "Tempat, tanggal lahir : "
		  		read lahir[$l]
				echo -n "Tempat, tanggal wafat : "
		  		read mati[$l]
			  	echo -n "Agama                 : "
		  		read agama[$l]

 	 			clear
   			else
    				clear    
    				echo -e "Data tidak ditemukan"
				read
   			fi
      			clear
  		fi
 
 	else    # KELUAR PROGAM
  		exit
 	fi
done
