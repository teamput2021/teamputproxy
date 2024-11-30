RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Updating Proxy...${ENDCOLOR}"
sleep 1
if [ -f teamput]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm teamput
    sleep 1
    echo -e "${GREEN}Updating proxy...${ENDCOLOR}"
fi
echo -e "${GREEN}Checking Termux Installer...${ENDCOLOR}"
pkg update -y
pkg upgrade -y
pkg install openssl -y
pkg install curl -y
pkg install libenet -y
pkg install wget -y
clear
wget -q https://github.com/teamput2021/teamputproxy/raw/main/teamput
sleep 1
echo -e "${GREEN}Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute proxy with this command: ./teamput${ENDCOLOR}"
chmod +x teamput
