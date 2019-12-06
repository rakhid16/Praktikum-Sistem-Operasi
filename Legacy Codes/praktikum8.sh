#!/bin/bash
#!/bin/ksh
declare -a array
i=0;
lagi='y'
while [ $lagi == 'y' ] || [ $lagi == 'Y' ];
do

echo "=====================================";
echo "            MENU PROGRAM             ";

echo "1. Luas permukaan kubus"
echo "2. Luas permukkaan prisma segitiga"
echo "3. luas permukaan limas persegi"
echo "4. median"
echo "5. keluar"
echo "Pilihan :"
echo "==============================="
read -p "Masukkan pilihan anda [1-5]:" pil;
echo "";

case $pil in
1)
   echo "LUAS PERMUKAAN KUBUS"
   echo -n "masukan sisi"
   read sisikubus;
   let lkubus=$sisikubus*$sisikubus*6;
   let array[$i]=$lkubus;
   echo ${array[$i]}
   let i=$i+1;
   ;;


2)
   echo "LUAS PERMUKAAN PRISMA SEGITIGA"
   echo -n "masukan panjang alas segitiga"
   read palass3;
   echo -n "masukan tinggi alas"
   read talas3;
   echo -n "masukan luas bidang tegak"
   read lbidang;
   let lalas3=$palass3*$talas3/2;
   let lprisma3=2*$lalas3+3*$lbidang;
   let array[$i]=$lprisma3;
   echo ${array[$i]}
 let i=$i+1;
   ;;
3)
    echo "LUAS PERMUKAAN LIMAS PERSEGI"
    echo -n "masukan sisi "
    read slimas;
    echo -n "masukan tinggi limas "
    read tlimas;
    let llimas=$slimas*$slimas*$tlimas/3;
    let array[$i]=$llimas;  
    echo ${array[$i]}
    let i=$i+1;
    ;;

4)
   echo "MEDIAN"
   echo ${array[@]}

   for((x=0;x<i-1;x++))
   do
    let small=${array[$x]};
    let index=$x;
       for((y=x+1;y<i;y++))
       do
           if((array[$y]<small));
         then
               let small=${array[$y]};
               let index=$y;
          fi
       done
    let temp=${array[$x]};
    let array[$x]=${array[$index]};
    let array[$index]=$temp;
   done

    for ((x=0;x<$i;x++))
     do    
       echo -n ${array[$x]} " "
     done
    
   let m=$i%2
   if(($m==0))
   then
    let x=($i/2);
    let median=(${array[$x-1]}+${array[$x]})/2;
    echo ${array[$x-1]} ${array[$x]} ;
    echo $x;
   else
    let x=$i/2;
    let median=${array[$x]};    
   fi
   
   echo "median adalah "$median
    

   ;;
5)
 
   echo "terima kasih telah mampirr slurrrr"
   exit 1
   

 esac
done
