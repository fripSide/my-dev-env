$script = <<-SCRIPT
sudo apt update
sudo apt install --no-install-recommends -y wget curl vim git \
	zsh gawk tmux zip strace net-tools build-essential gcc g++
date > /etc/vagrant_provisioned_at
SCRIPT

Vagrant.configure("2") do |config|
	config.vm.box = "generic/ubuntu2204"
	config.vm.hostname = "ubuntu22"
	config.vm.provider "hyperv" do |v|
		v.maxmemory = 8192
		v.memory = 4096
		v.cpus = 2
	end
	config.vm.provision "shell", inline: $script
end
