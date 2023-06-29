// Create an Azure Virtual network using bicep
param vNetPrefix string
param location string = resourceGroup().location

var vNetName = '${vNetPrefix}-vnet'

// Create the virtual network in bicep with two subnets
resource vnet 'Microsoft.Network/virtualNetworks@2020-06-01' = {
  name: vNetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
      {
        name: 'subnet1'
        properties: {
          addressPrefix: '10.0.0.1/24'
        }
      }
    ]
  }
}


