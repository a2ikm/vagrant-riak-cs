# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :s1 do |s|
    s.vm.box = "opscode-centos-6.5"
    s.vm.network :private_network, ip: "192.168.50.13"
    s.vm.hostname = "s1"
  end

  config.vm.define :s2 do |s|
    s.vm.box = "opscode-centos-6.5"
    s.vm.network :private_network, ip: "192.168.50.14"
    s.vm.hostname = "s2"
  end

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
  end
end
