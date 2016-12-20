# SwaggerClient::ActivitiesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**complete_activity_occurrence_using_put**](ActivitiesApi.md#complete_activity_occurrence_using_put) | **PUT** /activity-occurrences/{activity_occurrence_id}/status | Updated the status of an activity occurrence
[**create_activity_occurrence_using_post**](ActivitiesApi.md#create_activity_occurrence_using_post) | **POST** /activity-occurrences | Create a new activity occurrence
[**create_activity_using_post**](ActivitiesApi.md#create_activity_using_post) | **POST** /activities | Create an activity
[**delete_activity_using_delete**](ActivitiesApi.md#delete_activity_using_delete) | **DELETE** /activities/{id} | Delete an activity
[**get_activities_using_get**](ActivitiesApi.md#get_activities_using_get) | **GET** /activities | List activity definitions
[**get_activity_using_get**](ActivitiesApi.md#get_activity_using_get) | **GET** /activities/{id} | Get a single activity
[**post_results_using_post**](ActivitiesApi.md#post_results_using_post) | **POST** /activity-occurrences/{activity_occurrence_id}/results | Sets the status of an activity occurrence to FINISHED and logs metrics
[**update_activity_using_put**](ActivitiesApi.md#update_activity_using_put) | **PUT** /activities/{id} | Update an activity


# **complete_activity_occurrence_using_put**
> complete_activity_occurrence_using_put(activity_occurrence_id, opts)

Updated the status of an activity occurrence

If setting to 'FINISHED' you must POST to /results instead to record the metrics and get synchronous reward results

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence

opts = { 
  activity_cccurrence_status: "activity_cccurrence_status_example" # String | The activity occurrence status object
}

begin
  #Updated the status of an activity occurrence
  api_instance.complete_activity_occurrence_using_put(activity_occurrence_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->complete_activity_occurrence_using_put: #{e}"
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
 - **Accept**: */*



# **create_activity_occurrence_using_post**
> ActivityOccurrenceResource create_activity_occurrence_using_post(opts)

Create a new activity occurrence

Has to enforce extra rules if not used as an admin

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ActivitiesApi.new

opts = { 
  test: false, # BOOLEAN | if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
  activity_occurrence_resource: SwaggerClient::ActivityOccurrenceResource.new # ActivityOccurrenceResource | The activity occurrence object
}

begin
  #Create a new activity occurrence
  result = api_instance.create_activity_occurrence_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->create_activity_occurrence_using_post: #{e}"
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
 - **Accept**: */*



# **create_activity_using_post**
> ActivityResource create_activity_using_post(opts)

Create an activity

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ActivitiesApi.new

opts = { 
  activity_resource: SwaggerClient::ActivityResource.new # ActivityResource | The activity resource object
}

begin
  #Create an activity
  result = api_instance.create_activity_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->create_activity_using_post: #{e}"
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
 - **Accept**: */*



# **delete_activity_using_delete**
> delete_activity_using_delete(id)

Delete an activity

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ActivitiesApi.new

id = 789 # Integer | The id of the activity


begin
  #Delete an activity
  api_instance.delete_activity_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->delete_activity_using_delete: #{e}"
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
 - **Accept**: */*



# **get_activities_using_get**
> PageBareActivityResource get_activities_using_get(opts)

List activity definitions

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActivitiesApi.new

opts = { 
  filter_template: true, # BOOLEAN | Filter for activities that are templates, or specifically not if false
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List activity definitions
  result = api_instance.get_activities_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_activities_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_template** | **BOOLEAN**| Filter for activities that are templates, or specifically not if false | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageBareActivityResource**](PageBareActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_activity_using_get**
> ActivityResource get_activity_using_get(id)

Get a single activity

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActivitiesApi.new

id = 789 # Integer | The id of the activity


begin
  #Get a single activity
  result = api_instance.get_activity_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_activity_using_get: #{e}"
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
 - **Accept**: */*



# **post_results_using_post**
> ActivityOccurrenceResults post_results_using_post(activity_occurrence_id, opts)

Sets the status of an activity occurrence to FINISHED and logs metrics

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ActivitiesApi.new

activity_occurrence_id = 789 # Integer | The id of the activity occurrence

opts = { 
  activity_occurrence_results: SwaggerClient::ActivityOccurrenceResults.new # ActivityOccurrenceResults | The activity occurrence object
}

begin
  #Sets the status of an activity occurrence to FINISHED and logs metrics
  result = api_instance.post_results_using_post(activity_occurrence_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->post_results_using_post: #{e}"
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
 - **Accept**: */*



# **update_activity_using_put**
> update_activity_using_put(id, opts)

Update an activity

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ActivitiesApi.new

id = 789 # Integer | The id of the activity

opts = { 
  activity_resource: SwaggerClient::ActivityResource.new # ActivityResource | The activity resource object
}

begin
  #Update an activity
  api_instance.update_activity_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->update_activity_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the activity | 
 **activity_resource** | [**ActivityResource**](ActivityResource.md)| The activity resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



