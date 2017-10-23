# KnetikCloudClient::MapPropertyDefinitionResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field_list** | [**PropertyFieldListResource**](PropertyFieldListResource.md) | A list of the fields on both the property definition and property of this type | [optional] 
**name** | **String** | The name of the property | 
**required** | **BOOLEAN** | Whether the property is required | 
**type** | **String** | The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. | 
**allow_additional** | **BOOLEAN** | Whether to allow additional properties beyond those specified or not | [optional] 
**properties** | [**Array&lt;PropertyDefinitionResource&gt;**](PropertyDefinitionResource.md) | If provided, a list of property definitions for each map entry | [optional] 


