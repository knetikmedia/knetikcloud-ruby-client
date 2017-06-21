# KnetikCloudClient::UserActionLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action_description** | **String** | A description of the action taken | 
**action_name** | **String** | The name of the action taken | 
**created_date** | **Integer** | The date of the action, unix timestamp in seconds | [optional] 
**details** | **Hash&lt;String, String&gt;** | A map of additional details such as the target of the action | [optional] 
**id** | **String** | The id of the log entry | [optional] 
**request_id** | **String** | The id of the api request that spawned the action, if generated internally | [optional] 
**user_id** | **Integer** | The id of the user that took the action, if any. Read-only if not posting with LOGS_ADMIN | [optional] 


