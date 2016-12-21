# SwaggerClient::StoreShippingApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_shipping_item_using_post**](StoreShippingApi.md#create_shipping_item_using_post) | **POST** /store/shipping | Create a shipping item
[**create_shipping_template_using_post**](StoreShippingApi.md#create_shipping_template_using_post) | **POST** /store/shipping/templates | Create a shipping template
[**delete_shipping_item_using_delete**](StoreShippingApi.md#delete_shipping_item_using_delete) | **DELETE** /store/shipping/{id} | Delete a shipping item
[**delete_shipping_template_using_delete**](StoreShippingApi.md#delete_shipping_template_using_delete) | **DELETE** /store/shipping/templates/{id} | Delete a shipping template
[**get_shipping_item_using_get**](StoreShippingApi.md#get_shipping_item_using_get) | **GET** /store/shipping/{id} | Get a single shipping item
[**get_shipping_template_using_get**](StoreShippingApi.md#get_shipping_template_using_get) | **GET** /store/shipping/templates/{id} | Get a single shipping template
[**get_shipping_templates_using_get**](StoreShippingApi.md#get_shipping_templates_using_get) | **GET** /store/shipping/templates | List and search shipping templates
[**update_shipping_item_using_put**](StoreShippingApi.md#update_shipping_item_using_put) | **PUT** /store/shipping/{id} | Update a shipping item
[**update_shipping_template_using_put**](StoreShippingApi.md#update_shipping_template_using_put) | **PUT** /store/shipping/templates/{id} | Update a shipping template


# **create_shipping_item_using_post**
> ShippingItem create_shipping_item_using_post(opts)

Create a shipping item

A shipping item represents a shipping option and cost. SKUs have to be unique in the entire store.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShippingApi.new

opts = { 
  shipping_item: SwaggerClient::ShippingItem.new # ShippingItem | The shipping item object
}

begin
  #Create a shipping item
  result = api_instance.create_shipping_item_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShippingApi->create_shipping_item_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping_item** | [**ShippingItem**](ShippingItem.md)| The shipping item object | [optional] 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_shipping_template_using_post**
> ItemTemplateResource create_shipping_template_using_post(opts)

Create a shipping template

Shipping Templates define a type of shipping and the properties they have.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShippingApi.new

opts = { 
  shipping_template_resource: SwaggerClient::ItemTemplateResource.new # ItemTemplateResource | The new shipping template
}

begin
  #Create a shipping template
  result = api_instance.create_shipping_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShippingApi->create_shipping_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new shipping template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_shipping_item_using_delete**
> delete_shipping_item_using_delete(id)

Delete a shipping item

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShippingApi.new

id = 56 # Integer | The id of the shipping item


begin
  #Delete a shipping item
  api_instance.delete_shipping_item_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShippingApi->delete_shipping_item_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the shipping item | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_shipping_template_using_delete**
> delete_shipping_template_using_delete(id, opts)

Delete a shipping template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShippingApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | force deleting the template if it's attached to other objects, cascade = detach
}

begin
  #Delete a shipping template
  api_instance.delete_shipping_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShippingApi->delete_shipping_template_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipping_item_using_get**
> ShippingItem get_shipping_item_using_get(id)

Get a single shipping item

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShippingApi.new

id = 56 # Integer | The id of the shipping item


begin
  #Get a single shipping item
  result = api_instance.get_shipping_item_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShippingApi->get_shipping_item_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the shipping item | 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipping_template_using_get**
> ItemTemplateResource get_shipping_template_using_get(id)

Get a single shipping template

Shipping Templates define a type of shipping and the properties they have.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShippingApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single shipping template
  result = api_instance.get_shipping_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShippingApi->get_shipping_template_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipping_templates_using_get**
> PageResourceItemTemplateResource get_shipping_templates_using_get(opts)

List and search shipping templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShippingApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search shipping templates
  result = api_instance.get_shipping_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShippingApi->get_shipping_templates_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceItemTemplateResource**](PageResourceItemTemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shipping_item_using_put**
> update_shipping_item_using_put(id, opts)

Update a shipping item

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShippingApi.new

id = 56 # Integer | The id of the shipping item

opts = { 
  shipping_item: SwaggerClient::ShippingItem.new # ShippingItem | The shipping item object
}

begin
  #Update a shipping item
  api_instance.update_shipping_item_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShippingApi->update_shipping_item_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the shipping item | 
 **shipping_item** | [**ShippingItem**](ShippingItem.md)| The shipping item object | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shipping_template_using_put**
> update_shipping_template_using_put(id, opts)

Update a shipping template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShippingApi.new

id = "id_example" # String | The id of the template

opts = { 
  shipping_template_resource: SwaggerClient::ItemTemplateResource.new # ItemTemplateResource | The shipping template resource object
}

begin
  #Update a shipping template
  api_instance.update_shipping_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShippingApi->update_shipping_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **shipping_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The shipping template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



