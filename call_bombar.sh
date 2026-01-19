#!/bin/bash

# --- ADVANCED NEON COLORS ---
G='\e[1;32m' # Neon Green
R='\e[1;31m' # Danger Red
B='\e[1;34m' # Deep Blue
Y='\e[1;33m' # Warning Yellow
C='\e[1;36m' # Cyber Cyan
W='\e[1;37m' # Ghost White
P='\e[1;35m' # Toxic Purple
N='\e[0m'    # Reset

# --- DANGEROUS BANNER ---
banner() {
    clear
    echo -e "${R}        .---.        .-----------."
    echo -e "       /     \      /  💥 DANGER 💥"
    echo -e "      | () () |    /  RESTRICTED  "
    echo -e "       \  ^  /    '  ACCESS ONLY  "
    echo -e "        |||||       '-----------'"
    echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo -e "${C}   ██████╗ █████╗ ██╗     ██╗     "
    echo -e "${C}  ██╔════╝██╔══██╗██║     ██║     "
    echo -e "${C}  ██║     ███████║██║     ██║     "
    echo -e "${C}  ██║     ██╔══██║██║     ██║     "
    echo -e "${C}  ╚██████╗██║  ██║███████╗███████╗"
    echo -e "${C}   ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝"
    echo -e "${R}            D E S T R U C T O R   V 2"
    echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo -e "${W} [ ${R}💀 ${W}] ${G}OWNER     : ${W}PROFESSOR ABHEEBHAI"
    echo -e "${W} [ ${R}💀 ${W}] ${G}THREAT    : ${R}CRITICAL"
    echo -e "${W} [ ${R}💀 ${W}] ${G}WHATSAPP  : ${C}https://whatsapp.com/channel/0029Vb7JWGbGpLHQ9x2sKP1O"
    echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"
}

trap 'echo -e "\n\n${R}[!] SYSTEM OVERRIDE DETECTED... SHUTTING DOWN!${N}"; exit' INT

banner

# Fake Hacking Animation
echo -e "${R}[*] SCANNING GLOBAL PROXY SERVERS...${N}"
sleep 1
echo -e "${G}[+] PROXY BYPASS SUCCESSFUL [127.0.8.1]${N}"
sleep 0.5
echo -e "${Y}[!] WARNING: FIREWALL BREACH IN PROGRESS...${N}"
sleep 1
echo -e "${G}[+] TARGET VULNERABILITY FOUND!${N}"
echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"

# Input Target
echo -ne "${R}[${W}#${R}] ${G}ENTER TARGET (PHONE): ${W}"
read target

if [[ -z "$target" ]]; then
    echo -e "\n${R}[✖] CRITICAL ERROR: NO TARGET DEFINED!${N}"
    exit 1
fi

# Mode Selection
echo -e "\n${P}[ SELECT ATTACK PROTOCOL ]"
echo -e "${W}1. ⚡ HYPER BOMBING (Unlimited)"
echo -e "${W}2. ⏱️ TIMED DESTRUCTION (Custom Timer)"
echo -ne "${R}[${W}#${R}] ${G}CHOOSE MODE: ${W}"
read choice

if [[ "$choice" == "2" ]]; then
    echo -ne "${R}[${W}#${R}] ${G}SECONDS: ${W}"
    read seconds
    end_time=$((SECONDS + seconds))
fi

echo -e "\n${R}[!] BYPASSING CARRIER ENCRYPTION...${N}"
sleep 1.5
echo -e "${G}[✔] ATTACK AUTHORIZED ON: ${W}$target${N}"
echo -e "${R}🚀 INJECTING PACKETS...${N}"
echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"

# DANGEROUS LOOP
count=1
while true; do
    if [[ "$choice" == "2" && $SECONDS -ge $end_time ]]; then
        echo -e "\n${G}[✔] TARGET NEUTRALIZED. SESSION ENDED.${N}"
        exit 0
    fi

    # Matrix Style Success Message
    echo -e "${R}[${W}${count}${R}] ${C}REQUEST SENT ${G}>> ${W}Target: $target ${G}[STABLE]${N}"
    echo -e "${Y}   ↳ DATA INJECTION: ${R}COMPLETED${N}"
    
    ((count++))
    sleep 1 # Super Fast
done
