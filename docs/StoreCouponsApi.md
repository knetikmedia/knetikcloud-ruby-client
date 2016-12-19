# SwaggerClient::StoreCouponsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon_item_using_post**](StoreCouponsApi.md#create_coupon_item_using_post) | **POST** /store/coupons | Create a coupon item
[**create_coupon_template_using_post**](StoreCouponsApi.md#create_coupon_template_using_post) | **POST** /store/coupons/templates | Create a coupon template
[**delete_coupon_item_using_delete**](StoreCouponsApi.md#delete_coupon_item_using_delete) | **DELETE** /store/coupons/{id} | Delete a coupon item
[**delete_coupon_template_using_delete**](StoreCouponsApi.md#delete_coupon_template_using_delete) | **DELETE** /store/coupons/templates/{id} | Delete a coupon template
[**get_coupon_item_using_get**](StoreCouponsApi.md#get_coupon_item_using_get) | **GET** /store/coupons/{id} | Get a single coupon item
[**get_coupon_template_using_get**](StoreCouponsApi.md#get_coupon_template_using_get) | **GET** /store/coupons/templates/{id} | Get a single coupon template
[**get_coupon_templates_using_get**](StoreCouponsApi.md#get_coupon_templates_using_get) | **GET** /store/coupons/templates | List and search coupon templates
[**update_coupon_item_using_put**](StoreCouponsApi.md#update_coupon_item_using_put) | **PUT** /store/coupons/{id} | Update a coupon item
[**update_coupon_template_using_put**](StoreCouponsApi.md#update_coupon_template_using_put) | **PUT** /store/coupons/templates/{id} | Update a coupon template


# **create_coupon_item_using_post**
> CouponItem create_coupon_item_using_post(opts)

Create a coupon item

SKUs have to be unique in the entire store.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreCouponsApi.new

opts = { 
  coupon_item: SwaggerClient::CouponItem.new # CouponItem | The coupon item object
}

begin
  #Create a coupon item
  result = api_instance.create_coupon_item_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->create_coupon_item_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_item** | [**CouponItem**](CouponItem.md)| The coupon item object | [optional] 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create_coupon_template_using_post**
> ItemTemplateResource create_coupon_template_using_post(opts)

Create a coupon template

Coupon Templates define a type of coupon and the properties they have.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreCouponsApi.new

opts = { 
  coupon_template_resource: SwaggerClient::ItemTemplateResource.new # ItemTemplateResource | The new coupon template
}

begin
  #Create a coupon template
  result = api_instance.create_coupon_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->create_coupon_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new coupon template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_coupon_item_using_delete**
> delete_coupon_item_using_delete(id)

Delete a coupon item

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreCouponsApi.new

id = 56 # Integer | The id of the coupon


begin
  #Delete a coupon item
  api_instance.delete_coupon_item_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->delete_coupon_item_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the coupon | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_coupon_template_using_delete**
> delete_coupon_template_using_delete(id, opts)

Delete a coupon template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreCouponsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | force deleting the template if it's attached to other objects, cascade = detach
}

begin
  #Delete a coupon template
  api_instance.delete_coupon_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->delete_coupon_template_using_delete: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_coupon_item_using_get**
> CouponItem get_coupon_item_using_get(id)

Get a single coupon item

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreCouponsApi.new

id = 56 # Integer | The id of the coupon


begin
  #Get a single coupon item
  result = api_instance.get_coupon_item_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->get_coupon_item_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the coupon | 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_coupon_template_using_get**
> ItemTemplateResource get_coupon_template_using_get(id)

Get a single coupon template

Coupon Templates define a type of coupon and the properties they have.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreCouponsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single coupon template
  result = api_instance.get_coupon_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->get_coupon_template_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_coupon_templates_using_get**
> PageItemTemplateResource get_coupon_templates_using_get(opts)

List and search coupon templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreCouponsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search coupon templates
  result = api_instance.get_coupon_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->get_coupon_templates_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageItemTemplateResource**](PageItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_coupon_item_using_put**
> update_coupon_item_using_put(id, opts)

Update a coupon item

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreCouponsApi.new

id = 56 # Integer | The id of the coupon

opts = { 
  coupon_item: SwaggerClient::CouponItem.new # CouponItem | The coupon item object
}

begin
  #Update a coupon item
  api_instance.update_coupon_item_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->update_coupon_item_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the coupon | 
 **coupon_item** | [**CouponItem**](CouponItem.md)| The coupon item object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_coupon_template_using_put**
> update_coupon_template_using_put(id, opts)

Update a coupon template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreCouponsApi.new

id = "id_example" # String | The id of the template

opts = { 
  coupon_template_resource: SwaggerClient::ItemTemplateResource.new # ItemTemplateResource | The coupon template resource object
}

begin
  #Update a coupon template
  api_instance.update_coupon_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->update_coupon_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **coupon_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The coupon template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



