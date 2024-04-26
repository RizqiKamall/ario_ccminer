cd ccminer
chmod +x *
nproc=$(nproc --all)
Difference=$(($nproc-3))
./ccminer -a verus -o stratum+tcp://pool.verus.io:9997 -u REPNzMPtM7seJy5xngt5VWKXMsEi6Ejezb -p x -t $Difference
