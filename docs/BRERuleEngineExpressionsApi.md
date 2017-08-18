# KnetikCloudClient::BRERuleEngineExpressionsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bre_expressions**](BRERuleEngineExpressionsApi.md#get_bre_expressions) | **GET** /bre/expressions/lookup | Get a list of &#39;lookup&#39; type expressions


# **get_bre_expressions**
> Array&lt;LookupTypeResource&gt; get_bre_expressions

Get a list of 'lookup' type expressions

These are expression types that take a second expression as input and produce a value. These can be used in addition to the standard types, like parameter, global and constant (see BRE documentation for details).

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

begin
  #Get a list of 'lookup' type expressions
  result = api_instance.get_bre_expressions
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineExpressionsApi->get_bre_expressions: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;LookupTypeResource&gt;**](LookupTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



