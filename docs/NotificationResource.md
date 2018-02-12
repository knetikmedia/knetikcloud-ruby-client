# KnetikCloudClient::NotificationResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **Object** | The data to send to websockets. Also used to fill in the templates | [optional] 
**notification_id** | **String** | The id of this individual notification. Default: random | [optional] 
**notification_type_id** | **String** | The id of the notification type which will define message templates | 
**recipient** | **String** | The id of the recipient, dependent on the recipient_type. The user&#39;s id or the topic&#39;s id | 
**recipient_type** | **String** | The type of recipient for the notification. Either a user, or all users in a topic | 
**send_date** | **Integer** | The date this notification was sent | [optional] 


