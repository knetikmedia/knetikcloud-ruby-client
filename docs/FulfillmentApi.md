# KnetikCloudClient::FulfillmentApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_fulfillment_type**](FulfillmentApi.md#create_fulfillment_type) | **POST** /store/fulfillment/types | Create a fulfillment type
[**delete_fulfillment_type**](FulfillmentApi.md#delete_fulfillment_type) | **DELETE** /store/fulfillment/types/{id} | Delete a fulfillment type
[**get_fulfillment_type**](FulfillmentApi.md#get_fulfillment_type) | **GET** /store/fulfillment/types/{id} | Get a single fulfillment type
[**get_fulfillment_types**](FulfillmentApi.md#get_fulfillment_types) | **GET** /store/fulfillment/types | List and search fulfillment types
[**update_fulfillment_type**](FulfillmentApi.md#update_fulfillment_type) | **PUT** /store/fulfillment/types/{id} | Update a fulfillment type


# **create_fulfillment_type**
> FulfillmentType create_fulfillment_type(opts)

Create a fulfillment type

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::FulfillmentApi.new

opts = { 
  type: KnetikCloudClient::FulfillmentType.new # FulfillmentType | The fulfillment type
}

begin
  #Create a fulfillment type
  result = api_instance.create_fulfillment_type(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling FulfillmentApi->create_fulfillment_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**FulfillmentType**](FulfillmentType.md)| The fulfillment type | [optional] 

### Return type

[**FulfillmentType**](FulfillmentType.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_fulfillment_type**
> delete_fulfillment_type(id)

Delete a fulfillment type

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::FulfillmentApi.new

id = 56 # Integer | The id


begin
  #Delete a fulfillment type
  api_instance.delete_fulfillment_type(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling FulfillmentApi->delete_fulfillment_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_fulfillment_type**
> FulfillmentType get_fulfillment_type(id)

Get a single fulfillment type

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::FulfillmentApi.new

id = 56 # Integer | The id


begin
  #Get a single fulfillment type
  result = api_instance.get_fulfillment_type(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling FulfillmentApi->get_fulfillment_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id | 

### Return type

[**FulfillmentType**](FulfillmentType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_fulfillment_types**
> PageResourceFulfillmentType get_fulfillment_types(opts)

List and search fulfillment types

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::FulfillmentApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search fulfillment types
  result = api_instance.get_fulfillment_types(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling FulfillmentApi->get_fulfillment_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceFulfillmentType**](PageResourceFulfillmentType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_fulfillment_type**
> update_fulfillment_type(id, opts)

Update a fulfillment type

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::FulfillmentApi.new

id = 56 # Integer | The id

opts = { 
  fulfillment_type: KnetikCloudClient::FulfillmentType.new # FulfillmentType | The fulfillment type
}

begin
  #Update a fulfillment type
  api_instance.update_fulfillment_type(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling FulfillmentApi->update_fulfillment_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id | 
 **fulfillment_type** | [**FulfillmentType**](FulfillmentType.md)| The fulfillment type | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



