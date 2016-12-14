# SwaggerClient::BRERuleEngineActionsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_actions_using_get**](BRERuleEngineActionsApi.md#get_actions_using_get) | **GET** /bre/actions | Get a list of available actions


# **get_actions_using_get**
> Array&lt;ActionResource&gt; get_actions_using_get(opts)

Get a list of available actions

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineActionsApi.new

opts = { 
  filter_category: "filter_category_example", # String | Filter for actions that are within a specific category
  filter_name: "filter_name_example" # String | Filter for actions that have names containing the given string
}

begin
  #Get a list of available actions
  result = api_instance.get_actions_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineActionsApi->get_actions_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_category** | **String**| Filter for actions that are within a specific category | [optional] 
 **filter_name** | **String**| Filter for actions that have names containing the given string | [optional] 

### Return type

[**Array&lt;ActionResource&gt;**](ActionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



