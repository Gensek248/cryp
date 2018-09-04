echo -e '\033]2;Allium (GRLC) - freshgrlc pool\007'
./CryptoDredge -a allium -o stratum+tcp://freshgarlicblocks.net:3032 -u WALLET_ADDRESS
printf "Press <ENTER> to continue..."
read -r continueKey
