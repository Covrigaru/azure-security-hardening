# Create Production VNet
az network vnet create \
  --resource-group prod-network-rg \
  --name prod-vnet-001 \
  --address-prefix 10.1.0.0/16 \
  --subnet-name prod-web-subnet \
  --subnet-prefix 10.1.1.0/24

# Create Non-Production VNet
az network vnet create \
  --resource-group nonprod-network-rg \
  --name nonprod-vnet-001 \
  --address-prefix 10.2.0.0/16 \
  --subnet-name dev-subnet \
  --subnet-prefix 10.2.1.0/24