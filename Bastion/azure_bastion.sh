# Create Bastion subnet
az network vnet subnet create \
  --resource-group prod-network-rg \
  --name AzureBastionSubnet \
  --vnet-name prod-vnet-001 \
  --address-prefix 10.1.100.0/27

# Create Bastion host
az network bastion create \
  --resource-group prod-network-rg \
  --name prod-bastion \
  --public-ip-address prod-bastion-pip \
  --vnet-name prod-vnet-001 \
  --location eastus