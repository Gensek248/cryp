echo -e '\033]2;Lyra2REv2 - nicehash pool\007'
./CryptoDredge -a lyra2v2 -o stratum+tcp://lyra2rev2.eu.nicehash.com:3347 -u BTC_WALLET_ADDRESS
printf "Press <ENTER> to continue..."
read -r continueKey
