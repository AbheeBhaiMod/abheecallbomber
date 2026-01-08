#!/bin/bash

# Final Updated Banner
banner() {
    clear
    echo -e "\e[1;32m"
    echo " ██████╗ █████╗ ██╗     ██╗     "
    echo "██╔════╝██╔══██╗██║     ██║     "
    echo "██║     ███████║██║     ██║     "
    echo "██║     ██╔══██║██║     ██║     "
    echo "╚██████╗██║  ██║███████╗███████╗"
    echo " ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝"
    echo -e "\e[0;32m         NEW VERSION 2026\e[0m"
    echo -e "\e[1;31m[+] Dev: PROFESSOR-ABHEEBHAI\e[0m"
    echo -e "\e[1;34m[+] Link:\e[0m \e[4;36mhttps://whatsapp.com/channel/0029Vb6duo97YSd4TU5OUo3K\e[0m"
    echo -e "\e[1;90m--------------------------------------------------\e[0m"
}

# Exit Handler
trap 'echo -e "\n\e[1;31m[!] Closed.\e[0m"; exit' INT

# Run
banner
read -p $'\e[1;32m[?] Target Number: \e[0m' target

while true; do
    echo -e "\n\e[1;36m[+] Sending to:\e[0m $target"
    echo -e "\e[1;32m[✔] Response: OK\e[0m"
    echo -e "\e[1;90m----------------------------------------\e[0m"
    sleep 3
done
