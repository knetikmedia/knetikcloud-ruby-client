# SwaggerClient::SearchReferenceMapping

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier for the mapping to protect against duplicates | 
**ref_id_field** | **String** | The field within the type that contains the id from the refType | 
**ref_type** | **String** | The index type that the mapping pulls data from | 
**source_field_to_destination_field** | **Hash&lt;String, String&gt;** | A map whose keys are the field names in the refType and values are the field name in the type | 
**type** | **String** | The index type that the mapping is for | 


