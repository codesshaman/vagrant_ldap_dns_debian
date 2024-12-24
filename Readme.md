# Vagrant virual machine configuration for greenplum testing

Your need install vagrant and virtualbox for up this configuration.


Your need install [vagrant](https://github.com/hashicorp/vagrant-installers/releases/tag/v2.3.4.dev%2Bmain "vagrant") and  [virtualbox](https://www.virtualbox.org/ "virtualbox") for up this configuration. Optional you can use [make](https://www.gnu.org/software/make/ "make").

### Step 1

Download box bento/debian-12 for virtualbox from [vagrantup](https://portal.cloud.hashicorp.com/vagrant/discover/bento/debian-12.6 "vagrantup").


### Step 2

Clonr this repository: git clone https://github.com/codesshaman/vagrant_ldap_dns_debian.git

### Step 3

Copy box and go inside the repository folder:

``cp ~/Downloads/625c2333-fe09-46c6-88cd-e4d2e84e1795 path_to/vagrant_ldap_dns_debian/debian``

``cd vagrant_ldap_dns_debian``

### Step 4

Inicialize configuration:

``vagrant box add bento/debian-12.6 debian``

or with make:

``make build``

### Step 5

Install configuration:

``vagrant up --provider=virtualbox``

or with make:

``make``

### Step 6

Connect:

``ssh vagrant@192.168.58.88``

or with make:

``make connect``
