param location string = 'eastus'
param vnetName string = 'myVnet'
param subnetName string = 'mySubnet'
param addressPrefix string = '10.0.0.0/16'
param subnetPrefix string = '10.0.0.0/24'



resource vnet 'Microsoft.Network/virtualNetworks@2020-06-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetPrefix
        }
      }
    ]
  }
}

output vnetId string = vnet.id
output subnetId string = '${vnet.id}/subnets/${subnetName}'
output vnetName string = vnet.name
output subnetName string = subnetName
output addressPrefix string = addressPrefix
output subnetPrefix string = subnetPrefix
