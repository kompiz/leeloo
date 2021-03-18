#/bin/bash
for vm in $(multipass list | tail -n +2  | awk '{print $1}')  
  do multipass delete $vm --purge  
done
