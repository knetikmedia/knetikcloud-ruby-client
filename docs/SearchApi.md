# KnetikCloudClient::SearchApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_search_index**](SearchApi.md#add_search_index) | **POST** /search/index/{type}/{id} | Add a new object to an index
[**add_search_mappings**](SearchApi.md#add_search_mappings) | **POST** /search/mappings | Register reference mappings
[**delete_search_index**](SearchApi.md#delete_search_index) | **DELETE** /search/index/{type}/{id} | Delete an object
[**delete_search_indexes**](SearchApi.md#delete_search_indexes) | **DELETE** /search/index/{type} | Delete all objects in an index
[**search_index**](SearchApi.md#search_index) | **POST** /search/index/{type} | Search an index


# **add_search_index**
> add_search_index(type, id, opts)

Add a new object to an index

Mainly intended for internal use.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::SearchApi.new

type = "type_example" # String | The index type

id = "id_example" # String | The ID of the object

opts = { 
  object: nil # Object | The object to add
}

begin
  #Add a new object to an index
  api_instance.add_search_index(type, id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->add_search_index: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_search_mappings**
> add_search_mappings(opts)

Register reference mappings

Add a new type mapping to connect data from one index to another, or discover an exsting one. Mainly intended for internal use.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::SearchApi.new

opts = { 
  mappings: [KnetikCloudClient::SearchReferenceMapping.new] # Array<SearchReferenceMapping> | The mappings to add
}

begin
  #Register reference mappings
  api_instance.add_search_mappings(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->add_search_mappings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mappings** | [**Array&lt;SearchReferenceMapping&gt;**](SearchReferenceMapping.md)| The mappings to add | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_search_index**
> delete_search_index(type, id)

Delete an object

Mainly intended for internal use. Requires SEARCH_ADMIN.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::SearchApi.new

type = "type_example" # String | The index type

id = "id_example" # String | The ID of the object to delete


begin
  #Delete an object
  api_instance.delete_search_index(type, id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->delete_search_index: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_search_indexes**
> delete_search_indexes(type)

Delete all objects in an index

Mainly intended for internal use

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::SearchApi.new

type = "type_example" # String | The index type


begin
  #Delete all objects in an index
  api_instance.delete_search_indexes(type)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->delete_search_indexes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_index**
> PageResourceMapstringobject search_index(type, opts)

Search an index

The body is an ElasticSearch query in JSON format. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html'>documentation</a> for details on the format and search options. The searchable object's format depends on on the type. See individual search endpoints on other resources for details on their format.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::SearchApi.new

type = "type_example" # String | The index type

opts = { 
  query: nil, # Object | The query to be used for the search
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Search an index
  result = api_instance.search_index(type, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_index: #{e}"
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



