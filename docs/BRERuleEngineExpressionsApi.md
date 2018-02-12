# KnetikCloudClient::BRERuleEngineExpressionsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bre_expression**](BRERuleEngineExpressionsApi.md#get_bre_expression) | **GET** /bre/expressions/{type} | Lookup a specific expression
[**get_bre_expressions**](BRERuleEngineExpressionsApi.md#get_bre_expressions) | **GET** /bre/expressions | Get a list of supported expressions to use in conditions or actions
[**get_expression_as_text**](BRERuleEngineExpressionsApi.md#get_expression_as_text) | **POST** /bre/expressions | Returns the textual representation of an expression


# **get_bre_expression**
> ExpressionResource get_bre_expression(type)

Lookup a specific expression

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EXPRESSIONS_USER

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

api_instance = KnetikCloudClient::BRERuleEngineExpressionsApi.new

type = "type_example" # String | Specifiy the type of expression as returned by the listing endpoint


begin
  #Lookup a specific expression
  result = api_instance.get_bre_expression(type)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineExpressionsApi->get_bre_expression: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Specifiy the type of expression as returned by the listing endpoint | 

### Return type

[**ExpressionResource**](ExpressionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bre_expressions**
> Array&lt;ExpressionResource&gt; get_bre_expressions(opts)

Get a list of supported expressions to use in conditions or actions

Each resource contains a type and a definition that are read-only, all the other fields must be provided when using the expression in a rule. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_EXPRESSIONS_USER

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

api_instance = KnetikCloudClient::BRERuleEngineExpressionsApi.new

opts = { 
  filter_type_group: "filter_type_group_example" # String | Filter for expressions by type group
}

begin
  #Get a list of supported expressions to use in conditions or actions
  result = api_instance.get_bre_expressions(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineExpressionsApi->get_bre_expressions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_type_group** | **String**| Filter for expressions by type group | [optional] 

### Return type

[**Array&lt;ExpressionResource&gt;**](ExpressionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_expression_as_text**
> StringWrapper get_expression_as_text(opts)

Returns the textual representation of an expression

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EXPRESSIONS_USER

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

api_instance = KnetikCloudClient::BRERuleEngineExpressionsApi.new

opts = { 
  expression: KnetikCloudClient::ExpressionResource.new # ExpressionResource | The expression resource to be converted
}

begin
  #Returns the textual representation of an expression
  result = api_instance.get_expression_as_text(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineExpressionsApi->get_expression_as_text: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expression** | [**ExpressionResource**](ExpressionResource.md)| The expression resource to be converted | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



