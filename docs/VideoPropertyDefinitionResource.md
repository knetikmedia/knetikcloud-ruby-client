# KnetikCloudClient::VideoPropertyDefinitionResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field_list** | [**PropertyFieldListResource**](PropertyFieldListResource.md) | A list of the fields on both the property definition and property of this type | [optional] 
**name** | **String** | The name of the property | 
**required** | **BOOLEAN** | Whether the property is required | 
**type** | **String** | The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. | 
**file_type** | **String** | If provided, a file type that teh property must match | [optional] 
**max_height** | **Integer** | If provided, the maximum height of the video | [optional] 
**max_length** | **Integer** | If provided, the maximum length of the video | [optional] 
**max_width** | **Integer** | If provided, the maximum width of the video | [optional] 
**min_height** | **Integer** | If provided, the minimum height of the video | [optional] 
**min_length** | **Integer** | If provided, the minimum length of the video | [optional] 
**min_width** | **Integer** | If provided, the minimum width of the video | [optional] 


