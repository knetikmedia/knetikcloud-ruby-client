# KnetikCloudClient::StoreSalesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_catalog_sale**](StoreSalesApi.md#create_catalog_sale) | **POST** /store/sales | Create a sale
[**delete_catalog_sale**](StoreSalesApi.md#delete_catalog_sale) | **DELETE** /store/sales/{id} | Delete a sale
[**get_catalog_sale**](StoreSalesApi.md#get_catalog_sale) | **GET** /store/sales/{id} | Get a single sale
[**get_catalog_sales**](StoreSalesApi.md#get_catalog_sales) | **GET** /store/sales | List and search sales
[**update_catalog_sale**](StoreSalesApi.md#update_catalog_sale) | **PUT** /store/sales/{id} | Update a sale


# **create_catalog_sale**
> CatalogSale create_catalog_sale(opts)

Create a sale

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::StoreSalesApi.new

opts = { 
  catalog_sale: KnetikCloudClient::CatalogSale.new # CatalogSale | The catalog sale object
}

begin
  #Create a sale
  result = api_instance.create_catalog_sale(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreSalesApi->create_catalog_sale: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_sale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_catalog_sale**
> delete_catalog_sale(id)

Delete a sale

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::StoreSalesApi.new

id = 56 # Integer | The id of the sale


begin
  #Delete a sale
  api_instance.delete_catalog_sale(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreSalesApi->delete_catalog_sale: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the sale | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_catalog_sale**
> CatalogSale get_catalog_sale(id)

Get a single sale

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::StoreSalesApi.new

id = 56 # Integer | The id of the sale


begin
  #Get a single sale
  result = api_instance.get_catalog_sale(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreSalesApi->get_catalog_sale: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the sale | 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_catalog_sales**
> PageResourceCatalogSale get_catalog_sales(opts)

List and search sales

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::StoreSalesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search sales
  result = api_instance.get_catalog_sales(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreSalesApi->get_catalog_sales: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_catalog_sale**
> CatalogSale update_catalog_sale(id, opts)

Update a sale

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::StoreSalesApi.new

id = 56 # Integer | The id of the sale

opts = { 
  catalog_sale: KnetikCloudClient::CatalogSale.new # CatalogSale | The catalog sale object
}

begin
  #Update a sale
  result = api_instance.update_catalog_sale(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreSalesApi->update_catalog_sale: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the sale | 
 **catalog_sale** | [**CatalogSale**](CatalogSale.md)| The catalog sale object | [optional] 

### Return type

[**CatalogSale**](CatalogSale.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



