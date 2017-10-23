# KnetikCloudClient::TimePeriodGettable

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** |  | [optional] 
**type_hint** | **String** | Used for polymorphic type recognition and thus must match an expected type with additional properties | [optional] 
**get_limit** | **Integer** | The time period limit | 
**group_name** | **String** | The name of a group of items. Multiple items with the same group name will be limited together, leave null to be assigned a random unique name. It is typical that the other properties here will be the same for all, but this is not enforced and the item being recieved will use its settings. | [optional] 
**time_length** | **Integer** | The length of time | 
**unit_of_time** | **String** | The unit of time | 


