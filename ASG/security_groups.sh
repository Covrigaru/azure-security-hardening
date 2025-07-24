# Create ASGs for different tiers
az network asg create \
  --resource-group prod-network-rg \
  --name prod-web-asg

az network asg create \
  --resource-group prod-network-rg \
  --name prod-app-asg

az network asg create \
  --resource-group prod-network-rg \
  --name prod-db-asg

# Create NSG rule using ASGs
az network nsg rule create \
  --resource-group prod-network-rg \
  --nsg-name prod-nsg-001 \
  --name AllowWebToApp \
  --priority 200 \
  --source-asgs prod-web-asg \
  --destination-asgs prod-app-asg \
  --destination-port-ranges 8080 \
  --access Allow \
  --protocol Tcp