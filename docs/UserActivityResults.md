# KnetikCloudClient::UserActivityResults

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency_rewards** | [**Array&lt;RewardCurrencyResource&gt;**](RewardCurrencyResource.md) | Any currency rewarded to this user | [optional] 
**item_rewards** | [**Array&lt;RewardItemResource&gt;**](RewardItemResource.md) | Any items rewarded to this user | [optional] 
**rank** | **Integer** | The position of the user in the leaderboard. Null means non-compete or disqualification | [optional] 
**score** | **Integer** | The raw score in this leaderboard. Null means non-compete or disqualification | [optional] 
**tags** | **Array&lt;String&gt;** | Any tags for the metric. Each unique tag will translate into a unique leaderboard. Maximum 5 tags and 50 characters each | [optional] 
**ties** | **Integer** | The number of users tied at this rank, including this user. 1 means no tie | [optional] 
**updated_date** | **Integer** | The date this score was recorded or updated. Unix timestamp in seconds | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The player for this entry | 


