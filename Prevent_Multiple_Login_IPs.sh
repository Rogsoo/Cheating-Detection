#! /bin/bash
#run with timeout 6000 ./final.sh -->  (1hr 40 mins) 
while [ 1 -eq 1 ]
do
for stu in $(cat /home/OMIS107/roster)

        do
        var=$(who | awk -v u="$stu" '{if($1==u) print $5}'| sort | uniq | wc -l)
        ip=$(who | awk -v u="$stu" '{if($1==u) print $5}'| sort | uniq)
        if [ $var -gt 1 ]
                then
                        echo $stu cheated on $(date) with the IPs: $ip
                fi
        done
sleep 15
done
