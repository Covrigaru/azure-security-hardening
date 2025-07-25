#!/bin/bash
# Create Azure Firewall
az network firewall create \
  --resource-group hub-network-rg \
  --name hub-firewall-001 \
  --location eastus

# Network rules - Production
az network firewall network-rule create \
  --collection-name prod-network-rules \
  --firewall-name hub-firewall-001 \
  --resource-group hub-network-rg \
  --name AllowProdInternal \
  --protocols TCP \
  --source-addresses 10.1.0.0/16 \
  --destination-addresses 10.1.0.0/16 \
  --destination-ports 80 443 22 3389 \
  --action Allow \
  --priority 100

# Application rules - Production
az network firewall application-rule create \
  --collection-name prod-app-rules \
  --firewall-name hub-firewall-001 \
  --resource-group hub-network-rg \
  --name AllowWindowsUpdates \
  --source-addresses 10.1.0.0/16 \
  --protocols https=443 \
  --target-fqdns "*.windowsupdate.microsoft.com" "*.update.microsoft.com" \
  --action Allow \
  --priority 100