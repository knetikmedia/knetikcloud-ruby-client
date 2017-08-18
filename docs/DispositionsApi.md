# KnetikCloudClient::DispositionsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_disposition**](DispositionsApi.md#add_disposition) | **POST** /dispositions | Add a new disposition
[**delete_disposition**](DispositionsApi.md#delete_disposition) | **DELETE** /dispositions/{id} | Delete a disposition
[**get_disposition**](DispositionsApi.md#get_disposition) | **GET** /dispositions/{id} | Returns a disposition
[**get_disposition_counts**](DispositionsApi.md#get_disposition_counts) | **GET** /dispositions/count | Returns a list of disposition counts
[**get_dispositions**](DispositionsApi.md#get_dispositions) | **GET** /dispositions | Returns a page of dispositions


# **add_disposition**
> DispositionResource add_disposition(opts)

Add a new disposition

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

api_instance = KnetikCloudClient::DispositionsApi.new

opts = { 
  disposition: KnetikCloudClient::DispositionResource.new # DispositionResource | The new disposition record
}

begin
  #Add a new disposition
  result = api_instance.add_disposition(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DispositionsApi->add_disposition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disposition** | [**DispositionResource**](DispositionResource.md)| The new disposition record | [optional] 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_disposition**
> delete_disposition(id)

Delete a disposition

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

api_instance = KnetikCloudClient::DispositionsApi.new

id = 789 # Integer | The id of the disposition record


begin
  #Delete a disposition
  api_instance.delete_disposition(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DispositionsApi->delete_disposition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the disposition record | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_disposition**
> DispositionResource get_disposition(id)

Returns a disposition

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::DispositionsApi.new

id = 789 # Integer | The id of the disposition record


begin
  #Returns a disposition
  result = api_instance.get_disposition(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DispositionsApi->get_disposition: #{e}"
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
 - **Accept**: application/json



# **get_disposition_counts**
> Array&lt;DispositionCount&gt; get_disposition_counts(opts)

Returns a list of disposition counts

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::DispositionsApi.new

opts = { 
  filter_context: "filter_context_example", # String | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
  filter_owner: "filter_owner_example" # String | Filter for dispositions from a specific user by id or 'me'
}

begin
  #Returns a list of disposition counts
  result = api_instance.get_disposition_counts(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DispositionsApi->get_disposition_counts: #{e}"
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
 - **Accept**: application/json



# **get_dispositions**
> PageResourceDispositionResource get_dispositions(opts)

Returns a page of dispositions

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::DispositionsApi.new

opts = { 
  filter_context: "filter_context_example", # String | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
  filter_owner: "filter_owner_example", # String | Filter for dispositions from a specific user by id or 'me'
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Returns a page of dispositions
  result = api_instance.get_dispositions(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DispositionsApi->get_dispositions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_context** | **String**| Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 | [optional] 
 **filter_owner** | **String**| Filter for dispositions from a specific user by id or &#39;me&#39; | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceDispositionResource**](PageResourceDispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



