perulangan dan case
<p align="right">
بِسْــــــــــــــمِ اللَّهِ الرَّحْمَنِ الرَّحِيم 
</p>

## Perulangan

* <b>Perulangan (Loop)</b> merupakan struktur program yang dapat digunakan untuk melakukan statement yang sama secara terus-menerus dengan cara yang efisien dan efektif selama kondisi tersebut terpenuhi (bernilai true).
1. While loop
    * While loop digunakan untuk mengeksekusi serangkaian perintah berulang kali selama suatu kondisi terpenuhi.
    
    * Syntax

    ```while kondisi
    do
       perintah 
    done
    ```
    * Contoh:

    ```bash
    #!/bin/bash
    a=0

    while [ $a -lt 10 ]
    do
      echo $a
      a=$((a + 2))
    done
    ```  
    
    ```
    Output:

    0
    2
    4
    6
    8
    ```
2.
