# KnetikCloudClient::BRERuleEngineActionsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bre_actions**](BRERuleEngineActionsApi.md#get_bre_actions) | **GET** /bre/actions | Get a list of available actions


# **get_bre_actions**
> Array&lt;ActionResource&gt; get_bre_actions(opts)

Get a list of available actions

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

api_instance = KnetikCloudClient::BRERuleEngineActionsApi.new

opts = { 
  filter_category: "filter_category_example", # String | Filter for actions that are within a specific category
  filter_name: "filter_name_example", # String | Filter for actions that have names containing the given string
  filter_tags: "filter_tags_example", # String | Filter for actions that have all of the given tags (comma separated list)
  filter_search: "filter_search_example" # String | Filter for actions containing the given words somewhere within name, description and tags
}

begin
  #Get a list of available actions
  result = api_instance.get_bre_actions(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineActionsApi->get_bre_actions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_category** | **String**| Filter for actions that are within a specific category | [optional] 
 **filter_name** | **String**| Filter for actions that have names containing the given string | [optional] 
 **filter_tags** | **String**| Filter for actions that have all of the given tags (comma separated list) | [optional] 
 **filter_search** | **String**| Filter for actions containing the given words somewhere within name, description and tags | [optional] 

### Return type

[**Array&lt;ActionResource&gt;**](ActionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



