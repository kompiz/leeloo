## A bunch of playbooks to make Multipass life easier

Or: a poor man's vagrant.

```$ ansible-playbook create-node.yml -K -e nodes=1``` creates one node. ```create-master.yml``` (for now) just creates a node with a different hostname.



Createinv: it creates an inventory for ansible, consisting of the hosts in multipass.



This right now is made to work on MacOS, but modifying the playbooks should be easy to make it run on your OS of choice. 

As I want bridged mode for the vm's (that hopefully will work with Metallb - remains to be seen), the playbook also takes care of that. It does however take for granted that the current hypervisor is VirtualBox.
