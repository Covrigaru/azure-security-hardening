#!/bin/bash
# Create private endpoint for SQL Database
az network private-endpoint create \
  --resource-group prod-data-rg \
  --name sql-private-endpoint \
  --vnet-name prod-vnet-001 \
  --subnet prod-db-subnet \
  --private-connection-resource-id "/subscriptions/{subscription-id}/resourceGroups/prod-data-rg/providers/Microsoft.Sql/servers/prod-sql-server" \
  --group-id sqlServer \
  --connection-name sql-connection