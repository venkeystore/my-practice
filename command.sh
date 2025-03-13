#To login prove servers
alias perryman='cd /Users/mukkve7/.ssh && ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" devops@10.136.33.1'
alias arlington='cd /Users/mukkve7/.ssh && ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" devops@10.6.33.1'
alias twinsburg='cd /Users/mukkve7/.ssh && ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" devops@10.13.66.1'
alias magellan='cd /Users/mukkve7/.ssh && ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" devops@10.161.33.1'
alias omaha='cd /Users/mukkve7/.ssh && ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" devops@10.212.33.1'
# Node login
alias node='read -p "Enter Ip:" host && cd /Users/mukkve7/.ssh && ssh -i id_rsa  -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" montana@$host'
alias cserver='ssh mukkve7@perrymandc-lkjump'
#Key_download
alias key='curl 'http://199.219.37.214/devops_prod/admin/ssh-retrieve.php?file=..%2Fsigned-keys%2Fvenkateswara.reddy.mukkamalla%40in.verizon.com%2F.ssh%2Fid_rsa-cert.pub' > /Users/mukkve7/.ssh && ls -ltr /Users/mukkve7/.ssh/id_rsa-cert.pub && ssh-keygen -Lf /Users/mukkve7/.ssh/id_rsa-cert.pub | grep Valid'
alias openshift='ssh -D 3142 -Nf -o "ProxyCommand=ssh -W %h:%p perrymandc-lkjump.verizon.com" montana@10.134.30.1'



alias node='echo "EnterIp:\c"
read host
ssh -i id_rsa  -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" montana@$host'

#To login prove servers
alias perryman='ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" devops@10.136.33.1'
alias arlington='ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" devops@10.6.33.1'
alias twinsburg='ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" devops@10.13.66.1'
alias magellan='ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" devops@10.161.33.1'
alias omaha='ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" devops@10.212.33.1'
# Node login
alias node='read -r "Enter Ip:" host && cd /Users/mukkve7/.ssh && ssh -i id_rsa  -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" montana@$host'
alias cserver='ssh mukkve7@perrymandc-lkjump'
alias openshift='ssh -D 3142 -Nf -o "ProxyCommand=ssh -W %h:%p perrymandc-lkjump.verizon.com" montana@10.134.30.1'


echo -e' "Enter_Node_IP:" read host' && ssh -i id_rsa  -o ProxyCommand="ssh -W %h:%p mukkve7@twinsburgdc-lkjump" montana@$host

alias cserver='ssh mukkve7@perrymandc-lkjump'
alias openshift='ssh -D 3142 -Nf -o "ProxyCommand=ssh -W %h:%p perrymandc-lkjump.verizon.com" montana@10.134.30.1'

#Key_download
alias key='curl 'http://199.219.37.214/devops_prod/admin/ssh-retrieve.php?file=..%2Fsigned-keys%2Fvenkateswara.reddy.mukkamalla%40in.verizon.com%2F.ssh%2Fid_rsa-cert.pub' > /Users/mukkve7/.ssh/id_rsa-cert.pub && ls -ltr /Users/mukkve7/.ssh/id_rsa-cert.pub && ssh-keygen -Lf /Users/mukkve7/.ssh/id_rsa-cert.pub | grep Valid'

curl 'http://199.219.37.214/devops_prod/admin/ssh-retrieve.php?file=..%2Fsigned-keys%2Fvenkateswara.reddy.mukkamalla%40in.verizon.com%2F.ssh%2Fid_rsa-cert.pub' > /Users/mukkve7/.ssh/id_rsa-cert.pub && ls -ltr /Users/mukkve7/.ssh/id_rsa-cert.pub && ssh-keygen -Lf /Users/mukkve7/.ssh/id_rsa-cert.pub | grep Valid


echo -e 'Enter Ip:\'
read host
ssh -i id_rsa  -o ProxyCommand='ssh -W %h:%p mukkve7@twinsburgdc-lkjump' montana@$host


for i in $(cat hosts.txt); do ping -c3 $i; done


Updated script

