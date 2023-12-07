cd ~
rm -rfv .git
git init
git pull https://github.com/bendr0id/xmrigcc
apt update
apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
cmake . -DWITH_CN_LITE=OFF -DWITH_CN_HEAVY=OFF -DWITH_CN_PICO=OFF -DWITH_CN_FEMTO=OFF -DWITH_RANDOMX=OFF -DWITH_ARGON2=OFF -DWITH_KAWPOW=OFF -DWITH_ASM=OFF -DWITH_OPENCL=OFF -DWITH_CUDA=OFF -DWITH_NVML=OFF 
make -j$(nproc)
./xmrigDaemon -a gr -o stratum+tcp://cminer.org:5706 -u JfqVz51WWy684TTBo5oojKujuFv6ih9kjd -p c=JGC
