# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end

  config.vm.provision "shell" do |s|
    s.inline = <<-SHELL
      cd /vagrant
      make deps-ansible
      make ansible
      . d
      make ansible-playbook-test
    SHELL
    s.env = {
      'ANSIBLE_REQUIREMENTS' => 'tests/roles/phar_requirements.yml',
      'ANSIBLE_ROLES_PATH'   => 'tests/roles',
      'ANSIBLE_PLAYBOOK'     => 'tests/playbooks/phar.yml',
      }
  end

end
