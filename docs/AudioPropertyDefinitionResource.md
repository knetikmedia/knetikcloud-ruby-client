# KnetikCloudClient::AudioPropertyDefinitionResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field_list** | [**PropertyFieldListResource**](PropertyFieldListResource.md) | A list of the fields on both the property definition and property of this type | [optional] 
**name** | **String** | The name of the property | 
**required** | **BOOLEAN** | Whether the property is required | 
**type** | **String** | The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. | 
**file_type** | **String** | If provided, a file type the property must match | [optional] 
**max_length** | **Integer** | If provided, the maximum length of the audio | [optional] 
**min_length** | **Integer** | If provided, the minimum length of the audio | [optional] 


