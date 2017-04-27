# KnetikCloudClient::ChallengeActivityResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activity_id** | **Integer** | The id of the activity | 
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] 
**challenge_id** | **Integer** | The id of the challenge | [optional] 
**entitlement** | [**ActivityEntitlementResource**](ActivityEntitlementResource.md) | The entitlement item needed to participate in the activity as part of this event. Null indicates free entry. When creating/updating only id is used. Item must be pre-existing | [optional] 
**id** | **Integer** | The unique ID for this resource | [optional] 
**reward_set** | [**RewardSetResource**](RewardSetResource.md) | The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing | [optional] 
**settings** | [**Array&lt;SelectedSettingResource&gt;**](SelectedSettingResource.md) | The list of settings and the select options | [optional] 
**template** | **String** | A challenge activity template this challenge activity is validated against (private). May be null and no validation of additional_properties will be done | [optional] 


