clear

echo "Masukkan nilai : "
read nilai

if (("$nilai" >= 60));
then
 echo "Anda lulus!"
else
 echo "Anda tidak lulus"
fi

if (("$nilai" >=0)) && (("$nilai" <=20));
then
 echo "Dapet E"
elif (("$nilai" >=21)) && (("$nilai" <=40));
then
 echo "Dapet D"
elif (("$nilai" >=41)) && (("$nilai" <=60));
then
 echo "Dapet c"
elif (("$nilai" >=61)) && (("$nilai" <=80));
then
 echo "Dapet B"
else
 echo "Dapet A"
fi
