# SwaggerClient::BRERuleEngineTriggersApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_trigger_using_post**](BRERuleEngineTriggersApi.md#create_trigger_using_post) | **POST** /bre/triggers | Create a trigger
[**delete_trigger_using_delete**](BRERuleEngineTriggersApi.md#delete_trigger_using_delete) | **DELETE** /bre/triggers/{event_name} | Delete a trigger
[**get_trigger_using_get**](BRERuleEngineTriggersApi.md#get_trigger_using_get) | **GET** /bre/triggers/{event_name} | Get a single trigger
[**get_triggers_using_get**](BRERuleEngineTriggersApi.md#get_triggers_using_get) | **GET** /bre/triggers | List triggers
[**update_trigger_using_put**](BRERuleEngineTriggersApi.md#update_trigger_using_put) | **PUT** /bre/triggers/{event_name} | Update a trigger


# **create_trigger_using_post**
> BreTriggerResource create_trigger_using_post(opts)

Create a trigger

Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineTriggersApi.new

opts = { 
  bre_trigger_resource: SwaggerClient::BreTriggerResource.new # BreTriggerResource | The BRE trigger resource object
}

begin
  #Create a trigger
  result = api_instance.create_trigger_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineTriggersApi->create_trigger_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_trigger_resource** | [**BreTriggerResource**](BreTriggerResource.md)| The BRE trigger resource object | [optional] 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_trigger_using_delete**
> delete_trigger_using_delete(event_name)

Delete a trigger

May fail if there are existing rules against it. Cannot delete core triggers

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineTriggersApi.new

event_name = "event_name_example" # String | The trigger event name


begin
  #Delete a trigger
  api_instance.delete_trigger_using_delete(event_name)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineTriggersApi->delete_trigger_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **String**| The trigger event name | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_trigger_using_get**
> BreTriggerResource get_trigger_using_get(event_name)

Get a single trigger

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineTriggersApi.new

event_name = "event_name_example" # String | The trigger event name


begin
  #Get a single trigger
  result = api_instance.get_trigger_using_get(event_name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineTriggersApi->get_trigger_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **String**| The trigger event name | 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_triggers_using_get**
> PageResourceBreTriggerResource get_triggers_using_get(opts)

List triggers

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineTriggersApi.new

opts = { 
  filter_system: true, # BOOLEAN | Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed
  filter_category: "filter_category_example", # String | Filter for triggers that are within a specific category
  filter_name: "filter_name_example", # String | Filter for triggers that have names containing the given string
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List triggers
  result = api_instance.get_triggers_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineTriggersApi->get_triggers_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_system** | **BOOLEAN**| Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed | [optional] 
 **filter_category** | **String**| Filter for triggers that are within a specific category | [optional] 
 **filter_name** | **String**| Filter for triggers that have names containing the given string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceBreTriggerResource**](PageResourceBreTriggerResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_trigger_using_put**
> update_trigger_using_put(event_name, opts)

Update a trigger

May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineTriggersApi.new

event_name = "event_name_example" # String | The trigger event name

opts = { 
  bre_trigger_resource: SwaggerClient::BreTriggerResource.new # BreTriggerResource | The BRE trigger resource object
}

begin
  #Update a trigger
  api_instance.update_trigger_using_put(event_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineTriggersApi->update_trigger_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **String**| The trigger event name | 
 **bre_trigger_resource** | [**BreTriggerResource**](BreTriggerResource.md)| The BRE trigger resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



