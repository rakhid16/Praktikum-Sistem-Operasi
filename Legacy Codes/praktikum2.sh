
echo -n "masukkan detikknya :";
read detik;

if [ $detik -ge 3600 ]
then
let jam=$detik/3600;
let detik=$detik-$jam*3600;
echo "$jam jam"
fi

if [ $detik -ge 60 ]
then
let menit=$detik/60;
let detik=$detik-$menit*60;
echo "$menit menit"
fi

echo "$detik detik";
