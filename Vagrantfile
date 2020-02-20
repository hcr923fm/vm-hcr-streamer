VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.network "public_network", ip: "192.168.0.129"
  config.vm.hostname = "hcr-stream"

  config.vm.provider :virtualbox do |vbox|
    vbox.customize ["modifyvm", :id, "--memory", 2048,
    	"--cpus", 2,
    	"--audio","dsound",
    	"--audioin", "on",
    	"--audioout","off",
    	"--audiocontroller", "hda"]
  end

  config.vm.provision :shell, :path => "init.sh"
end