# KnetikCloudClient::RuleEngineTriggersApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bre_trigger**](RuleEngineTriggersApi.md#create_bre_trigger) | **POST** /bre/triggers | Create a trigger
[**delete_bre_trigger**](RuleEngineTriggersApi.md#delete_bre_trigger) | **DELETE** /bre/triggers/{event_name} | Delete a trigger
[**get_bre_trigger**](RuleEngineTriggersApi.md#get_bre_trigger) | **GET** /bre/triggers/{event_name} | Get a single trigger
[**get_bre_triggers**](RuleEngineTriggersApi.md#get_bre_triggers) | **GET** /bre/triggers | List triggers
[**update_bre_trigger**](RuleEngineTriggersApi.md#update_bre_trigger) | **PUT** /bre/triggers/{event_name} | Update a trigger


# **create_bre_trigger**
> BreTriggerResource create_bre_trigger(opts)

Create a trigger

Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_TRIGGERS_ADMIN

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

api_instance = KnetikCloudClient::RuleEngineTriggersApi.new

opts = { 
  bre_trigger_resource: KnetikCloudClient::BreTriggerResource.new # BreTriggerResource | The BRE trigger resource object
}

begin
  #Create a trigger
  result = api_instance.create_bre_trigger(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineTriggersApi->create_bre_trigger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_trigger_resource** | [**BreTriggerResource**](BreTriggerResource.md)| The BRE trigger resource object | [optional] 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_bre_trigger**
> delete_bre_trigger(event_name)

Delete a trigger

May fail if there are existing rules against it. Cannot delete core triggers. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_TRIGGERS_ADMIN

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

api_instance = KnetikCloudClient::RuleEngineTriggersApi.new

event_name = "event_name_example" # String | The trigger event name


begin
  #Delete a trigger
  api_instance.delete_bre_trigger(event_name)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineTriggersApi->delete_bre_trigger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **String**| The trigger event name | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bre_trigger**
> BreTriggerResource get_bre_trigger(event_name)

Get a single trigger

<b>Permissions Needed:</b> BRE_RULE_ENGINE_TRIGGERS_USER

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

api_instance = KnetikCloudClient::RuleEngineTriggersApi.new

event_name = "event_name_example" # String | The trigger event name


begin
  #Get a single trigger
  result = api_instance.get_bre_trigger(event_name)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineTriggersApi->get_bre_trigger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **String**| The trigger event name | 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bre_triggers**
> PageResourceBreTriggerResource get_bre_triggers(opts)

List triggers

<b>Permissions Needed:</b> BRE_RULE_ENGINE_TRIGGERS_USER

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

api_instance = KnetikCloudClient::RuleEngineTriggersApi.new

opts = { 
  filter_system: true, # BOOLEAN | Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed
  filter_category: "filter_category_example", # String | Filter for triggers that are within a specific category
  filter_tags: "filter_tags_example", # String | Filter for triggers that have all of the given tags (comma separated list)
  filter_name: "filter_name_example", # String | Filter for triggers that have names containing the given string
  filter_search: "filter_search_example", # String | Filter for triggers containing the given words somewhere within name, description and tags
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List triggers
  result = api_instance.get_bre_triggers(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineTriggersApi->get_bre_triggers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_system** | **BOOLEAN**| Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed | [optional] 
 **filter_category** | **String**| Filter for triggers that are within a specific category | [optional] 
 **filter_tags** | **String**| Filter for triggers that have all of the given tags (comma separated list) | [optional] 
 **filter_name** | **String**| Filter for triggers that have names containing the given string | [optional] 
 **filter_search** | **String**| Filter for triggers containing the given words somewhere within name, description and tags | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceBreTriggerResource**](PageResourceBreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_bre_trigger**
> BreTriggerResource update_bre_trigger(event_name, opts)

Update a trigger

May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_TRIGGERS_ADMIN

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

api_instance = KnetikCloudClient::RuleEngineTriggersApi.new

event_name = "event_name_example" # String | The trigger event name

opts = { 
  bre_trigger_resource: KnetikCloudClient::BreTriggerResource.new # BreTriggerResource | The BRE trigger resource object
}

begin
  #Update a trigger
  result = api_instance.update_bre_trigger(event_name, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineTriggersApi->update_bre_trigger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **String**| The trigger event name | 
 **bre_trigger_resource** | [**BreTriggerResource**](BreTriggerResource.md)| The BRE trigger resource object | [optional] 

### Return type

[**BreTriggerResource**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



