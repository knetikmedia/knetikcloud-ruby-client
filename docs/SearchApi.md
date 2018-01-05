# KnetikCloudClient::SearchApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_index**](SearchApi.md#search_index) | **POST** /search/index/{type} | Search an index with no template
[**search_index_with_template**](SearchApi.md#search_index_with_template) | **POST** /search/index/{type}/{template} | Search an index with a template


# **search_index**
> PageResourceMapstringobject search_index(type, opts)

Search an index with no template

The body is an ElasticSearch query in JSON format. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html'>documentation</a> for details on the format and search options. The searchable object's format depends on on the type but mostly matches the resource from it's main endpoint. Exceptions include referenced objects (like user) being replaced with the full user resource to allow deeper searching.

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

api_instance = KnetikCloudClient::SearchApi.new

type = "type_example" # String | The index type

opts = { 
  query: nil, # Object | The query to be used for the search
  size: 25, # Integer | The number of documents returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Search an index with no template
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
 **size** | **Integer**| The number of documents returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceMapstringobject**](PageResourceMapstringobject.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_index_with_template**
> PageResourceMapstringobject search_index_with_template(type, template, opts)

Search an index with a template

The body is an ElasticSearch query in JSON format. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html'>documentation</a> for details on the format and search options. The searchable object's format depends on on the type but mostly matches the resource from it's main endpoint. Exceptions include referenced objects (like user) being replaced with the full user resource to allow deeper searching.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::SearchApi.new

type = "type_example" # String | The index type

template = "template_example" # String | The index template

opts = { 
  query: nil, # Object | The query to be used for the search
  size: 25, # Integer | The number of documents returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Search an index with a template
  result = api_instance.search_index_with_template(type, template, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_index_with_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 
 **query** | **Object**| The query to be used for the search | [optional] 
 **size** | **Integer**| The number of documents returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceMapstringobject**](PageResourceMapstringobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



