# Create Log Analytics workspace
az monitor log-analytics workspace create \
  --resource-group security-rg \
  --workspace-name prod-sentinel-workspace

# Enable Azure Sentinel
az sentinel workspace create \
  --resource-group security-rg \
  --workspace-name prod-sentinel-workspace