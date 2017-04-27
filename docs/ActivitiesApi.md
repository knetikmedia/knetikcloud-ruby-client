# KnetikCloudClient::ActivitiesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_activity**](ActivitiesApi.md#create_activity) | **POST** /activities | Create an activity
[**create_activity_occurrence**](ActivitiesApi.md#create_activity_occurrence) | **POST** /activity-occurrences | Create a new activity occurrence
[**create_activity_template**](ActivitiesApi.md#create_activity_template) | **POST** /activities/templates | Create a activity template
[**delete_activity**](ActivitiesApi.md#delete_activity) | **DELETE** /activities/{id} | Delete an activity
[**delete_activity_template**](ActivitiesApi.md#delete_activity_template) | **DELETE** /activities/templates/{id} | Delete a activity template
[**get_activities**](ActivitiesApi.md#get_activities) | **GET** /activities | List activity definitions
[**get_activity**](ActivitiesApi.md#get_activity) | **GET** /activities/{id} | Get a single activity
[**get_activity_template**](ActivitiesApi.md#get_activity_template) | **GET** /activities/templates/{id} | Get a single activity template
[**get_activity_templates**](ActivitiesApi.md#get_activity_templates) | **GET** /activities/templates | List and search activity templates
[**set_activity_occurrence_results**](ActivitiesApi.md#set_activity_occurrence_results) | **POST** /activity-occurrences/{activity_occurrence_id}/results | Sets the status of an activity occurrence to FINISHED and logs metrics
[**update_activity**](ActivitiesApi.md#update_activity) | **PUT** /activities/{id} | Update an activity
[**update_activity_occurrence**](ActivitiesApi.md#update_activity_occurrence) | **PUT** /activity-occurrences/{activity_occurrence_id}/status | Updated the status of an activity occurrence
[**update_activity_template**](ActivitiesApi.md#update_activity_template) | **PUT** /activities/templates/{id} | Update an activity template


# **create_activity**
> ActivityResource create_activity(opts)

Create an activity

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_activity_occurrence**
> ActivityOccurrenceResource create_activity_occurrence(opts)

Create a new activity occurrence

Has to enforce extra rules if not used as an admin

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ActivitiesApi.new

opts = { 
  test: false, # BOOLEAN | if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
  activity_occurrence_resource: KnetikCloudClient::ActivityOccurrenceResource.new # ActivityOccurrenceResource | The activity occurrence object
}

begin
  #Create a new activity occurrence
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
 **activity_occurrence_resource** | [**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)| The activity occurrence object | [optional] 

### Return type

[**ActivityOccurrenceResource**](ActivityOccurrenceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_activity_template**
> TemplateResource create_activity_template(opts)

Create a activity template

Activity Templates define a type of activity and the properties they have

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_activity**
> delete_activity(id)

Delete an activity

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_activity_template**
> delete_activity_template(id, opts)

Delete a activity template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_activities**
> PageResourceBareActivityResource get_activities(opts)

List activity definitions

### Example
```ruby
# load the gem
require 'knetikcloud_client'

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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_activity**
> ActivityResource get_activity(id)

Get a single activity

### Example
```ruby
# load the gem
require 'knetikcloud_client'

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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_activity_template**
> TemplateResource get_activity_template(id)

Get a single activity template

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_activity_templates**
> PageResourceTemplateResource get_activity_templates(opts)

List and search activity templates

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_activity_occurrence_results**
> ActivityOccurrenceResults set_activity_occurrence_results(activity_occurrence_id, opts)

Sets the status of an activity occurrence to FINISHED and logs metrics

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence

opts = { 
  activity_occurrence_results: KnetikCloudClient::ActivityOccurrenceResults.new # ActivityOccurrenceResults | The activity occurrence object
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
 **activity_occurrence_results** | [**ActivityOccurrenceResults**](ActivityOccurrenceResults.md)| The activity occurrence object | [optional] 

### Return type

[**ActivityOccurrenceResults**](ActivityOccurrenceResults.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_activity**
> ActivityResource update_activity(id, opts)

Update an activity

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_activity_occurrence**
> update_activity_occurrence(activity_occurrence_id, opts)

Updated the status of an activity occurrence

If setting to 'FINISHED' you must POST to /results instead to record the metrics and get synchronous reward results

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence

opts = { 
  activity_cccurrence_status: "activity_cccurrence_status_example" # String | The activity occurrence status object
}

begin
  #Updated the status of an activity occurrence
  api_instance.update_activity_occurrence(activity_occurrence_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ActivitiesApi->update_activity_occurrence: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_occurrence_id** | **Integer**| The id of the activity occurrence | 
 **activity_cccurrence_status** | **String**| The activity occurrence status object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_activity_template**
> TemplateResource update_activity_template(id, opts)

Update an activity template

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



