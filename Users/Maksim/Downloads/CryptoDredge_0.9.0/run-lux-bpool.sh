echo -e '\033]2;Phi2 (LUX) - bpool pool\007'
./CryptoDredge -a phi2 -o stratum+tcp://bpool.io:8332 -u WALLET_ADDRESS
printf "Press <ENTER> to continue..."
read -r continueKey
