# SwaggerClient::FulfillmentApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_fulfillment_type_using_post**](FulfillmentApi.md#create_fulfillment_type_using_post) | **POST** /store/fulfillment/types | Create a fulfillment type
[**delete_fulfillment_type_using_delete**](FulfillmentApi.md#delete_fulfillment_type_using_delete) | **DELETE** /store/fulfillment/types/{id} | Delete a fulfillment type
[**get_fulfillment_type_using_get**](FulfillmentApi.md#get_fulfillment_type_using_get) | **GET** /store/fulfillment/types/{id} | Get a single fulfillment type
[**get_fulfillments_using_get**](FulfillmentApi.md#get_fulfillments_using_get) | **GET** /store/fulfillment/types | List and search fulfillment types
[**update_fulfillment_type_using_put**](FulfillmentApi.md#update_fulfillment_type_using_put) | **PUT** /store/fulfillment/types/{id} | Update a fulfillment type


# **create_fulfillment_type_using_post**
> FulfillmentType create_fulfillment_type_using_post(opts)

Create a fulfillment type

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::FulfillmentApi.new

opts = { 
  type: SwaggerClient::FulfillmentType.new # FulfillmentType | The fulfillment type
}

begin
  #Create a fulfillment type
  result = api_instance.create_fulfillment_type_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FulfillmentApi->create_fulfillment_type_using_post: #{e}"
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



# **delete_fulfillment_type_using_delete**
> delete_fulfillment_type_using_delete(id)

Delete a fulfillment type

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::FulfillmentApi.new

id = 56 # Integer | The id


begin
  #Delete a fulfillment type
  api_instance.delete_fulfillment_type_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FulfillmentApi->delete_fulfillment_type_using_delete: #{e}"
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



# **get_fulfillment_type_using_get**
> FulfillmentType get_fulfillment_type_using_get(id)

Get a single fulfillment type

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FulfillmentApi.new

id = 56 # Integer | The id


begin
  #Get a single fulfillment type
  result = api_instance.get_fulfillment_type_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FulfillmentApi->get_fulfillment_type_using_get: #{e}"
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



# **get_fulfillments_using_get**
> PageFulfillmentType get_fulfillments_using_get(opts)

List and search fulfillment types

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FulfillmentApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search fulfillment types
  result = api_instance.get_fulfillments_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FulfillmentApi->get_fulfillments_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageFulfillmentType**](PageFulfillmentType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_fulfillment_type_using_put**
> update_fulfillment_type_using_put(id, opts)

Update a fulfillment type

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::FulfillmentApi.new

id = 56 # Integer | The id

opts = { 
  fulfillment_type: SwaggerClient::FulfillmentType.new # FulfillmentType | The fulfillment type
}

begin
  #Update a fulfillment type
  api_instance.update_fulfillment_type_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FulfillmentApi->update_fulfillment_type_using_put: #{e}"
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



