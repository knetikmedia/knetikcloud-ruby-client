# SwaggerClient::SearchApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**external_add_using_post**](SearchApi.md#external_add_using_post) | **POST** /search/index/{type}/{id} | Add a new object to an index
[**external_delete_all_using_delete**](SearchApi.md#external_delete_all_using_delete) | **DELETE** /search/index/{type} | Delete all objects in an index
[**external_delete_using_delete**](SearchApi.md#external_delete_using_delete) | **DELETE** /search/index/{type}/{id} | Delete an object
[**external_register_using_post**](SearchApi.md#external_register_using_post) | **POST** /search/mappings | Register reference mappings
[**search_using_post**](SearchApi.md#search_using_post) | **POST** /search/index/{type} | Search an index


# **external_add_using_post**
> external_add_using_post(type, id, opts)

Add a new object to an index

Mainly intended for internal use.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::SearchApi.new

type = "type_example" # String | The index type

id = "id_example" # String | The ID of the object

opts = { 
  object: nil # Object | The object to add
}

begin
  #Add a new object to an index
  api_instance.external_add_using_post(type, id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->external_add_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The ID of the object | 
 **object** | **Object**| The object to add | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **external_delete_all_using_delete**
> external_delete_all_using_delete(type)

Delete all objects in an index

Mainly intended for internal use

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::SearchApi.new

type = "type_example" # String | The index type


begin
  #Delete all objects in an index
  api_instance.external_delete_all_using_delete(type)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->external_delete_all_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **external_delete_using_delete**
> external_delete_using_delete(type, id)

Delete an object

Mainly intended for internal use. Requires SEARCH_ADMIN.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::SearchApi.new

type = "type_example" # String | The index type

id = "id_example" # String | The ID of the object to delete


begin
  #Delete an object
  api_instance.external_delete_using_delete(type, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->external_delete_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The ID of the object to delete | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **external_register_using_post**
> external_register_using_post(opts)

Register reference mappings

Add a new type mapping to connect data from one index to another, or discover an exsting one. Mainly intended for internal use.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::SearchApi.new

opts = { 
  mappings: [SwaggerClient::SearchReferenceMapping.new] # Array<SearchReferenceMapping> | The mappings to add
}

begin
  #Register reference mappings
  api_instance.external_register_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->external_register_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mappings** | [**Array&lt;SearchReferenceMapping&gt;**](SearchReferenceMapping.md)| The mappings to add | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_using_post**
> PageResourceMapstringobject search_using_post(type, opts)

Search an index

The body is an ElasticSearch query in JSON format. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html'>documentation</a> for details on the format and search options. The searchable object's format depends on on the type. See individual search endpoints on other resources for details on their format.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SearchApi.new

type = "type_example" # String | The index type

opts = { 
  query: nil, # Object | The query to be used for the search
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Search an index
  result = api_instance.search_using_post(type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->search_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **query** | **Object**| The query to be used for the search | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceMapstringobject**](PageResourceMapstringobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



