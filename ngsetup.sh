#!bin/sh

clear

echo "DO YOU WANT TO CONTINUE [Y/N] : "
read n

if [ "$n" == "y" ]; then
clear
echo -n "LOADING "
for i in {1..3}; do
echo -n ". "   # -n stands for not printing in newline
sleep 0.3
done
clear

else
exit

fi

echo "CHOOSE YOUR SYSTEM TYPE "
echo
echo " 1. TERMUX          2.LINUX "
echo " >>>  "
read choice

if [ "$choice" == 1 ] || [ "$choice" == "termux" ]; then

echo "INPUT YOUR AUTHTOKEN : "
read auth
echo
echo

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz
sleep 2
tar -xvzf ngrok-v3-stable-linux-arm64.tgz
sleep 2
chmod +x ngrok
sleep 2
./ngrok config add-authtoken $auth
sleep 2
echo
echo "SUCCEESFULLY NGROK INSTALLED ON TERMUX MOBILE "
echo " YOU CAN RUN YOUR NGROK NOW ..."

elif [ "$choice" == 2 ] || [ "$choice" == "linux" ]; then

echo "INPUT YOUR AUTHTOKEN : "
read auth
echo
echo

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
sleep 2
tar -xvzf ngrok-v3-stable-linux-amd64.tgz
sleep 2
chmod +x ngrok
sleep 2
./ngrok config add-authtoken $auth
sleep 2
echo
echo "SUCCEESFULLY NGROK INSTALLED ON LINUX SYSTEM "
echo " YOU CAN RUN YOUR NGROK NOW ..."

fi
