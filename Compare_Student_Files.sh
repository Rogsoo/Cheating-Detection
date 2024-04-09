#! /bin/bash

echo what is the correct code?
read code

eval $code

for stu in $(cat /home/OMIS107/roster)
do
        test=$(diff /home/$stu/myexam ~/myexam | wc -l)
        if [[ $test>0 ]]
        then
                echo $stu 
        fi
done
