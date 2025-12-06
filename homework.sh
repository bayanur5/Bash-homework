#!/bin/bash

function wordpress(){
       	echo "Installing Apache and PHP..."
	    sudo yum install httpd php php-mysqlnd php-json php-xml php-gd php-intl php-mbstring php-zip php-curl -y

	    echo "Starting Apache..."
	    sudo systemctl enable httpd
	    sudo systemctl start httpd

	    echo "Downloading WordPress..."
	    cd /var/www/html
	    sudo rm -rf ./*

	    sudo wget https://wordpress.org/latest.tar.gz
            sudo tar -xvzf latest.tar.gz
   	    sudo mv wordpress/* .
	    sudo rm -rf wordpress latest.tar.gz

	    echo "Setting permissions..."
	    sudo chown -R apache:apache /var/www/html

	    echo "Restarting Apache..."
	    sudo systemctl restart httpd

	    echo "WordPress installation complete!"
       	echo "Visit your instance public IP to see the language selection page."
}


function binary(){
	echo "Installing tree..."
    sudo yum install tree -y

    echo "Adding Terraform official repository..."
    sudo yum install -y yum-utils
    sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

    echo "Installing Terraform..."
    sudo yum install terraform -y

    echo "Binary installation complete!"
}

wordpress
binary

echo "All installations completed successfully!"

