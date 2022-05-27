#!/bin/sh
PURPLE='\033[0;35m' #Purple Color
LPURPLE='\033[1;35m' #Light Purple Color
NC='\033[0m' # No Color

printf "${LPURPLE}Enter the domain name: ${NC}"
read domain
echo ""
echo -e "${PURPLE}A${LPURPLE} (IPv4 Address):${NC}"
dig @1.1.1.1 A $domain +short
echo ""
echo -e "${PURPLE}AAAA${LPURPLE} (IPv6 Address):${NC}"
dig @1.1.1.1 AAAA $domain +short
echo ""
echo -e "${PURPLE}NS${LPURPLE} (Nameservers):${NC}"
dig @1.1.1.1 NS $domain +short
echo ""
echo -e "${PURPLE}MX${LPURPLE} (Mail Exchange):${NC}"
dig @1.1.1.1 MX $domain +short
echo ""
echo -e "${PURPLE}TXT${LPURPLE} (Text):${NC}"
dig @1.1.1.1 TXT $domain +short
echo ""
