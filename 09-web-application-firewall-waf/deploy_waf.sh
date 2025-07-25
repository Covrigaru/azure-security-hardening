#!/bin/bash
# Create Application Gateway with WAF
az network application-gateway create \
  --resource-group prod-network-rg \
  --name prod-app-gateway \
  --location eastus \
  --capacity 2 \
  --sku WAF_v2 \
  --http-settings-cookie-based-affinity Disabled \
  --frontend-port 80 \
  --http-settings-port 80 \
  --http-settings-protocol Http \
  --public-ip-address prod-agw-pip \
  --vnet-name prod-vnet-001 \
  --subnet prod-agw-subnet \
  --waf-policy prod-waf-policy