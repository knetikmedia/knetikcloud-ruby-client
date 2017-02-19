# SwaggerClient::BRERuleEngineActionsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bre_actions**](BRERuleEngineActionsApi.md#get_bre_actions) | **GET** /bre/actions | Get a list of available actions


# **get_bre_actions**
> Array&lt;ActionResource&gt; get_bre_actions(opts)

Get a list of available actions

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineActionsApi.new

opts = { 
  filter_category: "filter_category_example", # String | Filter for actions that are within a specific category
  filter_name: "filter_name_example" # String | Filter for actions that have names containing the given string
}

begin
  #Get a list of available actions
  result = api_instance.get_bre_actions(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineActionsApi->get_bre_actions: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



