# Create connection monitor
az network watcher connection-monitor create \
  --resource-group NetworkWatcherRG \
  --name prod-connectivity-monitor \
  --location eastus \
  --source-resource prod-vm-001 \
  --dest-resource prod-sql-server \
  --dest-port 1433