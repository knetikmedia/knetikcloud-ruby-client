# SwaggerClient::BRERuleEngineExpressionsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_lookup_types_using_get**](BRERuleEngineExpressionsApi.md#get_lookup_types_using_get) | **GET** /bre/expressions/lookup | Get a list of &#39;lookup&#39; type expressions


# **get_lookup_types_using_get**
> Array&lt;LookupTypeResource&gt; get_lookup_types_using_get

Get a list of 'lookup' type expressions

These are expression types that take a second expression as input and produce a value. These can be used in addition to the standard types, like parameter, global and constant (see BRE documentation for details).

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineExpressionsApi.new

begin
  #Get a list of 'lookup' type expressions
  result = api_instance.get_lookup_types_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineExpressionsApi->get_lookup_types_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;LookupTypeResource&gt;**](LookupTypeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



