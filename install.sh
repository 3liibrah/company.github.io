#!/bin/bash
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setupali
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs


#create a ali folder in ~/
mkdir ~/ali
cd ~/ali/
#install gospider
echo "Installing gospider"
go get -u github.com/jaeles-project/gospider
cd ~/ali/
echo "done"

#install hakrawler
echo "Installing hakrawler"
go get github.com/hakluke/hakrawler
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
git clone https://github.com/projectdiscovery/subfinder.git
cd subfinder/cmd/subfinder*
go build .
mv subfinder /usr/local/bin/
cd ~/ali/
echo "done"

#install github-subdomains
echo "Installing github-search"
git clone https://github.com/gwen001/github-search.git
cd ~/ali/
echo "done"

#nuclei
echo -e "Installing nuclei"
cd ~/ali/
go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
echo -e "Done Install nuclei"

#qsreplace
echo -e "Installing qsreplace"
cd ~/ali/
go get -u github.com/tomnomnom/qsreplace
echo -e "Done Install qsreplace"

#httprobe
echo -e "installing httprobe"
go get -u github.com/tomnomnom/httprobe 
echo -e "Done install httprobe"



echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All ali are set up in ~/ali"
ls -la
echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"










