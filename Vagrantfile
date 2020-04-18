# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "ubuntu/bionic64"
  
  # config hostname
  config.vm.hostname = "SanYeUbuntu"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = false
  
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "code/", "/project/code" , owner: "root", group: "root", create: true
  config.vm.synced_folder "data/", "/project/data" , owner: "root", group: "root", create: true

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    # vb.gui = true
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
    # config name in VirtualBox
    vb.name = "SanYeUbuntu"
  end
  
  # View the documentation for the provider you are using for more
  # information on available options.

  # exec provision
  config.vm.provision "shell", path: "init.sh"
end
