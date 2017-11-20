# KnetikCloudClient::StoreShippingApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_shipping_item**](StoreShippingApi.md#create_shipping_item) | **POST** /store/shipping | Create a shipping item
[**create_shipping_template**](StoreShippingApi.md#create_shipping_template) | **POST** /store/shipping/templates | Create a shipping template
[**delete_shipping_item**](StoreShippingApi.md#delete_shipping_item) | **DELETE** /store/shipping/{id} | Delete a shipping item
[**delete_shipping_template**](StoreShippingApi.md#delete_shipping_template) | **DELETE** /store/shipping/templates/{id} | Delete a shipping template
[**get_shipping_item**](StoreShippingApi.md#get_shipping_item) | **GET** /store/shipping/{id} | Get a single shipping item
[**get_shipping_template**](StoreShippingApi.md#get_shipping_template) | **GET** /store/shipping/templates/{id} | Get a single shipping template
[**get_shipping_templates**](StoreShippingApi.md#get_shipping_templates) | **GET** /store/shipping/templates | List and search shipping templates
[**update_shipping_item**](StoreShippingApi.md#update_shipping_item) | **PUT** /store/shipping/{id} | Update a shipping item
[**update_shipping_template**](StoreShippingApi.md#update_shipping_template) | **PUT** /store/shipping/templates/{id} | Update a shipping template


# **create_shipping_item**
> ShippingItem create_shipping_item(opts)

Create a shipping item

A shipping item represents a shipping option and cost. SKUs have to be unique in the entire store.

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

api_instance = KnetikCloudClient::StoreShippingApi.new

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  shipping_item: KnetikCloudClient::ShippingItem.new # ShippingItem | The shipping item object
}

begin
  #Create a shipping item
  result = api_instance.create_shipping_item(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreShippingApi->create_shipping_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **shipping_item** | [**ShippingItem**](ShippingItem.md)| The shipping item object | [optional] 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_shipping_template**
> ItemTemplateResource create_shipping_template(opts)

Create a shipping template

Shipping Templates define a type of shipping and the properties they have.

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

api_instance = KnetikCloudClient::StoreShippingApi.new

opts = { 
  shipping_template_resource: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The new shipping template
}

begin
  #Create a shipping template
  result = api_instance.create_shipping_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreShippingApi->create_shipping_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new shipping template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_shipping_item**
> delete_shipping_item(id)

Delete a shipping item

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

api_instance = KnetikCloudClient::StoreShippingApi.new

id = 56 # Integer | The id of the shipping item


begin
  #Delete a shipping item
  api_instance.delete_shipping_item(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreShippingApi->delete_shipping_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the shipping item | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_shipping_template**
> delete_shipping_template(id, opts)

Delete a shipping template

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

api_instance = KnetikCloudClient::StoreShippingApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | force deleting the template if it's attached to other objects, cascade = detach
}

begin
  #Delete a shipping template
  api_instance.delete_shipping_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreShippingApi->delete_shipping_template: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipping_item**
> ShippingItem get_shipping_item(id)

Get a single shipping item

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

api_instance = KnetikCloudClient::StoreShippingApi.new

id = 56 # Integer | The id of the shipping item


begin
  #Get a single shipping item
  result = api_instance.get_shipping_item(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreShippingApi->get_shipping_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the shipping item | 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipping_template**
> ItemTemplateResource get_shipping_template(id)

Get a single shipping template

Shipping Templates define a type of shipping and the properties they have.

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

api_instance = KnetikCloudClient::StoreShippingApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single shipping template
  result = api_instance.get_shipping_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreShippingApi->get_shipping_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipping_templates**
> PageResourceItemTemplateResource get_shipping_templates(opts)

List and search shipping templates

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

api_instance = KnetikCloudClient::StoreShippingApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search shipping templates
  result = api_instance.get_shipping_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreShippingApi->get_shipping_templates: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shipping_item**
> ShippingItem update_shipping_item(id, opts)

Update a shipping item

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

api_instance = KnetikCloudClient::StoreShippingApi.new

id = 56 # Integer | The id of the shipping item

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  shipping_item: KnetikCloudClient::ShippingItem.new # ShippingItem | The shipping item object
}

begin
  #Update a shipping item
  result = api_instance.update_shipping_item(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreShippingApi->update_shipping_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the shipping item | 
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **shipping_item** | [**ShippingItem**](ShippingItem.md)| The shipping item object | [optional] 

### Return type

[**ShippingItem**](ShippingItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shipping_template**
> ItemTemplateResource update_shipping_template(id, opts)

Update a shipping template

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

api_instance = KnetikCloudClient::StoreShippingApi.new

id = "id_example" # String | The id of the template

opts = { 
  shipping_template_resource: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The shipping template resource object
}

begin
  #Update a shipping template
  result = api_instance.update_shipping_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreShippingApi->update_shipping_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **shipping_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The shipping template resource object | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



