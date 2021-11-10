#!/bin/bash
# Tell apt-get we're never going to be able to give manual
# feedback:
export DEBIAN_FRONTEND=noninteractive

# Update the package listing, so we know what package exist:
apt-get update

# Install security updates:
apt-get -y upgrade

apt-get -y install build-essential zlib1g-dev libssl-dev libncurses-dev libffi-dev libsqlite3-dev libreadline-dev libbz2-dev git curl

git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git
./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer

# Delete cached files we don't need anymore (note that if you're
# using official Docker images for Debian or Ubuntu, this happens
# automatically, you don't need to do it yourself):
apt-get clean
# Delete index files we don't need anymore:
rm -rf /var/lib/apt/lists/*
