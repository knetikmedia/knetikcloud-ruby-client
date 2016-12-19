# SwaggerClient::DispositionsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_disposition_using_post**](DispositionsApi.md#add_disposition_using_post) | **POST** /dispositions | Add a new disposition. 
[**delete_disposition_using_delete**](DispositionsApi.md#delete_disposition_using_delete) | **DELETE** /dispositions/{id} | Delete a disposition
[**get_disposition_count_using_get**](DispositionsApi.md#get_disposition_count_using_get) | **GET** /dispositions/count | Returns a list of disposition counts
[**get_disposition_using_get**](DispositionsApi.md#get_disposition_using_get) | **GET** /dispositions/{id} | Returns a disposition
[**get_dispositions_using_get**](DispositionsApi.md#get_dispositions_using_get) | **GET** /dispositions | Returns a page of dispositions


# **add_disposition_using_post**
> DispositionResource add_disposition_using_post(opts)

Add a new disposition. 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::DispositionsApi.new

opts = { 
  disposition: SwaggerClient::DispositionResource.new # DispositionResource | The new disposition record
}

begin
  #Add a new disposition. 
  result = api_instance.add_disposition_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DispositionsApi->add_disposition_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disposition** | [**DispositionResource**](DispositionResource.md)| The new disposition record | [optional] 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_disposition_using_delete**
> delete_disposition_using_delete(id)

Delete a disposition

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::DispositionsApi.new

id = 789 # Integer | The id of the disposition record


begin
  #Delete a disposition
  api_instance.delete_disposition_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DispositionsApi->delete_disposition_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the disposition record | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_disposition_count_using_get**
> Array&lt;DispositionCount&gt; get_disposition_count_using_get(opts)

Returns a list of disposition counts

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DispositionsApi.new

opts = { 
  filter_context: "filter_context_example", # String | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
  filter_owner: "filter_owner_example" # String | Filter for dispositions from a specific user by id or 'me'
}

begin
  #Returns a list of disposition counts
  result = api_instance.get_disposition_count_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DispositionsApi->get_disposition_count_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_context** | **String**| Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 | [optional] 
 **filter_owner** | **String**| Filter for dispositions from a specific user by id or &#39;me&#39; | [optional] 

### Return type

[**Array&lt;DispositionCount&gt;**](DispositionCount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_disposition_using_get**
> DispositionResource get_disposition_using_get(id)

Returns a disposition

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DispositionsApi.new

id = 789 # Integer | The id of the disposition record


begin
  #Returns a disposition
  result = api_instance.get_disposition_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DispositionsApi->get_disposition_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the disposition record | 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_dispositions_using_get**
> PageDispositionResource get_dispositions_using_get(opts)

Returns a page of dispositions

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DispositionsApi.new

opts = { 
  filter_context: "filter_context_example", # String | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
  filter_owner: "filter_owner_example", # String | Filter for dispositions from a specific user by id or 'me'
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Returns a page of dispositions
  result = api_instance.get_dispositions_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DispositionsApi->get_dispositions_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_context** | **String**| Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 | [optional] 
 **filter_owner** | **String**| Filter for dispositions from a specific user by id or &#39;me&#39; | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageDispositionResource**](PageDispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



