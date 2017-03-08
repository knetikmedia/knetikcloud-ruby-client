# SwaggerClient::ActivityResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_date** | **Integer** | The date/time this resource was created in seconds since unix epoch | [optional] 
**entitlements** | [**Array&lt;ActivityEntitlementResource&gt;**](ActivityEntitlementResource.md) | The list of items that can be used for entitlement (wager amounts/etc) | [optional] 
**id** | **Integer** | The unique ID for that resource | [optional] 
**launch** | **String** | Details about how to launch the activity | [optional] 
**long_description** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] 
**name** | **String** | The user friendly name of that resource | 
**reward_set** | [**RewardSetResource**](RewardSetResource.md) | The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing | [optional] 
**settings** | [**Array&lt;AvailableSettingResource&gt;**](AvailableSettingResource.md) | The list of settings and their options available for this activity. Not populated when getting listing | [optional] 
**short_description** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] 
**template** | **BOOLEAN** | Whether this activity is a template for other activities. Default: false | [optional] 
**type** | **String** | The type of the activity | 
**unique_key** | **String** | The unique key (for static reference in code) of the activity | [optional] 
**updated_date** | **Integer** | The date/time this resource was last updated in seconds since unix epoch | [optional] 


