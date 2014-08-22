Overview
========

This is the Chef repository used for the VMworld 2014 Chef and vCloud Air demo.

Chef Repository
===============
This demonstration is intended for use with a Chef server. Upload the cookbooks managed with Berkshelf and the roles.

    berks upload --no-freeze --halt-on-frozen -b ./Berksfile
    knife role from file demodb.rb demoapp.rb demolb.rb

Preparation
===========
We can connect to the vCloud Air API remotely, but for purposes of the demo we are using a bastion node within the vCloud Air network so we can also connect to the vSphere installation over a secure tunnel.
