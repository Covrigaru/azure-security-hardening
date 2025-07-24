# Create NSG
az network nsg create \
  --resource-group prod-network-rg \
  --name prod-nsg-001

# Deny all inbound internet traffic
az network nsg rule create \
  --resource-group prod-network-rg \
  --nsg-name prod-nsg-001 \
  --name DenyAllInboundInternet \
  --priority 100 \
  --source-address-prefixes Internet \
  --destination-address-prefixes '*' \
  --destination-port-ranges '*' \
  --access Deny \
  --protocol '*'