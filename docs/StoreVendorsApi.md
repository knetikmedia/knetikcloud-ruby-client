# SwaggerClient::StoreVendorsApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_vendor**](StoreVendorsApi.md#create_vendor) | **POST** /vendors | Create a vendor
[**delete_vendor**](StoreVendorsApi.md#delete_vendor) | **DELETE** /vendors/{id} | Delete a vendor
[**get_vendor**](StoreVendorsApi.md#get_vendor) | **GET** /vendors/{id} | Get a single vendor
[**get_vendors**](StoreVendorsApi.md#get_vendors) | **GET** /vendors | List and search vendors
[**update_vendor**](StoreVendorsApi.md#update_vendor) | **PUT** /vendors/{id} | Update a vendor


# **create_vendor**
> VendorResource create_vendor(opts)

Create a vendor

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreVendorsApi.new

opts = { 
  vendor: SwaggerClient::VendorResource.new # VendorResource | The vendor
}

begin
  #Create a vendor
  result = api_instance.create_vendor(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->create_vendor: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendor** | [**VendorResource**](VendorResource.md)| The vendor | [optional] 

### Return type

[**VendorResource**](VendorResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_vendor**
> delete_vendor(id)

Delete a vendor

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreVendorsApi.new

id = 56 # Integer | The id of the vendor


begin
  #Delete a vendor
  api_instance.delete_vendor(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->delete_vendor: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the vendor | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_vendor**
> VendorResource get_vendor(id)

Get a single vendor

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreVendorsApi.new

id = 56 # Integer | The id of the vendor


begin
  #Get a single vendor
  result = api_instance.get_vendor(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->get_vendor: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the vendor | 

### Return type

[**VendorResource**](VendorResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_vendors**
> PageResourceVendorResource get_vendors(opts)

List and search vendors

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreVendorsApi.new

opts = { 
  filter_name: "filter_name_example", # String | Filters vendors by name starting with the text provided in the filter
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search vendors
  result = api_instance.get_vendors(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->get_vendors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_name** | **String**| Filters vendors by name starting with the text provided in the filter | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceVendorResource**](PageResourceVendorResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_vendor**
> update_vendor(id, opts)

Update a vendor

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreVendorsApi.new

id = 56 # Integer | The id of the vendor

opts = { 
  vendor: SwaggerClient::VendorResource.new # VendorResource | The vendor
}

begin
  #Update a vendor
  api_instance.update_vendor(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->update_vendor: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the vendor | 
 **vendor** | [**VendorResource**](VendorResource.md)| The vendor | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



