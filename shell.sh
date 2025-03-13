



cat > pods

# List the pods with wide  
for i in $(cat pods);  do kubectl -n vzcloud-dc12 get pods -o wide| grep $i; done
for i in $(cat pods);  do kubectl -n vzcloud-dc12 get pods -o wide | grep $i | awk '{print $7}' > /home/MUKKVE7/nodes && for i in $(cat /home/MUKKVE7/nodes);  do kubectl get nodes | grep $i | awk '{print $1,$2}'; done ; done



for i in $(cat pods); do
kubectl -n vzcloud-dc12 get pods -o wide| grep $i; done
done




for i in $(cat pods); do
kubectl -n vzcloud-dc12 get pods -o wide| grep $i
kubectl -n vzcloud-dc12 get pods -o wide | grep $i | awk '{print $7}' | kubectl get nodes | grep  ;
done






for i in $(cat pods); do
  kubectl -n vzcloud-dc12 get pods -o wide | grep $i | paste - -
  node_name=$(kubectl -n vzcloud-dc12 get pods -o wide | grep $i | awk '{print $7}')
  kubectl get nodes | grep $node_name
done



for i in $(cat pods); do
  node_name=$(kubectl -n vzcloud-dc12 get pods -o wide | grep $i | awk '{print $7}')
  node_status=$(kubectl get nodes | grep $node_name | awk '{print $2}')
  kubectl -n vzcloud-dc12 get pods -o wide | grep $i && echo "$node_status"
done


read -p "Name_Space:" name_space
for i in $(cat pods); do
  node_name=$(kubectl -n $name_space get pods -o wide | grep $i | awk '{print $7}')
  node_status=$(kubectl get nodes | grep $node_name | awk '{print $2}')
  echo "$(kubectl -n $name_space get pods -o wide | grep $i)   $node_status"
done

read -p "Name_Space:" name_space
for i in $(cat pods); do
  node_name=$(kubectl -n $name_space get pods -o wide | grep $i | awk '{print $7}')
  node_status=$(kubectl get nodes | grep $node_name | awk '{print $2}')
  echo "$(kubectl -n $name_space get pods -o wide | grep $i)   $node_status"
done







for i in $(cat hosts.txt);  do echo "$i" &&  awk '/^Added entries:/,/^The attributes/{print} /The attributes/{exit}' nodefile.txt | grep -v 'Added entries:' ; done





read -p "Name_Space:" name_space
read -p "Pod_Name:" pod_name
kubectl -n $name_space get pods -o jsonpath='{range .items[*]}{"\n"}{.metadata.name}{"\t"}{.metadata.namespace}{"\t"}{range .spec.containers[*]}{.name}{"=>"}{.image}{","}{end}{end}'|sort|column -t | grep $pod_name | awk -v RS=,  '{print NR "." $0}'




cass-mm-primary-rack1-11    0/1     ContainerCreating   0                3h58m   10.27.78.1    node-27-78.vcos.verizon.com     Ready
cass-mm-primary-rack1-12    0/1     Pending             0                3h58m   <none>        <none>                          
cass-mm-primary-rack1-13    1/1     Running             0                3h58m   10.27.80.1    node-27-80.vcos.verizon.com     Ready
cass-mm-primary-rack2-2     0/1     ContainerCreating   0                3h21m   10.40.69.1    node-40-69.vcos.verizon.com     Ready
cass-mm-primary-rack2-3     0/1     Pending             0                3h58m   <none>        <none>                          











for i in $(cat pods); do
  node_name=$(kubectl -n vzcloud-dc12 get pods -o wide | grep $i | awk '{print $7}')
  kubectl get nodes | grep $node_name
done






for i in $(cat pods); do
    kubectl -n vzcloud-dc12 get pods -o wide | grep $i | paste - -;
done



cass-mm-primary-rack1-11
cass-mm-primary-rack1-12
cass-mm-primary-rack1-13
cass-mm-primary-rack2-2
cass-mm-primary-rack2-3



for i in $(cat pods);  do kubectl -n vzcloud-dc12 get pods -o wide| grep $i; done
cass-mm-primary-rack1-11    0/1     ContainerCreating   0     136m    10.27.78.1    node-27-78.vcos.verizon.com  Ready  
cass-mm-primary-rack1-13    1/1     Running             0     136m    10.27.80.1    node-27-80.vcos.verizon.com  NotReady  
cass-mm-primary-rack2-2     0/1     ContainerCreating   0     99m     10.41.69.1    node-40-69.vcos.verizon.com  Ready  
cass-mm-primary-rack2-2     0/1     ContainerCreating   0     99m     10.47.69.1    node-40-69.vcos.verizon.com  Ready  
cass-mm-primary-rack2-3     0/1     ContainerCreating   0     99m     10.42.69.1    node-40-69.vcos.verizon.com  NotReady  
cass-mm-primary-rack2-5     0/1     ContainerCreating   0     99m     10.40.69.1    node-40-69.vcos.verizon.com  Ready  
cass-mm-primary-rack2-7     0/1     ContainerCreating   0     99m     10.48.69.1    node-40-69.vcos.verizon.com  NotReady  
cass-mm-primary-rack2-8     0/1     ContainerCreating   0     99m     10.40.67.1    node-40-69.vcos.verizon.com  Ready  
cass-mm-primary-rack2-6     0/1     ContainerCreating   0     99m     10.49.67.1    node-40-69.vcos.verizon.com  Ready  
cass-mm-primary-rack2-1     0/1     ContainerCreating   0     99m     10.42.64.1    node-40-69.vcos.verizon.com  NotReady  



