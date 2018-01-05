# KnetikCloudClient::VideoPropertyDefinitionResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | The description of the property | [optional] 
**field_list** | [**PropertyFieldListResource**](PropertyFieldListResource.md) | A list of the fields on both the property definition and property of this type | [optional] 
**friendly_name** | **String** | The friendly front-facing name of the property | [optional] 
**name** | **String** | The name of the property | 
**option_label_path** | **String** | The JSON path to the option label | [optional] 
**option_value_path** | **String** | The JSON path to the option value | [optional] 
**options_url** | **String** | URL of service containing the property options (assumed JSON array) | [optional] 
**required** | **BOOLEAN** | Whether the property is required | 
**type** | **String** | The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. | 
**file_type** | **String** | If provided, a file type that teh property must match | [optional] 
**max_height** | **Integer** | If provided, the maximum height of the video | [optional] 
**max_length** | **Integer** | If provided, the maximum length of the video | [optional] 
**max_width** | **Integer** | If provided, the maximum width of the video | [optional] 
**min_height** | **Integer** | If provided, the minimum height of the video | [optional] 
**min_length** | **Integer** | If provided, the minimum length of the video | [optional] 
**min_width** | **Integer** | If provided, the minimum width of the video | [optional] 


