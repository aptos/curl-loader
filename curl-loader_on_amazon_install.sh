# CURL LOADER INSTALL
wget http://sourceforge.net/projects/curl-loader/files/latest/download?source=files
bunzip2 curl-loader-0.56.tar.bz2 
tar -xvf curl-loader-0.56.tar 
cd curl-loader-0.56
sudo yum install make libcurl-devel libevent binutils gcc patch openssl-devel
make
sudo ./curl-loader 

# Tuning
# Update ulimit permanently
# sudo vi /etc/security/limits.conf
# * soft nofile 50000
# * hard nofile 50000
# sudo reboot
#
# allocate more memory for tcp
# sudo /sbin/sysctl net.ipv4.tcp_mem="131071 131071 131071"
