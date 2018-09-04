echo -e '\033]2;Lyra2REv2 (MONA) - bsod pool\007'
./CryptoDredge -a lyra2v2 -o stratum+tcp://eu.bsod.pw:2290 -p d=256 -u WALLET_ADDRESS
printf "Press <ENTER> to continue..."
read -r continueKey
