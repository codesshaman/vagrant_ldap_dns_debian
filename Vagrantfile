# -*- mode: ruby -*-
# vi: set ft=ruby :

###########################
## Network configuration ##
###########################

# All available ranges here
# 10.10.0.2 – 10.255.255.255
# 172.16.0.2 – 172.31.255.255
# 192.168.0.0 – 192.168.255.255
# (don't uncommit, for example only)

###########################
####### Default IP ########
#       192.168.56.56     #
###########################

# You can change ip here
# (Range of ip addresses
# Without last octet):
IP_ADDRESS = "192.168.56.56"

# CPU and memory
CPU_CORES_COUNT = "2"
MEMORY_COUNT = "2048"

# create machines config
Vagrant.configure(2) do |config|
    config.vm.box = "bento/debian-12.6"
    config.vm.provider "virtualbox" do |v|
    config.vm.synced_folder ".", "/ldapserver", type: "virtualbox"
        # for connect with SSH on both machines with no password
        id_rsa_pub = File.read("#{Dir.home}/.ssh/id_rsa.pub")
        config.vm.provision "copy ssh public key", type: "shell",
        inline: "echo \"#{id_rsa_pub}\" >> /home/vagrant/.ssh/authorized_keys"
    end

  # master node config
    config.vm.define 'debian' do |debian|
        debian.vm.network :private_network, 
        ip: IP_ADDRESS
        debian.vm.hostname = "ldapserver"
        debian.vm.provision "shell",
        privileged: true, path: "setup.sh"
        debian.vm.provider "virtualbox" do |v|
            v.name = "ldap_dns_server"
            v.memory = MEMORY_COUNT
            v.cpus = CPU_CORES_COUNT
        end
    end

end
