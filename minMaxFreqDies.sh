#!/bin/bash -x

declare -A dict=(
                            [1]=0
                            [2]=0
                            [3]=0
                            [4]=0
                            [5]=0
                            [6]=0
                 )
max_count=10

while(( 1 ))
do
   
    result=$(( RANDOM % 6 + 1 ))
    (( dict[$result]++ ))

    
    if(( dict[$result] == max_count ))
    then
        break
    fi

done


most_frequent_num=$(( RANDOM % 6 + 1 ))
least_frequent_num=$(( RANDOM % 6 + 1 ))

echo "The numbers of the dice and their corresponding frequencies are:"

for number in ${!dict[@]}
do

   
    if(( dict[$number] >= dict[$most_frequent_num] ))
    then
        most_frequent_num=$number
    fi


    if(( dict[$number] <= dict[$least_frequent_num] ))
    then
        least_frequent_num=$number
    fi

    echo $number " " ${dict[$number]}
done

echo "The number that reached maximum times is $most_frequent_num"
echo "The number that reached minimum times is $least_frequent_num"
