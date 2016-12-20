# SwaggerClient::StoreBundlesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bundle_item_using_post**](StoreBundlesApi.md#create_bundle_item_using_post) | **POST** /store/bundles | Create a bundle item
[**create_bundle_template_using_post**](StoreBundlesApi.md#create_bundle_template_using_post) | **POST** /store/bundles/templates | Create a bundle template
[**delete_bundle_template_using_delete**](StoreBundlesApi.md#delete_bundle_template_using_delete) | **DELETE** /store/bundles/templates/{id} | Delete a bundle template
[**delete_store_item_using_delete**](StoreBundlesApi.md#delete_store_item_using_delete) | **DELETE** /store/bundles/{id} | Delete a bundle item
[**get_bundle_template_using_get**](StoreBundlesApi.md#get_bundle_template_using_get) | **GET** /store/bundles/templates/{id} | Get a single bundle template
[**get_bundle_templates_using_get**](StoreBundlesApi.md#get_bundle_templates_using_get) | **GET** /store/bundles/templates | List and search bundle templates
[**get_store_item_using_get**](StoreBundlesApi.md#get_store_item_using_get) | **GET** /store/bundles/{id} | Get a single bundle item
[**update_bundle_item_using_put**](StoreBundlesApi.md#update_bundle_item_using_put) | **PUT** /store/bundles/{id} | Update a bundle item
[**update_bundle_template_using_put**](StoreBundlesApi.md#update_bundle_template_using_put) | **PUT** /store/bundles/templates/{id} | Update a bundle template


# **create_bundle_item_using_post**
> BundleItem create_bundle_item_using_post(opts)

Create a bundle item

The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreBundlesApi.new

opts = { 
  bundle_item: SwaggerClient::BundleItem.new # BundleItem | The bundle item object
}

begin
  #Create a bundle item
  result = api_instance.create_bundle_item_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->create_bundle_item_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_item** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create_bundle_template_using_post**
> ItemTemplateResource create_bundle_template_using_post(opts)

Create a bundle template

Bundle Templates define a type of bundle and the properties they have.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreBundlesApi.new

opts = { 
  bundle_template_resource: SwaggerClient::ItemTemplateResource.new # ItemTemplateResource | The new bundle template
}

begin
  #Create a bundle template
  result = api_instance.create_bundle_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->create_bundle_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new bundle template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_bundle_template_using_delete**
> delete_bundle_template_using_delete(id, opts)

Delete a bundle template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreBundlesApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | force deleting the template if it's attached to other objects, cascade = detach
}

begin
  #Delete a bundle template
  api_instance.delete_bundle_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->delete_bundle_template_using_delete: #{e}"
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



# **delete_store_item_using_delete**
> delete_store_item_using_delete(id)

Delete a bundle item

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreBundlesApi.new

id = 56 # Integer | The id of the bundle


begin
  #Delete a bundle item
  api_instance.delete_store_item_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->delete_store_item_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the bundle | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_bundle_template_using_get**
> ItemTemplateResource get_bundle_template_using_get(id)

Get a single bundle template

Bundle Templates define a type of bundle and the properties they have.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreBundlesApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single bundle template
  result = api_instance.get_bundle_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->get_bundle_template_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_bundle_templates_using_get**
> PageItemTemplateResource get_bundle_templates_using_get(opts)

List and search bundle templates

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreBundlesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search bundle templates
  result = api_instance.get_bundle_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->get_bundle_templates_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageItemTemplateResource**](PageItemTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_store_item_using_get**
> BundleItem get_store_item_using_get(id)

Get a single bundle item

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreBundlesApi.new

id = 56 # Integer | The id of the bundle


begin
  #Get a single bundle item
  result = api_instance.get_store_item_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->get_store_item_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the bundle | 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_bundle_item_using_put**
> update_bundle_item_using_put(id, opts)

Update a bundle item

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreBundlesApi.new

id = 56 # Integer | The id of the bundle

opts = { 
  bundle_item: SwaggerClient::BundleItem.new # BundleItem | The bundle item object
}

begin
  #Update a bundle item
  api_instance.update_bundle_item_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->update_bundle_item_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the bundle | 
 **bundle_item** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_bundle_template_using_put**
> update_bundle_template_using_put(id, opts)

Update a bundle template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreBundlesApi.new

id = "id_example" # String | The id of the template

opts = { 
  bundle_template_resource: SwaggerClient::ItemTemplateResource.new # ItemTemplateResource | The bundle template resource object
}

begin
  #Update a bundle template
  api_instance.update_bundle_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->update_bundle_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **bundle_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The bundle template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



