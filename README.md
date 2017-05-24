### Creating a new Vagrant box

Clone this repo e.g. to a local directory called `vagrant`

Update the indicated lines in `Vagrantfile` and `install.sh` to suit your particular requirements.

Then: 

`cd vagrant`
`vagrant up`

This will take a few minutes, depending on the speed of your internet connection. 

When it finishes:

`vagrant halt`
`sudo vagrant plugin install vagrant-vbguest`
`vagrant up`

This last step will cause the guest additions to be kept up-to-date. It's optional but without it, there will be a warning message each time the Vagrant machine is booted.

Finally, `ssh` into the Vagrant machine: `vagrant ssh` and `cd` into the root folder (shared between the guest and host machines). For example, if the synced folder specified in the `Vagrantfile` was changed to `/var/www/server` then `cd /var/www/server`
