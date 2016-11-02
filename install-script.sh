DEVSTACK_DIR=devstack

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y git

# to devstack
if [ ! -d "$DEVSTACK_DIR" ]; then
  git clone https://git.openstack.org/openstack-dev/devstack $DEVSTACK_DIR
fi

# owner
if [ -d "$DEVSTACK_DIR" ]; then
  chown -R ubuntu:ubuntu $DEVSTACK_DIR
fi

cd $DEVSTACK_DIR

if [[ "$PWD" =~ $DEVSTACK_DIR ]]; then
  git fetch origin
  git checkout stable/newton
  printf '[[local|localrc]]\nADMIN_PASSWORD=admin\nDATABASE_PASSWORD=$ADMIN_PASSWORD\nRABBIT_PASSWORD=$ADMIN_PASSWORD\nSERVICE_PASSWORD=$ADMIN_PASSWORD\n\n' > local.conf
  chown ubuntu:ubuntu local.conf
  echo 'created: local.conf'
fi
