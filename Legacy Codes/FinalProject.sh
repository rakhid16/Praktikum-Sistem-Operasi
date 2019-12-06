#!/bin/bash
lagi='y'
while  [ $lagi == 'y' ] || [ $lagi == 'Y' ];
do
   clear
   echo "PROGRAM PEMBELIAN CAMILAN TOKO OLEH-OLEH ";
   echo "           DAPUR TIARA SNACK      "
   echo "=======================================";
   echo "1. PEMBELIAN CAMILAN     ";
   echo "2. LIHAT DATA TERAKHIR PEMBELIAN ";
   echo "3. KELUAR       ";
   echo "=======================================";
   read -p "Pilihan anda [1-3] :" pil;
   echo "=======================================";

case $pil in 1)

       clear;
   echo "PROGRAM PEMBELIAN CAMILAN TOKO OLEH-OLEH ";
   echo "           DAPUR TIARA SNACK      "
   echo "=======================================";
   echo "a. VARIAN MANIS     ";
   echo "b. VARIAN GURIH     ";
   echo "c. VARIAN PEDAS     ";
   echo "d. KEMBALI MENU AWAL  "
   echo "=======================================";
   read -p "Pilihan anda [a-d] :" pill;
   echo "=======================================";


    case $pill in a)
        clear;
       echo "|=====================================|";
       echo "|       MENU HARGA CAMILAN MANIS      |";
       echo "|=====================================|";
       echo "|1. KRIPIK PISANG     RP 10.000       |";
       echo "|2. SOES COKLAT       RP 20.000       |";
       echo "|3. JETZ              RP 8.000        |";
       echo "|4. EMPING MANIS      RP 12.000       |";
       echo "|=====================================|";
       echo -n "Masukan nama anda                 :";
       read nama 
       echo -n "Masukan alamat anda               :";
       read alamat
       echo -n "Masukan nomor camilan (1-4)    :";
       read manis
       echo -n "Masukan jumlah camilan yang di beli : "
       read jum
       echo "=====================================";

       
       if [ $manis -eq 1 ];    then kelas="KRIPIK PISANG";
       harga=10000;
       let total=jum*harga;

       
       elif [ $manis -eq 2 ]; then kelas="SOES COKLAT";
       harga=20000;
       let total=jum*harga; 

       
       elif [ $manis -eq 3 ]; then kelas="JETZ";
       harga=8000;
       let total=jum*harga;


       elif [ $manis -eq 4 ]; then kelas="EMPING MANIS";
       harga=12000;
       let total=jum*harga;

       else
       echo "Sorry, tidak tersedia"
       exit 1
       fi

;; 
b)
clear;
           
       
       echo "|=====================================|";
       echo "|        MENU HARGA CAMILAN GURIH     |";
       echo "|=====================================|";
       echo "|1. KRIPIK USUS             RP 10.000 |";
       echo "|2. RAMBAK                  RP 20.000 |";
       echo "|3. KRUPUK TENGGIRI         RP 10.000 |";
       echo "|4. KULIT AYAM              RP 25.000 |";
       echo "|=====================================|";
       echo -n "Masukan nama anda                 :";
       read nama 
       echo -n "Masukan alamat anda               :";
       read alamat
       echo -n "Masukan nomor camilan (1-4)    :";
       read gurih
       echo -n "Masukan jumlah camilan yang di beli : "
       read jum
       echo "=====================================";

       if [ $gurih -eq 1 ];    then kelas="KRIPIK USUS";
       harga=10000;
       let total=jum*harga;


       elif [ $gurih -eq 2 ]; then kelas="RAMBAK";
       harga=20000;
       let total=jum*harga; 


       elif [ $gurih -eq 3 ]; then kelas="KRUPUK TENGGIRI";
       harga=10000;
       let total=jum*harga;


       elif [ $gurih -eq 4 ]; then kelas="KULIT AYAM";
       harga=25000;
       let total=jum*harga;

       else
       echo "Sorry, tidak tersedia"
       exit 1
       fi

;; 
c)
  clear;     
       echo "|=====================================|";
       echo "|        MENU HARGA CAMILAN PEDAS     |";
       echo "|=====================================|";
       echo "|1. MAKARONI RUJAK      RP 10.000     |";
       echo "|2. STIK BALADO         RP 10.000     |";
       echo "|3. EMPING PEDAS        RP 12.000     |";
       echo "|4. KRIPIK PISANG PEDAS RP 10.000     |";
       echo "|=====================================|";
       echo -n "Masukan nama anda                 :";
       read nama 
       echo -n "Masukan alamat anda               :";
       read alamat
       echo -n "Masukan nomor camilan (1-4)    :";
       read pedas
       echo -n "Masukan jumlah camilan yang di beli : "
       read jum
       echo "=====================================";


       if [ $pedas -eq 1 ];    then kelas="MAKARONI RUJAK";
       harga=10000;
       let total=jum*harga;


       elif [ $pedas -eq 2 ]; then kelas="STIK BALADO";
       harga=10000;
       let total=jum*harga; 


       elif [ $pedas -eq 3 ]; then kelas="EMPING PEDAS";
       harga=12000;
       let total=jum*harga;


       elif [ $pedas -eq 4 ]; then kelas="KRIPIK PISANG PEDAS";
       harga=10000;
       let total=jum*harga;


       else
       echo "Sorry, tidak tersedia"
       exit 1
       fi

;; 
esac
;;

 2)

       clear;
       echo "       DATA PEMBELI CAMILAN";
       echo "|====================================|";
       echo " NAMA        : $nama                  ";
       echo " ALAMAT      : $alamat                ";
       echo " CAMILAN     : $kelas                 ";
       echo " JUMLAH      : $jum                   ";
       echo "|====================================|";
       echo " TOTAL BAYAR : $total                 ";
       echo "|====================================|";
       echo
echo -n "yakin dengan belanjaan anda? jika ya tekan(y) untuk ke menu awal, jika tidak tekan (t) untuk akhiri (y/t) :";
read lagi;


;;

3)
printf "\n"
echo
echo
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Terima kasih telah mampir slurr"
echo "====================================";

echo "SELAMAT MENIKMATI BELANJAAN ANDA"
echo "====================================";

echo "SEMOGA HARI-HARI MU MENYENANGKAN"
echo "====================================";
exit 1

esac
done
