# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  # UPDATE REQUIRED!
  #
  # Change IP address as required 
  #
  config.vm.network :private_network, ip: "192.168.34.36"
  config.vm.synced_folder ".", "/var/www"
  # ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  # Modify these two lines if running 32-bit 
  config.vm.box = "precise64" # replace with "precise" if running 32-bit.
  config.vm.box_url = "http://files.vagrantup.com/precise64.box" # replace with "precise32" if running 32-bit.

  config.vm.network "forwarded_port", guest: 5858, host: 5858, auto_correct: true
  config.vm.provision :shell, :path => "install.sh"
  config.vm.provider "virtualbox" do |v|
    v.cpus = 1
  end
end