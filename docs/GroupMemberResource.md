# KnetikCloudClient::GroupMemberResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this type, or be an extra not from the template | [optional] 
**avatar_url** | **String** | The url of the user&#39;s avatar image | [optional] 
**display_name** | **String** | The public username of the user | [optional] 
**id** | **Integer** | The id of the user | 
**order** | **String** | The position of the member in the group if applicable. Read notes for details | [optional] 
**status** | **String** | The member&#39;s access level. Default: member | [optional] 
**template** | **String** | A template this member additional properties are validated against (private). May be null and no validation of properties will be done | [optional] 
**username** | **String** | The username of the user | [optional] 


