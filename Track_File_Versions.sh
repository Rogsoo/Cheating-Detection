#! /bin/bash
#run with timeout 6000 ./final.sh -->  (1hr 40 mins) 
mkdir test
while [ 1 == 1 ]
do
#for stu in $(cat /home/OMIS107/roster)
 for stu in rpanda2 amzhu
          do
#creates a subdirectory in test per student
                if [ ! -d /home/$(whoami)/test/$stu ]
                then
                        mkdir /home/$(whoami)/test/$stu
                fi

#declare latest version number in subdirectory.
                versionNum=$(ls /home/$(whoami)/test/$stu | wc -l)
#tests to see if myscript.sh exits
                test1=$(ls /home/$stu | grep -E "myscript.sh"| wc -l)

                if [ $test1 == 0 ]
                then
                        echo $stu: File not found @ $(date).

#if it does exist, copy the file as version 1.
                elif [ $versionNum == 0 ]
                then
                        cp /home/$stu/myscript.sh /home/$(whoami)/test/$stu/version1
#if the first version has already been copied, versionNum  > 0. Otherwise, check for differences and copy if there's a difference.
                else

                        test2=$(diff /home/$stu/myscript.sh /home/$(whoami)/test/$stu/version$versionNum | wc -l)

                        if [ $test2 -gt 0 ]
                        then

                                cp /home/$stu/myscript.sh /home/$(whoami)/test/$stu/version$((versionNum+1))
                        fi


                fi
          done

        sleep 30
done
