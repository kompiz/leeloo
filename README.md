## A bunch of playbooks to make Multipass and k3s life easier

(Or: a poor man's vagrant.)

```$ ansible-playbook create-master.yml -K -e nodes=1``` creates one node, *k3s-master-123*. ```create-worker.yml``` creates a worker node. 



```$ ansible-playbook create-inv.yml``` creates an inventory for ansible, consisting of the hosts in multipass.


In ```roles/createvm/files/cloud-init.yml``` you might want to make some changes - put your username and public ssh key there.





### Prerequisites:

* Multipass is installed
* K3sup is installed


Notes: v1.1 and before was using VirtualBox as hypervisor, but I couldn't get k3s nodes to talk to the master. If you would like to try, just uncomment the tasks in ```roles/createvm/tasks/main.yml```.

