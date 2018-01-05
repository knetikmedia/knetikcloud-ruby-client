# KnetikCloudClient::GroupMemberResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this type, or be an extra not from the template | [optional] 
**group** | [**SimpleGroupResource**](SimpleGroupResource.md) | The group. Id is the unique name | [optional] 
**implicit** | **BOOLEAN** | Whether this membership is explicit (the user was added directly to the group) or implicit (the user was added only to one or more child groups) | [optional] 
**membership_id** | **Integer** | The id of the membership entry | [optional] 
**order** | **String** | The position of the member in the group if applicable. Read notes for details | [optional] 
**status** | **String** | The member&#39;s access level. Default: member | [optional] 
**template** | **String** | A template this member additional properties are validated against (private). May be null and no validation of properties will be done | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user | 


