#!/bin/bash
# Enable JIT access policy
az security jit-policy create \
  --resource-group prod-compute-rg \
  --name prod-jit-policy \
  --virtual-machines "prod-vm-001" "prod-vm-002" \
  --ports '[{"number": 22, "protocol": "TCP", "allowedSourceAddressPrefix": "10.0.0.0/8", "maxRequestAccessDuration": "PT3H"}]'