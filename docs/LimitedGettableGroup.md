# KnetikCloudClient::LimitedGettableGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_only** | **BOOLEAN** | Whether to get active items only | 
**name** | **String** | The name of the group. Multiple items with the same group name will be limited together, leave null to be assigned a random unique name. It is typical that owned_limit and active_only will be the same for all, but this is not enforced and the item being recieved will use its settings. | [optional] 
**owned_limit** | **Integer** | The max number of items that can be purchased | 


