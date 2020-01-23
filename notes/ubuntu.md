# On a fresh box

ubuntu@ip-172-26-10-56:~/Projects/destocoin$ ./autogen.sh
configuration failed, please install autoconf first

## Install easy dependencies
```
sudo apt update
sudo apt upgrade
sudo apt-get install build-essential libboost-all-dev libssl-dev libminiupnpc-dev libqrencode-dev qt5-default qt5-qmake qtbase5-dev-tools qttools5-dev-tools libevent-dev
```
## libdb4.8++-dev 
Taking the easy route
```
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev
```
## Additional from destocoin NOTES
```
sudo apt-get install libprotoc9v5 protobuf-compiler qttools5-dev installed
```

```    
sudo apt install autoconf automake pkg-config
```

sudo apt install libzmq3-dev

----

needs more swap space to compile 
resize or 

free
dd if=/dev/zero of=/var/swap.img bs=1024k count=1000
mkswap /var/swap.img
swapon /var/swap.img
free
make -f makefile.unix

----
forget it just get a bigger computer, no time to mess around