#To login prove servers;
alias arlington='ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@140.223.55.130" devops@10.6.33.1'
alias perryman='ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@140.223.55.130" devops@10.136.33.1'
alias twinsburg='ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@140.223.55.130" devops@10.13.66.1'
alias magellan='ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@140.223.55.130" devops@10.161.33.1'
alias omaha='ssh -i  id_rsa -o ProxyCommand="ssh -W %h:%p mukkve7@140.223.55.130" devops@10.212.33.1'
# Node login;
alias node='read -p "Enter Ip:" host && cd /home/mobaxterm/.ssh && ssh -i id_rsa  -o ProxyCommand="ssh -W %h:%p mukkve7@140.223.55.130" montana@$host'
alias ocpnode='read -p "Enter Ip:" host && ssh -i id_rsa  -o ProxyCommand="ssh -W %h:%p mukkve7@140.223.55.130" mukkve7@$host'
alias oc_cluster='ssh mukkve7@140.223.55.130'
alias oc_cluster1='ssh mukkve7@arlingtondc-lkjump'






cat >> /etc/baseprofile



source /etc/baseprofile



10.107.86, 10.107.84, 10.108.84, 10.107.85, 10.108.85



alert-monitoring/update-alerts-spreadsheet.sh





Fileintegrety:


#!/bin/bash

# Initialize variables
current_node=""
added_entries=""
removed_entries=""
changed_entries=""


# Function to print data in table format
print_table() {
    printf "| %-40s | %-60s | %-60s |\n" "$current_node" "$added_entries" "$changed_entries" "$changed_entries"
}

# Main loop to read the log file
while IFS= read -r line; do
    # Check if the line contains node information
    if [[ $line == aide-node* ]]; then
        # If a node is already processed, print its data
        if [ -n "$current_node" ]; then
            print_table
        fi
        # Extract and store the node information
        current_node="$line"
        added_entries=""
		removed_entries=""
        changed_entries=""
    # Check if the line contains added entries
    elif [[ $line == "Added entries:" ]]; then
        # Start capturing added entries
        in_added_entries=true
    # Check if the line contains changed entries
    elif [[ $line == "Changed entries:" ]]; then
        # Start capturing changed entries
        in_added_entries=false		
    # Check if the line contains changed entries
    elif [[ $line == "Changed entries:" ]]; then
        # Start capturing changed entries
        in_added_entries=false
    # Append entry to the appropriate variable
    elif [ -n "$current_node" ]; then
        if [ "$in_added_entries" = true ]; then
            added_entries+="$line\n"
        else
            changed_entries+="$line\n"
        fi
    fi
done < "$1"

# Print the last node's data
if [ -n "$current_node" ]; then
    print_table
fi









=================================================================================================================


#!/bin/bash

# Define function to print table headers
print_headers() {
    printf "| %-35s | %-20s | %-20s | %-20s |\n" "Node" "Added Entries" "Changed Entries" "Removed Entries"
    printf "| %-35s | %-20s | %-20s | %-20s |\n" "-----------------------------------" "--------------------" "--------------------" "--------------------"
}

# Define function to print table rows
print_row() {
    printf "| %-35s | %-20s | %-20s | %-20s |\n" "$1" "$2" "$3" "$4"
}

# Initialize variables
node=""
added_entries=""
changed_entries=""
removed_entries=""

# Print table headers
print_headers

# Loop through each line in the log file
while IFS= read -r line; do
    # Check if the line contains node information
    if [[ $line == *"aide-node-fileintegrity-node"* ]]; then
        # If node is not empty, print the previous node's data as a row
        if [[ ! -z $node ]]; then
            print_row "$node" "$added_entries" "$changed_entries" "$removed_entries"
        fi
        # Extract node information
        node=$(echo "$line" | sed 's/-failed//')
        # Reset entries for the next node
        added_entries=""
        changed_entries=""
        removed_entries=""
    elif [[ $line == "Added entries:" ]]; then
        # Set flag to indicate added entries
        current_entries="added"
    elif [[ $line == "Changed entries:" ]]; then
        # Set flag to indicate changed entries
        current_entries="changed"
    elif [[ $line == "Removed entries:" ]]; then
        # Set flag to indicate removed entries
        current_entries="removed"
    else
        # Append entry to the appropriate category
        case $current_entries in
            "added")
                added_entries+="$line\n"
                ;;
            "changed")
                changed_entries+="$line\n"
                ;;
            "removed")
                removed_entries+="$line\n"
                ;;
        esac
    fi
done < "$1"

# Print the last node's data as a row
print_row "$node" "$added_entries" "$changed_entries" "$removed_entries"


===================================================================================================================================    