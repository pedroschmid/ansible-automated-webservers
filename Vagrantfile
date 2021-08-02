# -*- mode: ruby -*-
# vi: set ft=ruby :

machines = {
  "ansible"  => { "memory" => "1024", "cpu" => "2", "ip" => "10.10.10.30", "image" => "ubuntu/focal64", "package_manager" => "apt" },
  "machine1" => { "memory" => "1024", "cpu" => "2", "ip" => "10.10.10.31", "image" => "debian/buster64", "package_manager" => "apt" },
  "machine2" => { "memory" => "1024", "cpu" => "2", "ip" => "10.10.10.32", "image" => "centos/7", "package_manager" => "yum" },
}

Vagrant.configure("2") do |config|

  machines.each do |name, conf|

    config.vm.define "#{name}" do |machine|

      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}.dev"
      machine.vm.network "private_network", ip: "#{conf["ip"]}"

      machine.vm.provider "virtualbox" do |virtualbox|
        virtualbox.name = "#{name}"
        virtualbox.cpus = "#{conf["cpu"]}"
        virtualbox.memory = "#{conf["memory"]}"
      end

      machine.vm.provision "shell", path: "#{name}" === "ansible" ? "scripts/ansible.sh" : "scripts/append-key.sh"
      
    config.vm.provision "shell", path: "scripts/hosts.sh" 

    end

  end

end
