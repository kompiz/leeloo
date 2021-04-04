## A bunch of playbooks to make Multipass and k3s life easier

(Or: a poor man's vagrant.)

```$ ansible-playbook create-master.yml -K -e nodes=1``` creates one node, *k3s-master-123*. ```create-worker.yml``` creates a worker node. 



```$ ansible-playbook create-inv.yml``` creates an inventory for ansible, consisting of the hosts in multipass.



This right now is made to work on MacOS, but modifying the playbooks should be easy to make it run on your OS of choice. 




### Prerequisites:

* Multipass is installed
* VirtualBox is installed
* K3sup is installed
* You're using VirtualBox as Multipass' hypervisor

For the last point: on macOS, this is done by running the following: ```$ sudo multipass set local.driver=virtualbox```
Read more about this here: https://multipass.run/docs/using-virtualbox-in-multipass-macos
