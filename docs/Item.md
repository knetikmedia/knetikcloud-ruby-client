# KnetikCloudClient::Item

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template | [optional] 
**behaviors** | [**Array&lt;Behavior&gt;**](Behavior.md) | The behaviors linked to the item, describing various options and interactions. May not be included in item lists | [optional] 
**category** | **String** | A category for filtering items | [optional] 
**created_date** | **Integer** | The date the item was created, unix timestamp in seconds | [optional] 
**id** | **Integer** | The id of the item | [optional] 
**long_description** | **String** | A long description of the item | [optional] 
**name** | **String** | The name of the item | 
**short_description** | **String** | A short description of the item, max 255 chars | [optional] 
**sort** | **Integer** | A number to use in sorting items.  Default 500 | [optional] 
**tags** | **Array&lt;String&gt;** | List of tags used for filtering items | [optional] 
**template** | **String** | An item template this item is validated against.  May be null and no validation of additional_properties will be done.  Default &#x3D; null | [optional] 
**type_hint** | **String** | The type of the item | 
**unique_key** | **String** | The unique key for the item | [optional] 
**updated_date** | **Integer** | The date the item was last updated, unix timestamp in seconds | [optional] 


