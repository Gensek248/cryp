echo -e '\033]2;Lyra2Z BlockMasters.co\007'
./CryptoDredge -a lyra2z -o stratum+tcp://blockmasters.co:4553 -u BTC_WALLET_ADDRESS -p c=BTC
printf "Press <ENTER> to continue..."
read -r continueKey