# SwaggerClient::StoreSalesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_catalog_sale_using_post**](StoreSalesApi.md#create_catalog_sale_using_post) | **POST** /store/sales | Create a sale
[**delete_catalog_sale_using_delete**](StoreSalesApi.md#delete_catalog_sale_using_delete) | **DELETE** /store/sales/{id} | Delete a sale
[**get_catalog_sale_using_get**](StoreSalesApi.md#get_catalog_sale_using_get) | **GET** /store/sales/{id} | Get a single sale
[**get_catalog_sales_using_get**](StoreSalesApi.md#get_catalog_sales_using_get) | **GET** /store/sales | List and search sales
[**update_catalog_sale_using_put**](StoreSalesApi.md#update_catalog_sale_using_put) | **PUT** /store/sales/{id} | Update a sale


# **create_catalog_sale_using_post**
> CatalogSale create_catalog_sale_using_post(opts)

Create a sale

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSalesApi.new

opts = { 
  catalog_sale: SwaggerClient::CatalogSale.new # CatalogSale | The catalog sale object
}

begin
  #Create a sale
  result = api_instance.create_catalog_sale_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSalesApi->create_catalog_sale_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_sale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_catalog_sale_using_delete**
> delete_catalog_sale_using_delete(id)

Delete a sale

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSalesApi.new

id = 56 # Integer | The id of the sale


begin
  #Delete a sale
  api_instance.delete_catalog_sale_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSalesApi->delete_catalog_sale_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the sale | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_catalog_sale_using_get**
> CatalogSale get_catalog_sale_using_get(id)

Get a single sale

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSalesApi.new

id = 56 # Integer | The id of the sale


begin
  #Get a single sale
  result = api_instance.get_catalog_sale_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSalesApi->get_catalog_sale_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the sale | 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_catalog_sales_using_get**
> PageResourceCatalogSale get_catalog_sales_using_get(opts)

List and search sales

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSalesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search sales
  result = api_instance.get_catalog_sales_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSalesApi->get_catalog_sales_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceCatalogSale**](PageResourceCatalogSale.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_catalog_sale_using_put**
> update_catalog_sale_using_put(id, opts)

Update a sale

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSalesApi.new

id = 56 # Integer | The id of the sale

opts = { 
  catalog_sale: SwaggerClient::CatalogSale.new # CatalogSale | The catalog sale object
}

begin
  #Update a sale
  api_instance.update_catalog_sale_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSalesApi->update_catalog_sale_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the sale | 
 **catalog_sale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



