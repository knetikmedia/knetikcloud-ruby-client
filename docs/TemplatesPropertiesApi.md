# KnetikCloudClient::TemplatesPropertiesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_template_property_type**](TemplatesPropertiesApi.md#get_template_property_type) | **GET** /templates/properties/{type} | Get details for a template property type
[**get_template_property_types**](TemplatesPropertiesApi.md#get_template_property_types) | **GET** /templates/properties | List template property types


# **get_template_property_type**
> PropertyFieldListResource get_template_property_type(type)

Get details for a template property type

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::TemplatesPropertiesApi.new

type = "type_example" # String | type


begin
  #Get details for a template property type
  result = api_instance.get_template_property_type(type)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TemplatesPropertiesApi->get_template_property_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| type | 

### Return type

[**PropertyFieldListResource**](PropertyFieldListResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_template_property_types**
> Array&lt;PropertyFieldListResource&gt; get_template_property_types

List template property types

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::TemplatesPropertiesApi.new

begin
  #List template property types
  result = api_instance.get_template_property_types
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TemplatesPropertiesApi->get_template_property_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PropertyFieldListResource&gt;**](PropertyFieldListResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



