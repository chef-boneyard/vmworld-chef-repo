Overview
========

This is the Chef repository used for the VMworld 2014 Chef and vCloud Air demo.

Chef Repository
===============
This demonstration is intended for use with a Chef server. Upload the cookbooks managed with Berkshelf and the roles.

    berks upload --no-freeze --halt-on-frozen -b ./Berksfile
    knife role from file base.rb database.rb webapp.rb

Preparation
===========
We can connect to the vCloud Air API remotely, but for purposes of the demo we are using a bastion node within the vCloud Air network so we can also connect to the vSphere installation over a
We have a bastion node within the vCloud Air service that we use for talking


The files for VCAD are included in the repository. The "Chef-managed Service" installs the Chef client, `client.rb` and `/etc/chef/vcad.json` on the node. The node connects to the Chef server specified in the Properties for `chef_server_url` and `chef_server_organization` using the validation.pem at the `validation_key` URL. With the public IP address of the HAProxy server, you can visit the URLs http://IP/appd/ for the application or http://IP/haproxy for the HAProxy stats.
