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
    echo -e "${W} [ ${R}● ${W}] ${G}WhatsApp   : ${C}https://whatsapp.com/channel/0029Vb7JWGbGpLHQ9x2sKP1O"
    echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"
}

# --- EXIT HANDLER ---
trap 'echo -e "\n\n${R}[!] STOPPING PROCESS... BYE!${N}"; exit' INT

# --- MAIN EXECUTION ---
banner

# Input Target
echo -ne "${Y}[${W}?${Y}] ${G}ENTER TARGET NUMBER: ${W}"
read target

if [[ -z "$target" ]]; then
    echo -e "\n${R}[!] ERROR: Number blank nahi chorr sakte!${N}"
    exit 1
fi

# Timer Option
echo -e "\n${C}[ OPTION ] HOW LONG DO YOU WANT TO BOMB?"
echo -e "${W}1. Unlimited Attacks"
echo -e "${W}2. Set Custom Timer (Seconds)"
echo -ne "${Y}[${W}?${Y}] ${G}CHOOSE OPTION (1/2): ${W}"
read choice

if [[ "$choice" == "2" ]]; then
    echo -ne "${Y}[${W}?${Y}] ${G}ENTER TIME IN SECONDS: ${W}"
    read seconds
    end_time=$((SECONDS + seconds))
fi

# Starting Animation
echo -e "\n${C}[*] INITIALIZING ENCRYPTED TUNNEL...${N}"
sleep 1
echo -e "${G}[+] CONNECTION ESTABLISHED!${N}"
sleep 1
echo -e "\n${Y}🚀 BOMBING STARTED ON: ${W}$target${N}"
echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"

# BOMBING LOOP
count=1
while true; do
    # Check Timer for Option 2
    if [[ "$choice" == "2" && $SECONDS -ge $end_time ]]; then
        echo -e "\n${Y}[!] TIMER FINISHED! ATTACK COMPLETED.${N}"
        exit 0
    fi

    # Simulation
    echo -e "${W}[${C}#${W}] ${C}SENDING REQUEST ${count}...${N}"
    sleep 1.2
    echo -e "${W}[${G}✔${W}] ${G}SUCCESS: ${W}Packet Delivered to ${Y}$target${N}"
    echo -e "${P}──────────────────────────────────────────────────────${N}"
    
    ((count++))
    sleep 1.5
done
