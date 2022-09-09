#!/bin/sh

#hosts="
#www.google.com
#www.naver.com
#"
#for p in $hosts
#do
#    echo tcping $p
#    tcping $p 80 >>./results.out
#done
#exit


date > result.out
cat list.txt |  while read output
do
    tcping $output 
    if [ $? -eq 0 ]; then
    echo "$output is open" >> result.out
    else
    echo "$output is close" >> result.out
    fi
done
