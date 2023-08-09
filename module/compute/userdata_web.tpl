#!/bin/bash

# Update package information and install Nginx
sudo apt update
sudo apt install -y nginx

# Create a reverse proxy configuration
sudo tee /etc/nginx/sites-available/reverse-proxy.conf <<EOF
server {
    listen 80;
    server_name example.com;  # Replace with your domain or IP

    location / {
        proxy_pass http://backend-server;  # Replace with the backend server's address
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOF

# Enable the reverse proxy configuration
sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/

# Test the configuration
sudo nginx -t

# Restart Nginx to apply the changes
sudo systemctl restart nginx
