#!/bin/usr/sh
#online electronic shopping website
echo "welcome to online shopping"
choice="y"
sum=0
while [ $choice != "n" ]
 do
  echo "please enter ur choice"
  echo "1:Laptops & Computer Peripherals 2: 3:camera's"
  read ch
   case $ch in
	1) echo " You are present in Computer Section"
  	 echo " enter keyword "
  	 read  key
        f=example.txt;;
       2) echo "yo r in ele section"
          echo "enter keyword"
          read key
          f=elec.txt;;
       esac
	  d=`grep $key $f`
	  if [ -n  $d ];then 
	    echo "sorry out of stock/ not available"
          else
 	  { grep $key $f>dis.txt
 	   cat -n dis.txt
	   echo "enter index you want to purchase "	
       	   read ind
 	   d=`head -n $ind dis.txt| tail -1 | cut -d '|' -f 2 | tr -cd \[\:digit:]`
           sum=`expr $sum + $d`}
   	fi

   echo "do u want to purchase more"
  read choice
 done
 echo "the total outstanding amount is $sum"
 echo "THANK YOU.HAVE A NICE DAY"

