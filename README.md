## A bunch of playbooks to make Multipass life easier

Createvm: takes an external variable, 'nodes', which defines how many vm's you'd like to create.
This right now is made to work on MacOS. As I want bridged mode for them (that hopefully will work with Metallb - remains to be seen), the playbook also takes care of that. It does however take for granted that the current hypervisor is VirtualBox. Shouldn't be too weird to discover what the host OS is, so maybe it could be made somewhat OS agnostic in a coming version? 

Createinv: it creates an inventory for ansible, consisting of the hosts in multipass.
