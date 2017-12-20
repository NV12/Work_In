#WAP to print a tree like structure of a directory

# for supressing error :-- append 2>/dev/null after the command
#example ./task1_temp.sh DEMODIR 2>/dev/null

#!/bin/bash
recurse()
{
	while (( $# ))
	do
		if [ -d "$1" ]; then		#if the arg is a dir
			((temp = sp))
			while [ $temp -ge 1 ] 	#for spacing
			do
				echo -n -e "----"
				((temp--))
			done

			echo $1 | sed 's:.*/::g'	#to remove everything before /
			((sp++))
			recurse $(ls -d $1/*)
		
		elif [ -f "$1" ]; then		#if the arg is a file
			((temp = sp))
			while [ $temp -ge 1 ]
			do
				echo -n -e "----"
				((temp--))
			done

			echo $1 | sed 's:.*/::g'

		else				#for wrong input
			echo wrong input
		fi
		
		shift

	done	
	((sp--))

}

temp=0;
sp=0;
recurse $1



