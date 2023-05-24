@minLength(5)
@maxLength(50)
@description('Provide a globally unique name of your Azure Container Registry')
param acrName string

@description('Provide a tier of your Azure Container Registry.')
param acrSku string

param publicNetworkAccess string

param location string

resource acrResource 'Microsoft.ContainerRegistry/registries@2023-01-01-preview' = {
  name: acrName
  location: location
  sku: {
    name: acrSku
  }
  properties: {
    adminUserEnabled: true
    publicNetworkAccess: publicNetworkAccess
  }
}

@description('Output the login server property for later use')
output loginServer string = acrResource.properties.loginServer
