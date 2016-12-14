# SwaggerClient::BRERuleEngineEventsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fire_event_using_post**](BRERuleEngineEventsApi.md#fire_event_using_post) | **POST** /bre/events | Fire a new event, based on an existing trigger


# **fire_event_using_post**
> fire_event_using_post(opts)

Fire a new event, based on an existing trigger

Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineEventsApi.new

opts = { 
  bre_event: SwaggerClient::BreEvent.new, # BreEvent | The BRE event object
  authentication: SwaggerClient::OAuth2Authentication.new # OAuth2Authentication | The authentication object
}

begin
  #Fire a new event, based on an existing trigger
  api_instance.fire_event_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineEventsApi->fire_event_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_event** | [**BreEvent**](BreEvent.md)| The BRE event object | [optional] 
 **authentication** | [**OAuth2Authentication**](OAuth2Authentication.md)| The authentication object | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



