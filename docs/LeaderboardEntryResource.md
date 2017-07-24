# KnetikCloudClient::LeaderboardEntryResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rank** | **Integer** | The position of the user in the leaderboard. Null means non-compete or disqualification | [optional] 
**score** | **Integer** | The raw score in this leaderboard. Null means non-compete or disqualification | [optional] 
**updated_date** | **Integer** | The date this score was recorded or updated. Unix timestamp in seconds | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The player for this entry | 


