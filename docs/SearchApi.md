# KnetikCloudClient::SearchApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_count_get**](SearchApi.md#search_count_get) | **GET** /search/count/{type} | Count matches with no template
[**search_count_post**](SearchApi.md#search_count_post) | **POST** /search/count/{type} | Count matches with no template
[**search_count_with_template_get**](SearchApi.md#search_count_with_template_get) | **GET** /search/count/{type}/{template} | Count matches with a template
[**search_count_with_template_post**](SearchApi.md#search_count_with_template_post) | **POST** /search/count/{type}/{template} | Count matches with a template
[**search_document_get**](SearchApi.md#search_document_get) | **GET** /search/documents/{type}/{id} | Get document with no template
[**search_document_with_template_get**](SearchApi.md#search_document_with_template_get) | **GET** /search/documents/{type}/{template}/{id} | Get document with a template
[**search_explain_get**](SearchApi.md#search_explain_get) | **GET** /search/explain/{type}/{id} | Explain matches with no template
[**search_explain_post**](SearchApi.md#search_explain_post) | **POST** /search/explain/{type}/{id} | Explain matches with no template
[**search_explain_with_template_get**](SearchApi.md#search_explain_with_template_get) | **GET** /search/explain/{type}/{template}/{id} | Explain matches with a template
[**search_explain_with_template_post**](SearchApi.md#search_explain_with_template_post) | **POST** /search/explain/{type}/{template}/{id} | Explain matches with a template
[**search_index**](SearchApi.md#search_index) | **POST** /search/index/{type} | Search an index with no template
[**search_index_get**](SearchApi.md#search_index_get) | **GET** /search/index/{type} | Search an index with no template
[**search_index_with_template_get**](SearchApi.md#search_index_with_template_get) | **GET** /search/index/{type}/{template} | Search an index with a template
[**search_index_with_template_post**](SearchApi.md#search_index_with_template_post) | **POST** /search/index/{type}/{template} | Search an index with a template
[**search_indices_get**](SearchApi.md#search_indices_get) | **GET** /search/indices | Get indices
[**search_mappings_get**](SearchApi.md#search_mappings_get) | **GET** /search/mappings/{type} | Get mapping with no template
[**search_mappings_with_template_get**](SearchApi.md#search_mappings_with_template_get) | **GET** /search/mappings/{type}/{template} | Get mapping with a template
[**search_validate_get**](SearchApi.md#search_validate_get) | **GET** /search/validate/{type} | Validate matches with no template
[**search_validate_post**](SearchApi.md#search_validate_post) | **POST** /search/validate/{type} | Validate matches with no template
[**search_validate_with_template_get**](SearchApi.md#search_validate_with_template_get) | **GET** /search/validate/{type}/{template} | Validate matches with a template
[**search_validate_with_template_post**](SearchApi.md#search_validate_with_template_post) | **POST** /search/validate/{type}/{template} | Validate matches with a template


# **search_count_get**
> Object search_count_get(type)

Count matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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


begin
  #Count matches with no template
  result = api_instance.search_count_get(type)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_count_post**
> Object search_count_post(type, opts)

Count matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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
  query: nil # Object | The query to be used for the search
}

begin
  #Count matches with no template
  result = api_instance.search_count_post(type, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_count_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **query** | **Object**| The query to be used for the search | [optional] 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_count_with_template_get**
> Object search_count_with_template_get(type, template)

Count matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

template = "template_example" # String | The index template


begin
  #Count matches with a template
  result = api_instance.search_count_with_template_get(type, template)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_count_with_template_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_count_with_template_post**
> Object search_count_with_template_post(type, template, opts)

Count matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _count.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

template = "template_example" # String | The index template

opts = { 
  query: nil # Object | The query to be used for the search
}

begin
  #Count matches with a template
  result = api_instance.search_count_with_template_post(type, template, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_count_with_template_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 
 **query** | **Object**| The query to be used for the search | [optional] 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_document_get**
> Object search_document_get(type, id)

Get document with no template

This is a 1 to 1 mapping of a ElasticSearch call.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

id = "id_example" # String | The index id


begin
  #Get document with no template
  result = api_instance.search_document_get(type, id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_document_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_document_with_template_get**
> Object search_document_with_template_get(type, id, template)

Get document with a template

This is a 1 to 1 mapping of a ElasticSearch call.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

id = "id_example" # String | The index id

template = "template_example" # String | The index template


begin
  #Get document with a template
  result = api_instance.search_document_with_template_get(type, id, template)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_document_with_template_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 
 **template** | **String**| The index template | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_explain_get**
> Object search_explain_get(type, id)

Explain matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

id = "id_example" # String | The index id


begin
  #Explain matches with no template
  result = api_instance.search_explain_get(type, id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_explain_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_explain_post**
> Object search_explain_post(type, id, opts)

Explain matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

id = "id_example" # String | The index id

opts = { 
  query: nil # Object | The query to be used for the search
}

begin
  #Explain matches with no template
  result = api_instance.search_explain_post(type, id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_explain_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 
 **query** | **Object**| The query to be used for the search | [optional] 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_explain_with_template_get**
> Object search_explain_with_template_get(type, id, template)

Explain matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

id = "id_example" # String | The index id

template = "template_example" # String | The index template


begin
  #Explain matches with a template
  result = api_instance.search_explain_with_template_get(type, id, template)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_explain_with_template_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 
 **template** | **String**| The index template | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_explain_with_template_post**
> Object search_explain_with_template_post(type, id, template, opts)

Explain matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _explain.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-count.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

id = "id_example" # String | The index id

template = "template_example" # String | The index template

opts = { 
  query: nil # Object | The query to be used for the search
}

begin
  #Explain matches with a template
  result = api_instance.search_explain_with_template_post(type, id, template, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_explain_with_template_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **id** | **String**| The index id | 
 **template** | **String**| The index template | 
 **query** | **Object**| The query to be used for the search | [optional] 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_index**
> Object search_index(type, opts)

Search an index with no template

This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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
  query: nil # Object | The query to be used for the search
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

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_index_get**
> Object search_index_get(type)

Search an index with no template

This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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


begin
  #Search an index with no template
  result = api_instance.search_index_get(type)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_index_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_index_with_template_get**
> Object search_index_with_template_get(type, template)

Search an index with a template

This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

template = "template_example" # String | The index template


begin
  #Search an index with a template
  result = api_instance.search_index_with_template_get(type, template)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_index_with_template_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_index_with_template_post**
> Object search_index_with_template_post(type, template, opts)

Search an index with a template

This is a 1 to 1 mapping of a ElasticSearch call to _search.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

template = "template_example" # String | The index template

opts = { 
  query: nil # Object | The query to be used for the search
}

begin
  #Search an index with a template
  result = api_instance.search_index_with_template_post(type, template, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_index_with_template_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 
 **query** | **Object**| The query to be used for the search | [optional] 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_indices_get**
> Object search_indices_get

Get indices

This is a 1 to 1 mapping of a ElasticSearch call to _cat/indices for indices.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-mapping.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

begin
  #Get indices
  result = api_instance.search_indices_get
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_indices_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_mappings_get**
> Object search_mappings_get(type)

Get mapping with no template

This is a 1 to 1 mapping of a ElasticSearch call to _mapping.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-mapping.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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


begin
  #Get mapping with no template
  result = api_instance.search_mappings_get(type)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_mappings_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_mappings_with_template_get**
> Object search_mappings_with_template_get(type, template)

Get mapping with a template

This is a 1 to 1 mapping of a ElasticSearch call to _mapping.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-mapping.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

template = "template_example" # String | The index template


begin
  #Get mapping with a template
  result = api_instance.search_mappings_with_template_get(type, template)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_mappings_with_template_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_validate_get**
> Object search_validate_get(type)

Validate matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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


begin
  #Validate matches with no template
  result = api_instance.search_validate_get(type)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_validate_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_validate_post**
> Object search_validate_post(type, opts)

Validate matches with no template

This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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
  query: nil # Object | The query to be used for the search
}

begin
  #Validate matches with no template
  result = api_instance.search_validate_post(type, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_validate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **query** | **Object**| The query to be used for the search | [optional] 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_validate_with_template_get**
> Object search_validate_with_template_get(type, template)

Validate matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

template = "template_example" # String | The index template


begin
  #Validate matches with a template
  result = api_instance.search_validate_with_template_get(type, template)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_validate_with_template_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_validate_with_template_post**
> Object search_validate_with_template_post(type, template, opts)

Validate matches with a template

This is a 1 to 1 mapping of a ElasticSearch call to _validate/query.  Further information can be found at their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/search-validate.html'>API guide</a>. <br><br><b>Permissions Needed:</b> SEARCH_ADMIN

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

template = "template_example" # String | The index template

opts = { 
  query: nil # Object | The query to be used for the search
}

begin
  #Validate matches with a template
  result = api_instance.search_validate_with_template_post(type, template, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SearchApi->search_validate_with_template_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The index type | 
 **template** | **String**| The index template | 
 **query** | **Object**| The query to be used for the search | [optional] 

### Return type

**Object**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



