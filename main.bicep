param location string = resourceGroup().location
param vnetName string = 'myVNet'
param subnetName string = 'mySubnet'
param vmName string = 'myVM'
param adminUsername string = 'adminuser'
@secure()
param adminPassword string
param vmSize string = 'Standard_DS1_v2'

module networkModule './modules/network.bicep' = {
  name: 'networkDeploy'
  scope: resourceGroup()
  params: {
    location: location
    vnetName: vnetName
    subnetName: subnetName
  }
}

module vmModule './modules/vm.bicep' = {
  name: 'vmDeploy'
  scope: resourceGroup()
  params: {
    location: location
    vmName: vmName
    adminUsername: adminUsername
    adminPassword: adminPassword
    vmSize: vmSize
    subnetId: networkModule.outputs.subnetId
  }
}
