# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "tomcat8"

  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision "shell", path: "provision-tomcat.sh"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "TomcatDev"
    vb.memory = "1024"
    vb.cpus = 2
  end
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
