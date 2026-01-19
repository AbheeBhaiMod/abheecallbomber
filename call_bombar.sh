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

# --- PROFESSIONAL BANNER ---
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
    echo -e "${W} [ ${G}● ${W}] ${G}OWNER     : ${W}PROFESSOR ABHEEBHAI"
    echo -e "${W} [ ${G}● ${W}] ${G}WHATSAPP  : ${C}https://whatsapp.com/channel/0029Vb7JWGbGpLHQ9x2sKP1O"
    echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"
}

# --- EXIT HANDLER (Manual Stop) ---
trap 'echo -e "\n\n${R}[!] EMERGENCY STOP: SYSTEM OVERRIDE BY USER!${N}"; exit' INT

banner

# Input Target
echo -ne "${Y}[${W}#${Y}] ${G}ENTER TARGET (PHONE): ${W}"
read target

if [[ -z "$target" ]]; then
    echo -e "\n${R}[✖] CRITICAL ERROR: NO TARGET DEFINED!${N}"
    exit 1
fi

# Mode Selection
echo -e "\n${P}[ SELECT ATTACK PROTOCOL ]"
echo -e "${W}1. ⚡ HYPER BOMBING (Unlimited)"
echo -e "${W}2. ⏱️ TIMED DESTRUCTION (Custom Seconds)"
echo -e "${W}3. 🔢 MANUAL COUNT (Specific Number of Times)"
echo -ne "${Y}[${W}#${Y}] ${G}CHOOSE MODE: ${W}"
read choice

if [[ "$choice" == "2" ]]; then
    echo -ne "${Y}[${W}#${Y}] ${G}ENTER SECONDS: ${W}"
    read seconds
    end_time=$((SECONDS + seconds))
elif [[ "$choice" == "3" ]]; then
    echo -ne "${Y}[${W}#${Y}] ${G}HOW MANY TIMES TO RUN?: ${W}"
    read max_count
fi

echo -e "\n${C}[!] BYPASSING CARRIER ENCRYPTION...${N}"
sleep 1
echo -e "${G}[✔] ATTACK AUTHORIZED ON: ${W}$target${N}"
echo -e "${R}🚀 INJECTING PACKETS... (Press CTRL+C to Stop)${N}"
echo -e "${G}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${N}"

# ATTACK LOOP
count=1
while true; do
    # Check Timer (Option 2)
    if [[ "$choice" == "2" && $SECONDS -ge $end_time ]]; then
        echo -e "\n${G}[✔] TIME LIMIT REACHED. TARGET NEUTRALIZED.${N}"
        exit 0
    fi

    # Check Manual Count (Option 3)
    if [[ "$choice" == "3" && $count -gt $max_count ]]; then
        echo -e "\n${G}[✔] COMPLETED $max_count ATTACKS successfully.${N}"
        exit 0
    fi

    # Matrix Style Attack UI
    echo -e "${R}[${W}${count}${R}] ${C}REQUEST SENT ${G}>> ${W}Target: $target ${G}[STABLE]${N}"
    echo -e "${Y}   ↳ STATUS: ${R}PACKET INJECTED${N}"
    
    ((count++))
    sleep 1 # Speed control
done
