## Hints
1. All resources can be deployed using the code provided in this repository. <br>`az deployment sub create --location eastus --template-file ./labs-day2/lab-logs/bicep/main.bicep` <br> Remember to fill in the SubscriptionId parameter in the main.parameters.json file.
2. When browsing the Log Analytics Workspace, you are looking for data inside of AzureActivity. <br> `AzureActivity` <br> `| Take 10`
