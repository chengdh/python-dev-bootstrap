Vagrant.configure("2") do |config|
  config.vm.box = "openerp-dev-box"
  config.vm.box_url = "http://bit.ly/vagrant-lxc-precise64-2013-10-23"
  config.vm.hostname = "openerp-dev-box"
  config.vm.synced_folder "src", "/home/vagrant/openerp-dev-box"
  config.vm.network :forwarded_port, guest: 8069, host: 8069
  config.vm.network :forwarded_port, guest: 8700, host: 8700
  config.vm.network :forwarded_port, guest: 5432, host: 5432
  #将ssh端口映射到2222
  config.vm.network :forwarded_port, guest: 22, host:  3333

  config.vm.provider :lxc do |lxc|
    # Don't boot with headless mode
    # vb.gui = true
  
    # Use VBoxManage to customize the VM. For example, to change memory and 
    # allow symlinks to be created in the shared folder:
    lxc.customize 'cgroup.memory.limit_in_bytes', '1024M'
  end

   config.vm.provision :puppet do |puppet|
     puppet.manifests_path = "manifests"
     puppet.manifest_file  = "init.pp"
     puppet.module_path = "modules"
     puppet.options = "--verbose --debug"
     #puppet.options = "--verbose --noop"
   end
end
