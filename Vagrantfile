Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.synced_folder ".", "/vagrant"
  config.vm.boot_timeout = 600
  config.vm.provision "shell", path: "comands.sh"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "projeto1"
    vb.cpus = "2"
    vb.memory = "1024"
  end
end
