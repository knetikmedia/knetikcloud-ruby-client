# KnetikCloudClient::MetricResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activity_occurence_id** | **Integer** | The id of the activity occurence where this score/metric occurred | 
**tags** | **Array&lt;String&gt;** | Any tags for the metric. Each unique tag will translate into a unique leaderboard. Maximum 5 tags and 50 characters each | [optional] 
**user_id** | **Integer** | The id of the user this metric is for. Default to caller and requires METRICS_ADMIN permission to specify another | [optional] 
**value** | **Integer** | The value/score of the metric | 


