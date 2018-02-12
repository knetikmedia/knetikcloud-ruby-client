# KnetikCloudClient::ActivitiesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user**](ActivitiesApi.md#add_user) | **POST** /activity-occurrences/{activity_occurrence_id}/users | Add a user to an occurrence
[**create_activity**](ActivitiesApi.md#create_activity) | **POST** /activities | Create an activity
[**create_activity_occurrence**](ActivitiesApi.md#create_activity_occurrence) | **POST** /activity-occurrences | Create a new activity occurrence. Ex: start a game
[**create_activity_template**](ActivitiesApi.md#create_activity_template) | **POST** /activities/templates | Create a activity template
[**delete_activity**](ActivitiesApi.md#delete_activity) | **DELETE** /activities/{id} | Delete an activity
[**delete_activity_template**](ActivitiesApi.md#delete_activity_template) | **DELETE** /activities/templates/{id} | Delete a activity template
[**get_activities**](ActivitiesApi.md#get_activities) | **GET** /activities | List activity definitions
[**get_activity**](ActivitiesApi.md#get_activity) | **GET** /activities/{id} | Get a single activity
[**get_activity_occurrence_details**](ActivitiesApi.md#get_activity_occurrence_details) | **GET** /activity-occurrences/{activity_occurrence_id} | Load a single activity occurrence details
[**get_activity_template**](ActivitiesApi.md#get_activity_template) | **GET** /activities/templates/{id} | Get a single activity template
[**get_activity_templates**](ActivitiesApi.md#get_activity_templates) | **GET** /activities/templates | List and search activity templates
[**list_activity_occurrences**](ActivitiesApi.md#list_activity_occurrences) | **GET** /activity-occurrences | List activity occurrences
[**remove_user**](ActivitiesApi.md#remove_user) | **DELETE** /activity-occurrences/{activity_occurrence_id}/users/{user_id} | Remove a user from an occurrence
[**set_activity_occurrence_results**](ActivitiesApi.md#set_activity_occurrence_results) | **POST** /activity-occurrences/{activity_occurrence_id}/results | Sets the status of an activity occurrence to FINISHED and logs metrics
[**set_activity_occurrence_settings**](ActivitiesApi.md#set_activity_occurrence_settings) | **PUT** /activity-occurrences/{activity_occurrence_id}/settings | Sets the settings of an activity occurrence
[**set_user_status**](ActivitiesApi.md#set_user_status) | **PUT** /activity-occurrences/{activity_occurrence_id}/users/{user_id}/status | Set a user&#39;s status within an occurrence
[**update_activity**](ActivitiesApi.md#update_activity) | **PUT** /activities/{id} | Update an activity
[**update_activity_occurrence_status**](ActivitiesApi.md#update_activity_occurrence_status) | **PUT** /activity-occurrences/{activity_occurrence_id}/status | Update the status of an activity occurrence
[**update_activity_template**](ActivitiesApi.md#update_activity_template) | **PUT** /activities/templates/{id} | Update an activity template


# **add_user**
> ActivityOccurrenceResource add_user(activity_occurrence_id, opts)

Add a user to an occurrence

If called with no body, defaults to the user making the call.

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

api_instance = KnetikCloudClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence

opts = { 
  test: false, # BOOLEAN | if true, indicates that the user should NOT be added. This can be used to test for eligibility
  bypass_restrictions: false, # BOOLEAN | if true, indicates that restrictions such as max player count should be ignored. Can only be used with ACTIVITIES_ADMIN
  user_id: KnetikCloudClient::IntWrapper.new # IntWrapper | The id of the user, or null for 'caller'
}

begin
  #Add a user to an occurrence
  result = api_instance.add_user(activity_occurrence_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->add_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_occurrence_id** | **Integer**| The id of the activity occurrence | 
 **test** | **BOOLEAN**| if true, indicates that the user should NOT be added. This can be used to test for eligibility | [optional] [default to false]
 **bypass_restrictions** | **BOOLEAN**| if true, indicates that restrictions such as max player count should be ignored. Can only be used with ACTIVITIES_ADMIN | [optional] [default to false]
 **user_id** | [**IntWrapper**](IntWrapper.md)| The id of the user, or null for &#39;caller&#39; | [optional] 

### Return type

[**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_activity**
> ActivityResource create_activity(opts)

Create an activity

<b>Permissions Needed:</b> ACTIVITIES_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

opts = { 
  activity_resource: KnetikCloudClient::ActivityResource.new # ActivityResource | The activity resource object
}

begin
  #Create an activity
  result = api_instance.create_activity(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->create_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_resource** | [**ActivityResource**](ActivityResource.md)| The activity resource object | [optional] 

### Return type

[**ActivityResource**](ActivityResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_activity_occurrence**
> ActivityOccurrenceResource create_activity_occurrence(opts)

Create a new activity occurrence. Ex: start a game

Has to enforce extra rules if not used as an admin. <br><br><b>Permissions Needed:</b> ACTIVITIES_USER or ACTIVITIES_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

opts = { 
  test: false, # BOOLEAN | if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
  activity_occurrence_resource: KnetikCloudClient::CreateActivityOccurrenceRequest.new # CreateActivityOccurrenceRequest | The activity occurrence object
}

begin
  #Create a new activity occurrence. Ex: start a game
  result = api_instance.create_activity_occurrence(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->create_activity_occurrence: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test** | **BOOLEAN**| if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings | [optional] [default to false]
 **activity_occurrence_resource** | [**CreateActivityOccurrenceRequest**](CreateActivityOccurrenceRequest.md)| The activity occurrence object | [optional] 

### Return type

[**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_activity_template**
> TemplateResource create_activity_template(opts)

Create a activity template

Activity Templates define a type of activity and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

opts = { 
  activity_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The activity template resource object
}

begin
  #Create a activity template
  result = api_instance.create_activity_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->create_activity_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_template_resource** | [**TemplateResource**](TemplateResource.md)| The activity template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_activity**
> delete_activity(id)

Delete an activity

<b>Permissions Needed:</b> ACTIVITIES_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

id = 789 # Integer | The id of the activity


begin
  #Delete an activity
  api_instance.delete_activity(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->delete_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the activity | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_activity_template**
> delete_activity_template(id, opts)

Delete a activity template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a activity template
  api_instance.delete_activity_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->delete_activity_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| The value needed to delete used templates | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_activities**
> PageResourceBareActivityResource get_activities(opts)

List activity definitions

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::ActivitiesApi.new

opts = { 
  filter_template: true, # BOOLEAN | Filter for activities that are templates, or specifically not if false
  filter_name: "filter_name_example", # String | Filter for activities that have a name starting with specified string
  filter_id: "filter_id_example", # String | Filter for activities with an id in the given comma separated list of ids
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List activity definitions
  result = api_instance.get_activities(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_activities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_template** | **BOOLEAN**| Filter for activities that are templates, or specifically not if false | [optional] 
 **filter_name** | **String**| Filter for activities that have a name starting with specified string | [optional] 
 **filter_id** | **String**| Filter for activities with an id in the given comma separated list of ids | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceBareActivityResource**](PageResourceBareActivityResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_activity**
> ActivityResource get_activity(id)

Get a single activity

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::ActivitiesApi.new

id = 789 # Integer | The id of the activity


begin
  #Get a single activity
  result = api_instance.get_activity(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the activity | 

### Return type

[**ActivityResource**](ActivityResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_activity_occurrence_details**
> ActivityOccurrenceResource get_activity_occurrence_details(activity_occurrence_id)

Load a single activity occurrence details

<b>Permissions Needed:</b> ACTIVITIES_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence


begin
  #Load a single activity occurrence details
  result = api_instance.get_activity_occurrence_details(activity_occurrence_id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_activity_occurrence_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_occurrence_id** | **Integer**| The id of the activity occurrence | 

### Return type

[**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_activity_template**
> TemplateResource get_activity_template(id)

Get a single activity template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or ACTIVITIES_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single activity template
  result = api_instance.get_activity_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_activity_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_activity_templates**
> PageResourceTemplateResource get_activity_templates(opts)

List and search activity templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or ACTIVITIES_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search activity templates
  result = api_instance.get_activity_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_activity_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTemplateResource**](PageResourceTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_activity_occurrences**
> PageResourceActivityOccurrenceResource list_activity_occurrences(opts)

List activity occurrences

<b>Permissions Needed:</b> ACTIVITIES_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

opts = { 
  filter_activity: "filter_activity_example", # String | Filter for occurrences of the given activity ID
  filter_status: "filter_status_example", # String | Filter for occurrences in the given status
  filter_event: 56, # Integer | Filter for occurrences played during the given event
  filter_challenge: 56, # Integer | Filter for occurrences played within the given challenge
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List activity occurrences
  result = api_instance.list_activity_occurrences(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->list_activity_occurrences: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_activity** | **String**| Filter for occurrences of the given activity ID | [optional] 
 **filter_status** | **String**| Filter for occurrences in the given status | [optional] 
 **filter_event** | **Integer**| Filter for occurrences played during the given event | [optional] 
 **filter_challenge** | **Integer**| Filter for occurrences played within the given challenge | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceActivityOccurrenceResource**](PageResourceActivityOccurrenceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_user**
> remove_user(activity_occurrence_id, user_id, opts)

Remove a user from an occurrence

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

api_instance = KnetikCloudClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence

user_id = "user_id_example" # String | The id of the user, or 'me'

opts = { 
  ban: false, # BOOLEAN | if true, indicates that the user should not be allowed to re-join. Can only be set by host or admin
  bypass_restrictions: false # BOOLEAN | if true, indicates that restrictions such as current status should be ignored. Can only be used with ACTIVITIES_ADMIN
}

begin
  #Remove a user from an occurrence
  api_instance.remove_user(activity_occurrence_id, user_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->remove_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_occurrence_id** | **Integer**| The id of the activity occurrence | 
 **user_id** | **String**| The id of the user, or &#39;me&#39; | 
 **ban** | **BOOLEAN**| if true, indicates that the user should not be allowed to re-join. Can only be set by host or admin | [optional] [default to false]
 **bypass_restrictions** | **BOOLEAN**| if true, indicates that restrictions such as current status should be ignored. Can only be used with ACTIVITIES_ADMIN | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_activity_occurrence_results**
> ActivityOccurrenceResults set_activity_occurrence_results(activity_occurrence_id, opts)

Sets the status of an activity occurrence to FINISHED and logs metrics

In addition to user permissions requirements there is security based on the core_settings.results_trust setting.

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

api_instance = KnetikCloudClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence

opts = { 
  activity_occurrence_results: KnetikCloudClient::ActivityOccurrenceResultsResource.new # ActivityOccurrenceResultsResource | The activity occurrence object
}

begin
  #Sets the status of an activity occurrence to FINISHED and logs metrics
  result = api_instance.set_activity_occurrence_results(activity_occurrence_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->set_activity_occurrence_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_occurrence_id** | **Integer**| The id of the activity occurrence | 
 **activity_occurrence_results** | [**ActivityOccurrenceResultsResource**](ActivityOccurrenceResultsResource.md)| The activity occurrence object | [optional] 

### Return type

[**ActivityOccurrenceResults**](ActivityOccurrenceResults.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_activity_occurrence_settings**
> ActivityOccurrenceResource set_activity_occurrence_settings(activity_occurrence_id, opts)

Sets the settings of an activity occurrence

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

api_instance = KnetikCloudClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence

opts = { 
  settings: KnetikCloudClient::ActivityOccurrenceSettingsResource.new # ActivityOccurrenceSettingsResource | The new settings
}

begin
  #Sets the settings of an activity occurrence
  result = api_instance.set_activity_occurrence_settings(activity_occurrence_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->set_activity_occurrence_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_occurrence_id** | **Integer**| The id of the activity occurrence | 
 **settings** | [**ActivityOccurrenceSettingsResource**](ActivityOccurrenceSettingsResource.md)| The new settings | [optional] 

### Return type

[**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_user_status**
> ActivityUserResource set_user_status(activity_occurrence_id, user_id, opts)

Set a user's status within an occurrence

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

api_instance = KnetikCloudClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence

user_id = "user_id_example" # String | The id of the user

opts = { 
  status: "status_example" # String | The new status
}

begin
  #Set a user's status within an occurrence
  result = api_instance.set_user_status(activity_occurrence_id, user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->set_user_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_occurrence_id** | **Integer**| The id of the activity occurrence | 
 **user_id** | **String**| The id of the user | 
 **status** | **String**| The new status | [optional] 

### Return type

[**ActivityUserResource**](ActivityUserResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_activity**
> ActivityResource update_activity(id, opts)

Update an activity

<b>Permissions Needed:</b> ACTIVITIES_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

id = 789 # Integer | The id of the activity

opts = { 
  activity_resource: KnetikCloudClient::ActivityResource.new # ActivityResource | The activity resource object
}

begin
  #Update an activity
  result = api_instance.update_activity(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->update_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the activity | 
 **activity_resource** | [**ActivityResource**](ActivityResource.md)| The activity resource object | [optional] 

### Return type

[**ActivityResource**](ActivityResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_activity_occurrence_status**
> update_activity_occurrence_status(activity_occurrence_id, opts)

Update the status of an activity occurrence

If setting to 'FINISHED' reward will be run based on current metrics that have been recorded already. Alternatively, see results endpoint to finish and record all metrics at once. Can be called by non-host participants if non_host_status_control is true

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

api_instance = KnetikCloudClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence

opts = { 
  activity_occurrence_status: KnetikCloudClient::ValueWrapperstring.new # ValueWrapperstring | The activity occurrence status object
}

begin
  #Update the status of an activity occurrence
  api_instance.update_activity_occurrence_status(activity_occurrence_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->update_activity_occurrence_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_occurrence_id** | **Integer**| The id of the activity occurrence | 
 **activity_occurrence_status** | [**ValueWrapperstring**](ValueWrapperstring.md)| The activity occurrence status object | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_activity_template**
> TemplateResource update_activity_template(id, opts)

Update an activity template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::ActivitiesApi.new

id = "id_example" # String | The id of the template

opts = { 
  activity_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The activity template resource object
}

begin
  #Update an activity template
  result = api_instance.update_activity_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->update_activity_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **activity_template_resource** | [**TemplateResource**](TemplateResource.md)| The activity template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



