# ElasticSearch Vagrant Machine

## Installed Packages:

- Ubuntu 14.04
- Sun Java 8
- ElasticSearch 2.1.x
- ElastisSearch Plugins:
 - marvel
 - elasticsearch-HQ
 - kopf


## Quick Start
Clone this repository in your local machine and run vagrant up:

    $>git clone git@github.com:RosarioGrosso/vagrant-ubuntu-elasticsearch.git es-vagrant
    $>cd es-vagrant
    $>vagrant up

Vagrant will start a new machine with elasticsearch 2.x at 192.168.29.200

I suggest to add a DNS to your /etc/hosts file:

    $>sudo echo "192.168.29.200 elasticsearch.vagrant" >> /etc/hosts

You can connect to ElasticSearch pointing your browser at
 - http://192.168.29.200:9200/
 - or http://elasticsearch.vagrant:9200/ (if you are using the dns)

## ElasticSearch Plugins
 - Marvel http://elasticsearch.vagrant:9200/_plugin/marvel
 - ElasticSearch HQ http://elasticsearch.vagrant:9200/_plugin/hq/


 Happy Hacking
