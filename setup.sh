sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo setenforce 0
sed -i s\/^SELINUX=.*$\/SELINUX=disabled\/ \/etc\/selinux\/config
sudo yum install git -y
git clone https://github.com/atlasblue/webprod.git 
mv -f webprod/* /usr/share/nginx/html


