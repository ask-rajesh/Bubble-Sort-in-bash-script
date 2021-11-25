#! /bin/bash

function create_array()
{
	n=$1
	for (( i=0;i<n;i++ ))
	do
		read num
		a[$i]=$num
	done
}
function print_array()
{
	n=$1
	for (( i=0;i<n;i++ ))
	do
		echo ${a[$i]}
	done
}
function bubble_sort()
{
	a=$1
	n=$2
	for (( i=0;i<n-1;i++ ))
	do
		for (( j=0;j<n-i-1;j++ ))
		do
			if (( ${a[$j]} > ${a[$j+1]} ))
			then
				temp=${a[$j]}
				a[$j]=${a[$j+1]}
				a[$j+1]=$temp
			fi
		done
	done
}
a=("$@")
echo "Enter the size of size: "
read n
echo "Enter $n elements: "
create_array $n
bubble_sort $a $n
echo "Sorted Array: "
print_array $n





