#! /bin/bash

## ---------------------------------------------------------------------------------------------------------------------------------------------
cd /mnt/c/Users/abanning/Documents/School/Senior/FirstSemester/CyberSecurity/HackThePlanet
echo "Filepath: "; pwd;
echo "Executing John The Ripper Script";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## MD5 - Weak Wordlist No Mangling
echo "Hash Algorithm: MD5-raw";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-MD5 --wordlist=wordlist_weak.lst ./hashes/md5-raw.txt > ./output/MD5-weak-noRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-MD5 --wordlist=wordlist_weak.lst ./hashes/md5-raw.txt > ./output/MD5-weak-noRules.txt
end=`date +%s`;
runtime1=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Raw-MD5 ./hashes/md5-raw.txt
echo "Runtime: ${runtime1}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## MD5 - Weak Wordlist With Mangling
echo "Hash Algorithm: MD5-raw w/ Mangling";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-MD5 --wordlist=wordlist_weak.lst --rules ./hashes/md5-raw.txt > ./output/MD5-weak-wRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-MD5 --wordlist=wordlist_weak.lst --rules ./hashes/md5-raw.txt > ./output/MD5-weak-wRules.txt
end=`date +%s`;
runtime2=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Raw-MD5 ./hashes/md5-raw.txt
echo "Runtime: ${runtime2}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## MD5 - Strong Wordlist No Mangling
echo "Hash Algorithm: MD5-raw";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-MD5 --wordlist=wordlist_strong.lst ./hashes/md5-raw.txt > ./output/MD5-strong-noRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-MD5 --wordlist=wordlist_strong.lst ./hashes/md5-raw.txt > ./output/MD5-strong-noRules.txt
end=`date +%s`;
runtime3=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Raw-MD5 ./hashes/md5-raw.txt
echo "Runtime: ${runtime3}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## MD5 - Strong Wordlist With Mangling
echo "Hash Algorithm: MD5-raw w/ Mangling";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-MD5 --wordlist=wordlist_strong.lst --rules ./hashes/md5-raw.txt > ./output/MD5-strong-wRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-MD5 --wordlist=wordlist_strong.lst --rules ./hashes/md5-raw.txt > ./output/MD5-strong-wRules.txt
end=`date +%s`;
runtime4=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Raw-MD5 ./hashes/md5-raw.txt
echo "Runtime: ${runtime4}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## SHA1 - Weak Wordlist No Mangling
echo "Hash Algorithm: SHA1-raw";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-SHA1 --wordlist=wordlist_weak.lst ./hashes/sha1-raw.txt > ./output/SHA1unsalted-weak-noRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-SHA1 --wordlist=wordlist_weak.lst ./hashes/sha1-raw.txt > ./output/SHA1unsalted-weak-noRules.txt
end=`date +%s`;
runtime5=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Raw-SHA1 ./hashes/sha1-raw.txt
echo "Runtime: ${runtime5}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## SHA1 - Weak Wordlist W/ Mangling
echo "Hash Algorithm: SHA1-raw";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-SHA1 --wordlist=wordlist_weak.lst --rules ./hashes/sha1-raw.txt > ./output/SHA1unsalted-weak-wRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-SHA1 --wordlist=wordlist_weak.lst --rules ./hashes/sha1-raw.txt > ./output/SHA1unsalted-weak-wRules.txt
end=`date +%s`;
runtime6=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Raw-SHA1 ./hashes/sha1-raw.txt
echo "Runtime: ${runtime6}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## SHA1 - Strong Wordlist No Mangling
echo "Hash Algorithm: SHA1-raw";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-SHA1 --wordlist=wordlist_strong.lst ./hashes/sha1-raw.txt > ./output/SHA1unsalted-strong-noRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-SHA1 --wordlist=wordlist_strong.lst ./hashes/sha1-raw.txt > ./output/SHA1unsalted-strong-noRules.txt
end=`date +%s`;
runtime7=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Raw-SHA1 ./hashes/sha1-raw.txt
echo "Runtime: ${runtime7}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## SHA1 - Strong Wordlist W/ Mangling
echo "Hash Algorithm: SHA1-raw";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-SHA1 --wordlist=wordlist_strong.lst --rules ./hashes/sha1-raw.txt >> ./output/SHA1unsalted-strong-wRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Raw-SHA1 --wordlist=wordlist_strong.lst --rules ./hashes/sha1-raw.txt >> ./output/SHA1unsalted-strong-wRules.txt
end=`date +%s`;
runtime8=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Raw-SHA1 ./hashes/sha1-raw.txt
echo "Runtime: ${runtime8}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## SHA1 - Salted Weak Wordlist No Mangling
echo "Hash Algorithm: SHA1-salted";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Salted-SHA1 --wordlist=wordlist_weak.lst ./hashes/sha1-salted.txt >> ./output/SHA1salted-weak-noRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Salted-SHA1 --wordlist=wordlist_weak.lst ./hashes/sha1-salted.txt >> ./output/SHA1salted-weak-noRules.txt
end=`date +%s`;
runtime9=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Salted-SHA1 ./hashes/sha1-salted.txt
echo "Runtime: ${runtime9}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## SHA1 - Salted Weak Wordlist W/ Mangling
echo "Hash Algorithm: SHA1-salted";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Salted-SHA1 --wordlist=wordlist_weak.lst --rules ./hashes/sha1-salted.txt >> ./output/SHA1salted-weak-wRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Salted-SHA1 --wordlist=wordlist_weak.lst --rules ./hashes/sha1-salted.txt >> ./output/SHA1salted-weak-wRules.txt
end=`date +%s`;
runtime10=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Salted-SHA1 ./hashes/sha1-salted.txt
echo "Runtime: ${runtime10}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## SHA1 - Salted Strong Wordlist No Mangling
echo "Hash Algorithm: SHA1-salted";
echo "Optimal fork: 12";
echo "Command: ./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Salted-SHA1 --wordlist=wordlist_strong.lst ./hashes/sha1-salted.txt >> ./output/SHA1salted-strong-noRules.txt";
echo "";
start=`date +%s`;
./john-1.9.0-jumbo-1-win64/run/john.exe --fork=12 --format=Salted-SHA1 --wordlist=wordlist_strong.lst ./hashes/sha1-salted.txt >> ./output/SHA1salted-strong-noRules.txt
end=`date +%s`;
runtime11=$((end - start));
echo "";
echo "-------------------------------------------------------------------------";
echo "Passwords cracked:";
./john-1.9.0-jumbo-1-win64/run/john.exe --show --format=Salted-SHA1 ./hashes/sha1-salted.txt
echo "Runtime: ${runtime11}s";
echo "Clearing john.pot...";
rm ./john-1.9.0-jumbo-1-win64/run/john.pot;
echo "-------------------------------------------------------------------------";
echo "";
## ---------------------------------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------------------------------
## MD5 - Runtimes
echo "| Hash Algorithm          | Rules?	| Fork Value	| Runtime	|";
echo "-------------------------------------------------------------------------";
echo "| MD5 - Weak Wordlist	            | No Mangling	| 12		| ${runtime1}s		|";
echo "| MD5 - Weak Wordlist	            | W/ Mangling	| 12		| ${runtime2}s		|";
echo "| MD5 - Strong Wordlist	        | No Mangling	| 12		| ${runtime3}s		|";
echo "| MD5 - Strong Wordlist	        | W/ Mangling	| 12		| ${runtime4}s		|";
echo "| SHA1 - Weak Wordlist	        | No Mangling	| 12		| ${runtime5}s		|";
echo "| SHA1 - Weak Wordlist	        | W/ Mangling	| 12		| ${runtime6}s		|";
echo "| SHA1 - Strong Wordlist          | No Mangling	| 12		| ${runtime7}s		|";
echo "| SHA1 - Strong Wordlist          | W/ Mangling	| 12		| ${runtime8}s		|";
echo "| SHA1 Salted - Weak Wordlist     | No Mangling	| 12		| ${runtime9}s		|";
echo "| SHA1 Salted - Weak Wordlist     | W/ Mangling	| 12		| ${runtime10}s		|";
echo "| SHA1 Salted - Strong Wordlist   | No Mangling	| 12		| ${runtime11}s		|";
## ---------------------------------------------------------------------------------------------------------------------------------------------