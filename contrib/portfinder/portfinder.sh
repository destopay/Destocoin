#!/bin/bash
# looking for two numbers in a row which does not exist in the code to assign ports
# https://stackoverflow.com/questions/27392410/how-to-check-if-grep-has-no-output

count=0
limit=2

SINGLES=()

START=${1:-9710}
END=${2:-9999}

for (( i=$START; i<$END; i++))
do
  STATUS=`grep $i -r --exclude=portfinder.h ../..`

  echo "checking i=$i (so far $count/$limit)"
  if [ -z "$STATUS" ]
  then
    echo "found 1/$limit"
    ((count++))
    SINGLES+=($i)
    if [ $count -eq $limit ]
    then      
      break
    fi
  else
    echo "nope"
    count=0
  fi  
done

echo "SINGLES: ${SINGLES[*]}"
