#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade


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

echo "installing bash_profile aliases from recon_profile"
git clone https://github.com/nahamsec/recon_profile.git
cd recon_profile
cat bash_profile >> ~/.bash_profile
source ~/.bash_profile
cd ~/ali/
echo "done"



#install go
if [[ -z "$GOPATH" ]];then
echo "It looks like go is not installed, would you like to install it now"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo "Installing Golang"
					wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
					sudo tar -xvf go1.13.4.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi


#Don't forget to set up AWS credentials!
echo "Don't forget to set up AWS credentials!"
apt install -y awscli
echo "Don't forget to set up AWS credentials!"



#create a ali folder in ~/
mkdir ~/ali
cd ~/ali/

#install hakrawler
echo "Installing hakrawler"
go get github.com/hakluke/hakrawler
cd ~/ali/
echo "done"

#install SubDomainizer
echo "Installing SubDomainizer"
git clone https://github.com/nsonaniya2010/SubDomainizer.git
cd SubDomainizer
pip3 install -r requirements.txt
cd ~/ali/
echo "done"


#install subfinder
echo "Installing subfinder"
git clone https://github.com/projectdiscovery/subfinder.git
cd subfinder/cmd/subfinder
go build .
mv subfinder /usr/local/bin/
cd ~/ali/
echo "done"

#install github-subdomains
echo "Installing github-search"
git clone https://github.com/gwen001/github-search.git
cd ~/ali/
echo "done"


echo "downloading Seclists"
cd ~/ali/
git clone https://github.com/danielmiessler/SecLists.git
cd ~/ali/SecLists/Discovery/DNS/
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd ~/ali/
echo "done"



echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All ali are set up in ~/ali"
ls -la
echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"