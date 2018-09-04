echo -e '\033]2;NeoScrypt (GBX) - zergpool pool\007'
./CryptoDredge -a neoscrypt -o stratum+tcp://neoscrypt.mine.zergpool.com:4233 -u WALLET_ADDRESS -p c=GBX
printf "Press <ENTER> to continue..."
read -r continueKey
