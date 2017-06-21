# KnetikCloudClient::FileGroupPropertyDefinitionResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field_list** | [**PropertyFieldListResource**](PropertyFieldListResource.md) | A list of the fields on both the property definition and property of this type | [optional] 
**name** | **String** | The name of the property | 
**required** | **BOOLEAN** | Whether the property is required | 
**type** | **String** | The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. | 
**file_type** | **String** | If provided, a file type that the property must match | [optional] 
**max_count** | **Integer** | If provided, the maximum number of files in the group | [optional] 
**max_file_size** | **Integer** | If provided, the maximum allowed size per file in bytes | [optional] 
**min_count** | **Integer** | If provided, the minimum number of files in the group | [optional] 

