cd ccminer
chmod +x *
nproc=$(nproc --all)
./ccminer -a verus -o stratum+tcp://pool.verus.io:9997 -u REPNzMPtM7seJy5xngt5VWKXMsEi6Ejezb.name -p x -t $nproc
