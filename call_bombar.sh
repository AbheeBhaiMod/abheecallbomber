#!/bin/bash

# --- COLORS ---
G='\e[1;32m' # Green
R='\e[1;31m' # Red
B='\e[1;34m' # Blue
Y='\e[1;33m' # Yellow
C='\e[1;36m' # Cyan
W='\e[1;37m' # White
P='\e[1;35m' # Purple
N='\e[0m'    # Reset

# --- BANNER FUNCTION ---
banner() {
    clear
    echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo -e "${C}   ██████╗ █████╗ ██╗     ██╗     "
    echo -e "${C}  ██╔════╝██╔══██╗██║     ██║     "
    echo -e "${C}  ██║     ███████║██║     ██║     "
    echo -e "${C}  ██║     ██╔══██║██║     ██║     "
    echo -e "${C}  ╚██████╗██║  ██║███████╗███████╗"
    echo -e "${C}   ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝"
    echo -e "${G}            C A L L   B O M B E R   V 2"
    echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo -e "${W} [ ${R}● ${W}] ${G}Developer  : ${W}PROFESSOR ABHEEBHAI"
    echo -e "${W} [ ${R}● ${W}] ${G}Status     : ${Y}Premium / Active"
    echo -e "${W} [ ${R}● ${W}] ${G}WhatsApp   : ${C}https://bit.ly/AbheeBhai"
    echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"
}

# --- EXIT HANDLER ---
trap 'echo -e "\n\n${R}[!] STOPPING PROCESS... BYE!${N}"; exit' INT

# --- MAIN EXECUTION ---
banner

# Stylish Input
echo -ne "${Y}[${W}?${Y}] ${G}ENTER TARGET NUMBER ${W}(With Country Code): ${W}"
read target

if [[ -z "$target" ]]; then
    echo -e "\n${R}[!] ERROR: Number blank nahi chorr sakte!${N}"
    sleep 2
    exit 1
fi

# Starting Animation
echo -e "\n${C}[*] INITIALIZING ENCRYPTED TUNNEL...${N}"
sleep 1
echo -e "${C}[*] CONNECTING TO PREMIUM SERVER...${N}"
sleep 1
echo -e "${G}[+] CONNECTION ESTABLISHED!${N}"
sleep 1
echo -e "\n${Y}🚀 BOMBING STARTED ON: ${W}$target${N}"
echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"

# BOMBING LOOP
count=1
while true; do
    # Simulation of different API endpoints
    echo -e "${W}[${C}#${W}] ${C}SENDING REQUEST ${count}...${N}"
    sleep 1.5
    echo -e "${W}[${G}✔${W}] ${G}SUCCESS: ${W}Packet Delivered to ${Y}$target${N}"
    echo -e "${P}──────────────────────────────────────────────────────${N}"
    
    ((count++))
    sleep 2 # Pause between calls
done
