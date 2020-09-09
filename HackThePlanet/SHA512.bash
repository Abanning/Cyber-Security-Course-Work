#! /bin/bash

cd /mnt/c/Users/abanning/Documents/School/Senior/FirstSemester/CyberSecurity/HackThePlanet
echo "Filepath: "; pwd;
echo "Executing SHA512 Cracking";
rm ./john-1.9.0-jumbo-1-win64/run/john.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.2.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.3.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.4.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.5.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.6.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.7.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.8.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.9.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.10.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.11.rec
rm ./john-1.9.0-jumbo-1-win64/run/john.12.rec
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## SHA512
echo "Hash Algorithm: SHA512 - Weak Wordlist";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=sha512crypt --wordlist=wordlist_weak.lst ./hashes/sha512-small.txt > ./output/sha512-weak-noRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=sha512crypt --wordlist=wordlist_weak.lst ./hashes/sha512-small.txt > ./output/sha512-weak-noRules.txt
end=`date +%s`;
runtime1=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=sha512crypt ./hashes/sha512-small.txt
echo "Runtime: ${runtime1}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------
