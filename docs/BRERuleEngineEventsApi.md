# KnetikCloudClient::BRERuleEngineEventsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_bre_event**](BRERuleEngineEventsApi.md#send_bre_event) | **POST** /bre/events | Fire a new event, based on an existing trigger


# **send_bre_event**
> send_bre_event(opts)

Fire a new event, based on an existing trigger

Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::BRERuleEngineEventsApi.new

opts = { 
  bre_event: KnetikCloudClient::BreEvent.new # BreEvent | The BRE event object
}

begin
  #Fire a new event, based on an existing trigger
  api_instance.send_bre_event(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineEventsApi->send_bre_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_event** | [**BreEvent**](BreEvent.md)| The BRE event object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