for i in $(cat pods);  do kubectl -n vzcloud-dc12 get pods -o wide | grep $i | awk '{print $7}' > /home/MUKKVE7/nodes && for i in $(cat /home/MUKKVE7/nodes);  do kubectl get nodes | grep $i | awk '{print $1,$2}'; done ; done
node-27-78.vcos.verizon.com Ready
node-27-80.vcos.verizon.com Ready
node-40-69.vcos.verizon.com Ready







#!/bin/bash

# Assuming you have the list of pods and nodes in an array
pods=("cass-mm-primary-rack1-11" "cass-mm-primary-rack1-13" "cass-mm-primary-rack2-2")
nodes=("node-27-78.vcos.verizon.com" "node-27-80.vcos.verizon.com" "node-40-69.vcos.verizon.com")

# Loop through the arrays and display the status
for ((i=0; i<${#pods[@]}; i++)); do

done




mukkve7@jump2perryman:~$ ./check_pods.sh
cass-mm-primary-rack1-11    0/1     ContainerCreating     0     136m        node-27-78.vcos.verizon.com    node-27-78.vcos.verizon.com Ready
node-27-80.vcos.verizon.com Ready
node-40-69.vcos.verizon.com Ready
cass-mm-primary-rack1-13    0/1     ContainerCreating     0     136m        node-27-80.vcos.verizon.com    node-27-78.vcos.verizon.com Ready
node-27-80.vcos.verizon.com Ready
node-40-69.vcos.verizon.com Ready
cass-mm-primary-rack2-2    0/1     ContainerCreating     0     136m        node-40-69.vcos.verizon.com    node-27-78.vcos.verizon.com Ready
node-27-80.vcos.verizon.com Ready
node-40-69.vcos.verizon.com Ready




ingress-canary-76nwh,serve-healthcheck-canary; 
ingress-canary-9b72n,serve-healthcheck-canary; 
ingress-canary-gxqbb,serve-healthcheck-canary; 
ingress-canary-krpgt,serve-healthcheck-canary; 
ingress-canary-r9txp,serve-healthcheck-canary and 2 more...


ingress-canary-76nwh   0/1     ContainerCreating   162        69d   <none>          node-26-85.vcos.verizon.com    <none>           <none>   Ready
ingress-canary-9b72n   0/1     ContainerCreating   2          91d   <none>          node-40-71.vcos.verizon.com    <none>           <none>   NotReady
ingress-canary-gxqbb   0/1     ContainerCreating   2          91d   <none>          node-41-71.vcos.verizon.com    <none>           <none>   NotReady
ingress-canary-krpgt   1/1     Running             0          91d   172.18.26.7     node-27-78.vcos.verizon.com    <none>           <none>   Ready
ingress-canary-r9txp   0/1     ContainerCreating   2          91d   <none>          node-41-73.vcos.verizon.com    <none>           <none>   NotReady




# Assuming your data is stored in a file named 'data.txt'
cat data.txt | awk -F ',' '{
    for (i=1; i<=NF; i++) {
        if ($i ~ /^IP1=/) { IP1 = substr($i, 5) }
        else if ($i ~ /^ITRackTitle=/) { ITRackTitle = substr($i, 13) }
        else if ($i ~ /^NodeModel=/) { NodeModel = substr($i, 10) }
        else if ($i ~ /^NodeClass=/) { NodeClass = substr($i, 10) }
        else if ($i ~ /^StorageService=/) { StorageService = substr($i, 15) }
        else if ($i ~ /^K8sCluster=/) { K8sCluster = substr($i, 12) }
    }
    print "IP1:", IP1, "ITRackTitle:", ITRackTitle, "NodeModel:", NodeModel, "NodeClass:", NodeClass, "StorageService:", StorageService, "K8sCluster:", K8sCluster
}'





















# Assuming your data is stored in a file named 'data.txt'
cat log | awk -F ',' '{
    for (i=1; i<=NF; i++) {
        if ($i ~ /^IP1=/) { IP1 = substr($i, 5) }
        else if ($i ~ /^ipmi_ip=/) { ipmi_ip = substr($i, 13) }		
        else if ($i ~ /^ITRackTitle=/) { ITRackTitle = substr($i, 13) }
        else if ($i ~ /^NodeModel=/) { NodeModel = substr($i, 10) }
        else if ($i ~ /^NodeClass=/) { NodeClass = substr($i, 10) }
        else if ($i ~ /^StorageService=/) { StorageService = substr($i, 15) }
        else if ($i ~ /^K8sCluster=/) { K8sCluster = substr($i, 12) }
    }
    print "IP1:", IP1, "ipmi_ip", "ITRackTitle:", ITRackTitle, "NodeModel:", NodeModel, "NodeClass:", NodeClass, "StorageService:", StorageService, "K8sCluster:", K8sCluster
}'
