#!/bin/bash
#create a tools folder in ~/
mkdir ~/ali
cd ~/ali/
#install gospider
echo "Installing gospider"
go get -u github.com/jaeles-project/gospider
cd ~/tools/
echo "done"

#install hakrawler
echo "Installing hakrawler"
go get github.com/hakluke/hakrawler
cd ~/tools/
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
git clone https://github.com/projectdiscovery/subfinder.git
cd subfinder/cmd/subfinder*
go build .
mv subfinder /usr/local/bin/
cd ~/ali/
echo "done"

#install github-subdomains
echo "Installing github-search"
git clone https://github.com/gwen001/github-search.git
cd ~/tools/
echo "done"

echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"
ls -la
echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"










