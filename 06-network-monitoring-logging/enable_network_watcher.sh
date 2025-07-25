#!/bin/bash
# Enable Network Watcher
az network watcher configure \
  --resource-group NetworkWatcherRG \
  --locations eastus \
  --enabled

# Enable NSG Flow Logs
az network watcher flow-log create \
  --resource-group prod-network-rg \
  --name prod-nsg-flow-logs \
  --nsg prod-nsg-001 \
  --storage-account prodlogstorage \
  --retention 30 \
  --traffic-analytics true \
  --workspace prod-log-analytics