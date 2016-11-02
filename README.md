## For Devstack beginner

### Installation

- Download and install [Vagrant](https://www.vagrantup.com)
- Clone the folder
- Check your private IP configuration in hosts file
- At the folder you just cloned, run start vagrant

			vagrant up

- SSH to the vagrant box

			vagrant ssh

- Initialize Devstack

			./devstack/stack.sh

- Get password  

			source openrc [OS_USERNAME] [OS_PROJECT_NAME]
			echo $OS_USERNAME
			echo $OS_PASSWORD
