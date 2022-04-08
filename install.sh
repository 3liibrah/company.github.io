#!/bin/bash

## GLOBAL VARIABLES

ToolsPath="/root/tools"
mkdir $ToolsPath 2>/dev/null
mkdir $ToolsPath/VPS_buddy_trash
mkdir /root/codes
mkdir /root/targets


if [[ ! -f  $ToolsPath/VPS_buddy_trash/.update_done ]]
then 

echo "updating and upgrading"
apt-get -y update
apt-get -y upgrade
apt-get -y install sudo
sudo apt -y install git-all
sudo apt full-upgrade -y

touch $ToolsPath/VPS_buddy_trash/.update_done
echo "done"

fi

if [[ ! -f  $ToolsPath/VPS_buddy_trash/.common_tools ]]
then
echo "installing common tools and python and few dependencies"


echo "Installing pip"
cd ~ && curl  https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python get-pip.py
sudo python3 get-pip.py
rm get-pip.py
/usr/bin/python3 -m pip install --upgrade pip

sudo apt-add-repository universe
sudo apt-get install -y software-properties-common
sudo apt-get install -y python3-pip
sudo apt-get install -y cargo
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y rubygems
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y libssl-dev swig 
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs
sudo apt-get install -y httpie
sudo apt-get install -y curl
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y dnsutils
sudo apt-get install -y python3-pip




sudo pip install snallygaster
sudo pip install py-altdns
sudo pip install dnspython==2.0.0
sudo pip install truffleHog
sudo gem install wpscan
sudo apt install -y transmission-cli
sudo apt install -y awscli
sudo apt install -y snapd
sudo apt install -y sshpass
sudo systemctl enable --now snapd apparmor
sudo pip3 install ddgr
sudo pip3 install --upgrade pycurl
sudo pip3 install s3scanner
sudo pip3 install dnsgen
sudo pip3 install arjun
sudo apt-get install -y neofetch
sudo apt-get install -y googler
sudo apt-get install -y nmap
sudo apt-get install -y sublime-text
sudo apt-get install -y wget
sudo apt-get install -y figlet

touch $ToolsPath/VPS_buddy_trash/.common_tools
echo "done"

fi 

#create a tools folder in ~/
mkdir $ToolsPath
cd $ToolsPath/

#install go
 if [[ -z "$GOPATH" ]]
 then
 
echo "Installing Golang"
          wget https://dl.google.com/go/go1.18.linux-amd64.tar.gz
          sudo tar -xvf go1.18.linux-amd64.tar.gz
          sudo mv go /usr/local
          export GOROOT=/usr/local/go
          export GOPATH=$HOME/go
          export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
          echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
          echo 'export GOPATH=$HOME/go' >> ~/.bash_profile      
          echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile 
          source ~/.bash_profile		
	
cd ~/
 fi

 if [[ -f ./bash_profile ]]
then
 cat bash_profile >> ~/.bash_profile
source ~/.bash_profile
fi




#install aquatone
echo "Installing Aquatone"
go get github.com/michenriksen/aquatone
echo "done"



#install amass
echo "Installing amass"
sudo snap install amass
export PATH=$PATH:/snap/bin
cd $ToolsPath/
echo "done"


echo "installing LinEnum"
git clone https://github.com/rebootuser/LinEnum.git

echo "installing IIS-ShortName-Scanner"
git clone https://github.com/irsdl/IIS-ShortName-Scanner.git


echo "installing tplmap"
git clone https://github.com/epinna/tplmap.git


cd $ToolsPath/

echo "installing takeover"
git clone https://github.com/m4ll0k/takeover.git
cd takeover
python3 setup.py install

cd $ToolsPath/

echo "done"

cd $ToolsPath/

echo "installing SubDomainzer"
git clone https://github.com/nsonaniya2010/SubDomainizer.git
cd SubDomainizer
pip3 install -r requirements.txt
cd $ToolsPath/
echo "done"


echo "installing Linkfinder"
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
python setup.py install
pip3 install -r requirements.txt
cd $ToolsPath/
echo "done"

cd $ToolsPath/

echo "installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd $ToolsPath/
echo "done"

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd dirsearch
pip3 install -r requirements.txt
echo "done"

cd $ToolsPath/

echo "installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd $ToolsPath/
echo "done"

cd $ToolsPath/

echo "installing nmap"
sudo apt-get install -y nmap
echo "done"

cd $ToolsPath/

echo "installing httprobe"
go get -u github.com/tomnomnom/httprobe 
echo "done"

echo "installing hakrawler"
go install github.com/hakluke/hakrawler@latest
echo "done"

echo "Installing findomain"
wget https://github.com/Edu4rdSHL/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
echo "done"

cd $ToolsPath


cd ~/

go install github.com/tomnomnom/waybackurls@latest
go get -u github.com/tomnomnom/assetfinder
go install -v github.com/tomnomnom/anew@latest


go get -u github.com/tomnomnom/qsreplace



echo "installing nuclei"
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
nuclei -update-templates
echo "done"

echo "installing nuclei-templates"
git clone https://github.com/projectdiscovery/nuclei-templates.git
echo "done"

echo "installing httpx"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
echo "done"

echo "installing subfinder"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
echo "done"


echo "installing puredns"
go install github.com/d3mondev/puredns/v2@latest
echo "done"

echo "installing ffuf"
go install github.com/ffuf/ffuf@latest
echo "done"


echo "installing gospider"
GO111MODULE=on go get -u github.com/jaeles-project/gospider
echo "done"

cd $ToolsPath/

echo "downloading Seclists and other wordlists"
cd $ToolsPath/
aws s3 sync s3://assetnote-wordlists/data/ ./assetnote-wordlists --no-sign-request
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git
git clone https://github.com/TheKingOfDuck/fuzzDicts.git
git clone https://github.com/tennc/fuzzdb.git 
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/the-xentropy/samlists.git
cd $ToolsPath/SecLists/Discovery/
wget https://gist.githubusercontent.com/six2dez/a307a04a222fab5a57466c51e1569acf/raw -O subbrute
wget https://gist.githubusercontent.com/nullenc0de/96fb9e934fc16415fbda2f83f08b28e7/raw/146f367110973250785ced348455dc5173842ee4/content_discovery_nullenc0de.txt
wget https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt
cd $ToolsPath/SecLists/Discovery/DNS/
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd $ToolsPath/
echo "done"

echo "installing windscribe vpn"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7
echo "deb https://repo.windscribe.com/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/windscribe-repo.list
sudo apt-get update
sudo apt-get install windscribe-cli


echo "do you want to make a list of fresh resolvers (slow) [Y] OR you want to get fastly from a github repo  (Fast) [N]?"


read -n1 -p "[y,n]" doit 
case $doit in  
  y|Y) cd $ToolsPath/dnsvalidator
dnsvalidator -tL https://public-dns.info/nameservers.txt -threads 20 -o $ToolsPath/resolvers.txt
 ;; 
  n|N) wget https://raw.githubusercontent.com/BonJarber/fresh-resolvers/main/resolvers.txt -O $ToolsPath/resolvers.txt 

 ;; 
  *) echo "none of them excuted" ;; 
esac

echo "cleaning"
rm -r  $ToolsPath/VPS_buddy_trash
sudo apt autoremove
