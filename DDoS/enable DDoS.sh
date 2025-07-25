#!/bin/bash
# Create DDoS protection plan
az network ddos-protection create \
  --resource-group security-rg \
  --name prod-ddos-plan

# Associate with VNet
az network vnet update \
  --resource-group prod-network-rg \
  --name prod-vnet-001 \
  --ddos-protection-plan prod-ddos-plan \
  --ddos-protection true