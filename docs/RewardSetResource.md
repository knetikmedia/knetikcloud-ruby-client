# SwaggerClient::RewardSetResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_date** | **Integer** | The date/time this resource was created in seconds since unix epoch | [optional] 
**currency_rewards** | [**Array&lt;RewardCurrencyResource&gt;**](RewardCurrencyResource.md) | The currency to give as rewards | [optional] 
**id** | **Integer** | The assigned unique ID for this reward set | [optional] 
**item_rewards** | [**Array&lt;RewardItemResource&gt;**](RewardItemResource.md) | The items to give as rewards | [optional] 
**long_description** | **String** | A longer describe the reward set, usually included in details | [optional] 
**max_placing** | **Integer** | The maximum placing that will receive a reward | [optional] 
**name** | **String** | The user friendly name for this reward set | 
**short_description** | **String** | A short paragraph to describe the reward set, usually included in listings.  Max 255 characters | [optional] 
**unique_key** | **String** | A provided unique key for this reward set | [optional] 
**updated_date** | **Integer** | The date/time this resource was last updated in seconds since unix epoch | [optional] 


