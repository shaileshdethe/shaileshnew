#!/bin/sh

sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get install toilet -y
sudo apt-get install fortune -y
echo "$(echo 'Software Installation' | toilet -f term -F border --gay)"

		echo "\n\n Hello yourself! \n"
		fortune
		echo "\n What do you want to install?"
		echo "1.chrome \n2.sublime \n3.skype \n4.slack \n5.postman \n6.Docker \n7.Docker-Compose \n8.Git \n9.Zoom \n10.npm and node \n11.Angular CLI \n12. All"
		
while :
do
  read -p "Enter your choice:" INPUT_STRING
  case $INPUT_STRING in		
	1)	
		wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub |sudo apt-key add -
		echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
		sudo apt-get update
		sudo apt-get install google-chrome-stable -y
		echo "$(echo 'Chrome Installed' | toilet -f term -F border --metal)"	
		;;
	2)	sudo apt install snap
		snap install sublime-text --classic
		echo "$(echo 'Sublime Installed' | toilet -f term -F border --metal)"
		;;
	3)	 snap install skype --classic
		echo "$(echo 'Skype Installed' | toilet -f term -F border --metal)"
		;;
	4) 	snap install slack --classic
		echo "$(echo 'Slack Installed' | toilet -f term -F border --metal)"
		;;
	5) 	snap install postman
		echo "$(echo 'Postman Installed' | toilet -f term -F border --metal)"
		;;
	6) 	sudo apt install curl -y
		sudo usermod -aG docker $USER
		curl -sSL https://get.docker.com/ | sh
		echo "$(echo 'Docker Installed' | toilet -f term -F border --metal)"
		;;
	7) 	sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
		echo "$(echo 'Docker-Compose Installed' | toilet -f term -F border --metal)"
		;;
	8)	sudo apt install git -y
		echo "$(echo 'Git Installed' | toilet -f term -F border --metal)"
		;;
	9) 	sudo wget https://zoom.us/client/latest/zoom_amd64.deb
        	sudo apt install /home/$USER/Downloads/zoom_amd64.deb
        	echo "$(echo 'Zoom Installed' | toilet -f term -F border --metal)"
		;;
		
	10)	sudo rm -rf /usr/local/node-v10* && sudo rm -rf /usr/bin/npm && sudo rm -rf /usr/bin/node
		sudo wget https://nodejs.org/dist/v10.14.2/node-v10.14.2-linux-x64.tar.xz -P /usr/local/
        sudo tar -xvf /usr/local/node-v* -C /usr/local/
	    sudo ln -s /usr/local/node-v*/bin/node /usr/bin/node
        sudo ln -s /usr/local/node-v*/bin/npm /usr/bin/npm
		echo "$(echo 'Installed npm and node locally' | toilet -f term -F border --metal)"
        	node -v
	        npm -v
		;;
		
	11)	sudo npm install -g @angular/cli@8.0.3
		;;

	12)	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub |sudo apt-key add -
                echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
                sudo apt-get update
                sudo apt-get install google-chrome-stable -y
                echo "$(echo 'Chrome Installed' | toilet -f term -F border --gay)"      
                       
                sudo apt install snap
                snap install sublime-text --classic
        		echo "$(echo 'Sublime Installed' | toilet -f term -F border --metal)"
                
               	snap install skype --classic
                echo "$(echo 'Skype Installed' | toilet -f term -F border --metal)"
                
              	snap install slack --classic
                echo "$(echo 'Slack Installed' | toilet -f term -F border --metal)"
                
              	snap install postman
                echo "$(echo 'Postman Installed' | toilet -f term -F border --metal)"
               
              	sudo apt install curl -y
              	sudo usermod -aG docker $USER
                curl -sSL https://get.docker.com/ | sh
                echo "$(echo 'Docker Installed' | toilet -f term -F border --metal)"
                
              	sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
                echo "$(echo 'Docker-Compose Installed' | toilet -f term -F border --metal)"
                
              	sudo apt install git -y
                echo "$(echo 'Git Installed' | toilet -f term -F border --metal)"
	
				sudo wget https://zoom.us/client/latest/zoom_amd64.deb
				sudo apt install /home/$USER/Downloads/zoom_amd64.deb
				echo "$(echo 'Zoom Installed' | toilet -f term -F border --metal)"
	
		sudo wget https://nodejs.org/dist/v10.12.0/node-v10.12.0-linux-x64.tar.xz -P /usr/local/
       		sudo tar -xvf /usr/local/node-v* -C /usr/local/
        	sudo ln -s /usr/local/node-v*/bin/node /usr/bin/node
     		sudo ln -s /usr/local/node-v*/bin/npm /usr/bin/npm
		echo "$(echo 'Installed npm and node locally' | toilet -f term -F border --metal)"
		      	node -v
		       	npm -v

		;;	
	exit)
		echo "See you again!"
		break
		;;
	*)
		echo "Sorry, I don't understand"
		;;
 esac
done
echo 
echo "That's all folks!"
