#!/bin/bash


#create a ali folder in ~/
mkdir ~/ali
cd ~/ali/

#install findomain
echo "Installing findomain"
wget https://github.com/Edu4rdSHL/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
cd ~/ali/
echo "done"

#install hakrawler
echo "Installing hakrawler"
go install github.com/hakluke/hakrawler@latest
cd ~/ali/
echo "done"

#anew
go install github.com/tomnomnom/anew@latest
echo "done"

#qsreplace
go install github.com/tomnomnom/qsreplace@latest
echo "done"

#gospider
go install github.com/jaeles-project/gospider@latest
echo "done"

#chaos
GO111MODULE=on go get -u github.com/projectdiscovery/chaos-client/cmd/chaos
echo "done"

#unew
go install github.com/dwisiswant0/unew@latest
echo "done"




#nuclei -tampate
git clone https://github.com/projectdiscovery/nuclei-templates.git
cd ~/ali/
echo "done"

#install SubDomainizer
echo "Installing SubDomainizer"
git clone https://github.com/nsonaniya2010/SubDomainizer.git
cd SubDomainizer*
pip3 install -r requirements.txt
cd ~/ali/
echo "done"


#install subfinder
echo "Installing subfinder"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
cd ~/ali/
echo "done"

#install github-subdomains
echo "Installing github-search"
git clone https://github.com/gwen001/github-search.git
cd ~/ali/
echo "done"

#Subdomain Takeover Scan via subzy
cd ~/ali/
go get -u -v github.com/lukasikic/subzy
go install -v github.com/lukasikic/subzy@latest
cd ~/ali/
echo "done"



#httpx
#cuz i install  it
#pip install httpx











