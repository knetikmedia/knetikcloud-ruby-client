# KnetikCloudClient::BRERuleEngineVariablesApi

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bre_variable_types**](BRERuleEngineVariablesApi.md#get_bre_variable_types) | **GET** /bre/variable-types | Get a list of variable types available
[**get_bre_variable_values**](BRERuleEngineVariablesApi.md#get_bre_variable_values) | **GET** /bre/variable-types/{name}/values | List valid values for a type


# **get_bre_variable_types**
> Array&lt;VariableTypeResource&gt; get_bre_variable_types

Get a list of variable types available

Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::BRERuleEngineVariablesApi.new

begin
  #Get a list of variable types available
  result = api_instance.get_bre_variable_types
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineVariablesApi->get_bre_variable_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VariableTypeResource&gt;**](VariableTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bre_variable_values**
> PageResourceSimpleReferenceResourceobject get_bre_variable_values(name, opts)

List valid values for a type

Used to lookup users to fill in a user constant for example. Only types marked as enumerable are suppoorted here.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::BRERuleEngineVariablesApi.new

name = "name_example" # String | The name of the type

opts = { 
  filter_name: "filter_name_example", # String | Filter results by those with names starting with this string
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List valid values for a type
  result = api_instance.get_bre_variable_values(name, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineVariablesApi->get_bre_variable_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the type | 
 **filter_name** | **String**| Filter results by those with names starting with this string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceSimpleReferenceResourceobject**](PageResourceSimpleReferenceResourceobject.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



