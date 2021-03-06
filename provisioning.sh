sudo apt-get update

# install java sun 8 jdk => http://askubuntu.com/questions/190582/installing-java-automatically-with-silent-option
sudo apt-get install -y python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

# Install ElasticSearch 2.x (http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/setup-repositories.html)
wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list
sudo apt-get update
sudo apt-get install elasticsearch
sudo update-rc.d elasticsearch defaults 95 10
#starting from 2.0 ES is listening only on localhost by default. Add the IP
echo "network.host: 192.168.29.200" >> /etc/elasticsearch/elasticsearch.yml
# SysV init distributions - Ubuntu
sudo /etc/init.d/elasticsearch start

# Install ElasticSearch Plugins
cd /usr/share/elasticsearch
sudo bin/plugin install license
sudo bin/plugin install marvel-agent
sudo bin/plugin install royrusso/elasticsearch-HQ


# Install Python Tools
sudo apt-get install build-essential autoconf flex bison libtool python-dev -y
