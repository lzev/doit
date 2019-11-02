#!/bin/bash

OLD_IFS="$IFS"
IFS=" "
IFS="$OLD_IFS"
# arr=($1)
# IFS="$OLD_IFS"
# for s in ${arr[@]}
# do
#     echo "$s"
# done

arr3="";
arr4="";
arr5="";

#!/bin/bash
for line in $(cat $1)
do
  arr=$line;
  j=$[j+1];
  b=$(( $j % 6 ));
  for s in ${arr[@]}
  do
    if [ "4" -eq $b ];then
      arr3=$s;
    elif [ "5" -eq "$b" ];then
      arr4=$s;
    elif [ "0" -eq "$b" ];then
      arr5=$s;
    fi
    # echo ${arr3} ${arr4} ${arr5}
  done
  # for(( i=0;i<${#arr[@]};i++)) do
  #   j=$[j+1]
  #   echo ${j}
  #   if [ $j == "3" ];then
  #     arr3=arr${arr[i]};
  #   elif [ "4" -eq "$j" ];then
  #     arr4=${arr[i]};
  #   elif [ "5" -eq "$j" ];then
  #     arr5=${arr[i]};
  #   fi
  #   echo ${arr[i]};
  # done
  if [ "0" -eq "$b" ];then
    str="update gbt2260_code set longitude='${arr4}',latitude='${arr5}' where name='${arr3}';
    "
    echo $str;
    # echo " update gbt2260_code set longitude='$arr4', latitude='$arr5' \n"
  fi
done
