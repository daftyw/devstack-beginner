## For Devstack beginner

### Installation

- Download and install [Vagrant](https://www.vagrantup.com)
- Clone the folder
- Check your private IP configuration in hosts file
- At the folder you just cloned, run start vagrant

			vagrant up

- SSH to the vagrant box

			vagrant ssh

- Initialize Devstack, wait util it done (usually took more than 30 mins)

			./devstack/stack.sh

- Get password  

			$ source openrc [OS_USERNAME] [OS_PROJECT_NAME]

			$ echo $OS_USERNAME $OS_PASSWORD

- Checkout in your web browser http://localhost:8080/dashboard

### Troubleshoot

#### 1. Cannot connect to vagrant

- Try to find that your private IP (VirtualBox's host-only network)
- Put it into **'hosts'** file
- Run
			vagrant provision


#### 2. Cannot start service (such as "nova-api", "glance-api", etc.)

- Set __admin__ user

			OS_USERNAME=admin

- Export to another bash enviroment

			export OS_USERNAME
