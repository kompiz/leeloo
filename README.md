## A bunch of playbooks to make Multipass life easier

Or: a poor man's vagrant.

```$ ansible-playbook create-node.yml -K -e nodes=1``` creates one node, *k8s-node-123*. ```create-master.yml``` (for now) just creates a node with a different hostname, ie *k8s-master-123*.



```$ ansible-playbook create-inv.yml``` creates an inventory for ansible, consisting of the hosts in multipass.



This right now is made to work on MacOS, but modifying the playbooks should be easy to make it run on your OS of choice. 




### Prerequisites:

* Multipass is installed
* VirtualBox is installed
* You're using VirtualBox as Multipass' hypervisor

On macOS, this is done by running the following: ```$ sudo multipass set local.driver=virtualbox```
Read more about this here: https://multipass.run/docs/using-virtualbox-in-multipass-macos
