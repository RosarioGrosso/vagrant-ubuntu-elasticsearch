# ElasticSearch Vagrant Machine

## BRANCH Master
## Installed Packages:

- Ubuntu 14.04
- Sun Java 8
- ElasticSearch 2.0
- ElastisSearch Plugins:










## BRANCH 1.7
## Installed Packages:

- Ubuntu 14.04
- Sun Java 8
- ElasticSearch 1.7.x
- ElastisSearch Plugins:
 - marvel
 - elasticsearch-HQ
 - kopf


## Quick Start
Clone this repository in your local machine and run vagrant up:

    $>git clone git@github.com:RosarioGrosso/vagrant-ubuntu-elasticsearch.git es-vagrant
    $>cd es-vagrant
    $>vagrant up

Vagrant will start a new machine with elasticsearch 1.7 at 192.168.29.7

I suggest to add a DNS to your /etc/hosts file:

    $>sudo echo "192.168.29.7 elasticsearch17.dev" >> /etc/hosts

You can connect to ElasticSearch pointing your browser at
 - http://192.168.29.7:9200/
 - or http://elasticsearch17.dev:9200/ (if you are using the dns)

## ElasticSearch Plugins
 - Marvel http://elasticsearch17.dev:9200/_plugin/marvel
 - ElasticSearch HQ http://elasticsearch17.dev:9200/_plugin/HQ/
 - kopf http://elasticsearch17.dev:9200/_plugin/kopf/

 Happy Hacking
