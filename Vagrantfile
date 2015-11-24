Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.provision :shell, path: "provisioning.sh"
    config.vm.network "private_network", ip: "192.168.29.7"
    config.vm.network "forwarded_port", guest: 9200, host: 9200
    config.vm.define "ElasticSearch_1.7"
    config.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 1
    end
    config.vm.synced_folder "/tmp/es_backups", "/tmp/es_backups"
end
