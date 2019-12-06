#!/bin/bash
echo -n "masukkan batas angka :";
read batas;

x=1
while [ $x -le $batas ]
do
  if [[ 0 -eq "($x%3) + ($x%5)" ]]
  then
    echo "FizzBuzz"
  elif [[ 0 -eq "($x%5)" ]]
  then

    echo "Buzz"
  elif [[ 0 -eq "($x%3)" ]]
  then

    echo "Fizz"
   else
    echo "$x"
   fi
  x=$(( $x + 1 ))
done
