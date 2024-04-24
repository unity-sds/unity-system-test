#From the managed service feature directory: 

cp ../managed_services/template* . 
for f in template*; do mv "$f" "$(echo "$f" | sed s/template/$SERVICE_managed_service/)"; done
