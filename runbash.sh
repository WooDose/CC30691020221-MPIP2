## BASH script to run both original and staggered versions of bruteforce with 1, 2, 4, 6 and 8 cores while recording data to a csv.

date=$(date '+%Y-%m-%d %H:%M:%S') ## For filename



## Run Original version with 1, 2, 4, 6 and 8 cores 10 times, with 6 digit key

		#for i in {1..3};
		#	do echo -e "\n" >> "times_${date}.csv";
		#	 timeout 5m mpirun -np 2 Bruteforce-Original "encryptea1.txt" "i use " 2 2562 >> "times_${date}.csv";
		#	done

		#for i in {1..3};
		#	do echo -e "\n" >> "times_${date}.csv";
		#	 timeout 5m mpirun -np 4 Bruteforce-Original "encryptea1.txt" "i use " 4 2562 >> "times_${date}.csv";
		#	done

		#for i in {1..3};
		#	do echo -e "\n" >> "times_${date}.csv";
		#	 timeout 5m mpirun -np 6 Bruteforce-Original "encryptea1.txt" "i use " 6 2562 >> "times_${date}.csv";
		#	done

		#for i in {1..3};
		#	do echo -e "\n" >> "times_${date}.csv";
		#	 timeout 5m mpirun -np 8 Bruteforce-Original "encryptea1.txt" "i use " 8 2562 >> "times_${date}.csv";
		#	done

## Run staggered version with 1, 2, 4, 6 and 8 cores 10 times, with 6 digit key

for km in {3..5};
	do
	kl=$((2*km))
		for i in {1..3};
			do echo -e "\n" >> "times_${date}.csv";
			 timeout 15m mpirun -np 2 Bruteforce-Staggered "crypt${kl}.txt" "i use " 2 ${kl} >> "times_${date}.csv";
			done

		for i in {1..3};
			do echo -e "\n" >> "times_${date}.csv";
			 timeout 15m mpirun -np 4 Bruteforce-Staggered "crypt${kl}.txt" "i use " 4 ${kl} >> "times_${date}.csv";
			done

		for i in {1..3};
			do echo -e "\n" >> "times_${date}.csv";
			 timeout 15m mpirun -np 6 Bruteforce-Staggered "crypt${kl}.txt" "i use " 6 ${kl} >> "times_${date}.csv";
			done

		for i in {1..3};
			do echo -e "\n" >> "times_${date}.csv";
			 timeout 15m mpirun -np 8 Bruteforce-Staggered "crypt${kl}.txt" "i use " 8 ${kl} >> "times_${date}.csv";
			done
	done



