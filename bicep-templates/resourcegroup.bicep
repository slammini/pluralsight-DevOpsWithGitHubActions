// Create a resource group in Azure
param resourceGroupName string
param location string

targetScope = 'subscription'

// Create the resource group with bicep
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}
