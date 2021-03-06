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
go get github.com/hakluke/hakrawler
cd ~/ali/
echo "done"

#takeover
echo "Installing takeover"
wget -q https://raw.githubusercontent.com/m4ll0k/takeover/master/takeover.py
cd ~/ali/
echo "done"

#install SubOver
echo "Installing hakrawler"
go get github.com/Ice3man543/SubOver
cd ~/ali/
echo "done"

#anew
go get -u github.com/tomnomnom/anew
echo "done"

#qsreplace
go get -u github.com/tomnomnom/qsreplace
echo "done"

#gospider
go get -u github.com/jaeles-project/gospider
echo "done"

#chaos
GO111MODULE=on go get -u github.com/projectdiscovery/chaos-client/cmd/chaos
echo "done"

#unew
go get -u github.com/dwisiswant0/unew
echo "done"

#gf
go get -u github.com/tomnomnom/gf
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
echo "done"

#install nuclei
git clone https://github.com/projectdiscovery/nuclei.git
cd nuclei/cmd/nuclei/
go build; mv nuclei /usr/local/bin/
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

#Subdomain Takeover Scan via subzy
cd ~/ali/
echo -e "Installing Subzy"
go get -u -v github.com/lukasikic/subzy
echo -e "Done Install Subzy"

#httprobe
go get -u github.com/tomnomnom/httprobe 
echo -e "Done install httprobe"



echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All ali are set up in ~/ali"
ls -la
echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"










