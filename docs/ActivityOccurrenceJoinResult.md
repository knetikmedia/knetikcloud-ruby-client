# KnetikCloudClient::ActivityOccurrenceJoinResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entitlement** | [**ActivityEntitlementResource**](ActivityEntitlementResource.md) | The details on the entitlement object needed to enter the occurrence (if any) | [optional] 
**error_code** | **Integer** | Zero if the user was/could be added to the occurrence. Jsapi error code indicating the reason of the failure otherwise | 
**message** | **String** | An error message if failure | [optional] 
**user_id** | **Integer** | The user&#39;s id | 


