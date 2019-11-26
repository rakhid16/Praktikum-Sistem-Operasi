echo "Masukkan nilai : "
read N

a=0
b=1

for (( i=0; i<N; i++ ))    # LOOP UNTUK MENCETAK BILANGAN FIBONANCI
do
 echo -n "$a "
 fn=$((a + b))
 a=$b
 b=$fn
done
echo ""

for (( x=1; x<=N; x++ ))   # LOOP UNTUK MENCETAK POLA ATAS SEJUMLAH N BARIS
do
 for (( y=1; y<x; y++ ))    # LOOP UNTUK MENCETAK SPASI
 do
  printf " "
 done
 for (( y=x; y<=N; y++ ))   # LOOP UNTUK MENCETAK BINTANG
 do
  printf "*"
 done
 echo ""
done

for (( x=2; x<=N; x++ ))   # LOOP UNTUK MENCETAK POLA BAWAH SEJUMLAH N-1 BARIS
do
 for (( y=x; y<N; y++ ))    # LOOP UNTUK MENCETAK SPASI
 do
  printf " "
 done
 for (( y=1; y<=x; y++ ))   # LOOP UNTUK MENCETAK BINTANG
 do
  printf "*"
 done
 echo ""
done
