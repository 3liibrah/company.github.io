##!/bin/bash#starting 
GoSpider

#gospider -s $1 -o domains.txt#

#hakrawler

~/go/bin/assetfinder --subs-only $1 | tee -a domains.txt

#SubDomainizer
cd SubDomainizer/python3 SubDomainizer.py -u $1 -o domains.txt | httpx -silent

#subscraper
#python3 subscraper.py -u $1 -o domains.txt -v#


#subfinder

subfinder -d $1 -o domains.txt -v | httpx -silent

#github-subdomains

cd github-search/python3 github-subdomains.py -t "3e1aa2e3f7951af257c881698aeb9d71993b5aa8" -d $1 | httpx -silent

#shosubgo
#cd ali/shosubgo; go run main.go -d $1 -s EVRbJZ2IH28JLUQggYN13JjkJmOQrEiX#

#shuffledns



#amass
amass enum -brute -d $1  -o domains.txt | httpx -silent


#removing duplicate entries

sort -u domains.txt -o domains.txt | uniq 

#checking for alive domains

echo "\n\n[+] Checking for alive domains..\n"

cat domains.txt | ~/go/bin/httprobe | tee -a alive.txt









