# SwaggerClient::CampaignResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | Whether the campaign is active or not.  Defaults to false | [optional] 
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] 
**created_date** | **Integer** | The date/time this resource was created in seconds since unix epoch | [optional] 
**id** | **Integer** | The unique ID for that resource | [optional] 
**leaderboard_strategy** | **String** | The strategy for calculating the leaderboard. Defaults to highest score. Value MUST come from the list of available strategies from the Leaderboard Service | [optional] 
**long_description** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] 
**name** | **String** | The user friendly name of that resource | 
**next_challenge** | **String** | The name of the next challenge coming up | [optional] 
**next_challenge_date** | **Integer** | The date/time of the next challenge coming up | [optional] 
**reward_set** | [**RewardSetResource**](RewardSetResource.md) | The rewards to give at the end of the campaign. When creating/updating only id is used. Reward set must be pre-existing | [optional] 
**reward_status** | **String** | Indicate if the rewards have been given out already | [optional] 
**short_description** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] 
**template** | **String** | A campaign template this campaign is validated against (private). May be null and no validation of additional_properties will be done | [optional] 
**updated_date** | **Integer** | The date/time this resource was last updated in seconds since unix epoch | [optional] 


