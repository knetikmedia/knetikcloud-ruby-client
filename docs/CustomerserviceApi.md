# SwaggerClient::CustomerserviceApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer_using_post**](CustomerserviceApi.md#create_customer_using_post) | **POST** /customers | Create a customer
[**get_customers_using_get**](CustomerserviceApi.md#get_customers_using_get) | **GET** /customers | List and search customers


# **create_customer_using_post**
> create_customer_using_post(customer)

Create a customer

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CustomerserviceApi.new

customer = SwaggerClient::CustomerConfig.new # CustomerConfig | customer


begin
  #Create a customer
  api_instance.create_customer_using_post(customer)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomerserviceApi->create_customer_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer** | [**CustomerConfig**](CustomerConfig.md)| customer | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_customers_using_get**
> Array&lt;CustomerResource&gt; get_customers_using_get(opts)

List and search customers

Get a list of customers with optional filtering

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CustomerserviceApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search customers
  result = api_instance.get_customers_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomerserviceApi->get_customers_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**Array&lt;CustomerResource&gt;**](CustomerResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



