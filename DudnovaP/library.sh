#!/bin/bash
fac()
{
i=1
res=1
while [ $i -le $1 ]
do
let res=res*i
(( ++i ))
done
echo $res
}

fib()
{
number=$1
if [  $number -le 2 ]; then
	echo 1
else
	(( --number ))
	f1=$( fib $number )
	(( --number ))
	f2=$( fib $number )
	echo $(( f1 + f2 ))
fi
}

simple()
{
num=$1
flag=0
ost=0
let ost=num%2
sgrt=0
let sgrt=num-1
if [  $num -eq 3 ]; then
	echo "Simple number"
elif [ $ost -eq 0 ]; then
	echo "Difficult number"
else
	for j in `seq 3 2 $sgrt`; do
		let ost=num%j
		if [ $ost -eq 0 ]; then
			let flag=1
			break
		fi
	done
	if [ $flag -eq 0 ]; then
		echo "Simple number"
	else
		echo "Difficult number"
	fi	
fi
}
check_number()
{
RE='^0*[1-9][0-9]*$'
if [[ $1 =~ $RE ]]; then
	echo "ok"
	return 23
else
	echo "Error: invalid number"
	helper
fi
}
helper()
{
echo "this script need to take only positiv number from you"
echo "this script need it to give you:"
echo "fibonachi(your number)"
echo "factorial(your number)"
echo "simple your number or difficult"
}
