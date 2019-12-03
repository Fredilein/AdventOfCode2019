#!/bin/bash


# Part 1

let total=0

while read l; do
  let "a = $l / 3 - 2"
  let "total = $total + $a"
done < input/day1.txt

echo "Solution part 1:"
echo $total


# Part 2

function calcfuel {
  let "f = $1 / 3 - 2"
  if [[ $f < 0 ]]; then
    echo 0
  elif [[ $f = 0 ]]; then
    echo 0
  else
    echo $(($f+$(calcfuel $f)))
  fi
}

let total=0

while read l; do
  a=$(calcfuel $l)
  let "total = $total + $a"
done < input/day1.txt

echo "Solution part 2:"
echo $total
