# KnetikCloudClient::StoreBundlesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bundle_item**](StoreBundlesApi.md#create_bundle_item) | **POST** /store/bundles | Create a bundle item
[**create_bundle_template**](StoreBundlesApi.md#create_bundle_template) | **POST** /store/bundles/templates | Create a bundle template
[**delete_bundle_item**](StoreBundlesApi.md#delete_bundle_item) | **DELETE** /store/bundles/{id} | Delete a bundle item
[**delete_bundle_template**](StoreBundlesApi.md#delete_bundle_template) | **DELETE** /store/bundles/templates/{id} | Delete a bundle template
[**get_bundle_item**](StoreBundlesApi.md#get_bundle_item) | **GET** /store/bundles/{id} | Get a single bundle item
[**get_bundle_template**](StoreBundlesApi.md#get_bundle_template) | **GET** /store/bundles/templates/{id} | Get a single bundle template
[**get_bundle_templates**](StoreBundlesApi.md#get_bundle_templates) | **GET** /store/bundles/templates | List and search bundle templates
[**update_bundle_item**](StoreBundlesApi.md#update_bundle_item) | **PUT** /store/bundles/{id} | Update a bundle item
[**update_bundle_template**](StoreBundlesApi.md#update_bundle_template) | **PUT** /store/bundles/templates/{id} | Update a bundle template


# **create_bundle_item**
> BundleItem create_bundle_item(opts)

Create a bundle item

The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item.

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

api_instance = KnetikCloudClient::StoreBundlesApi.new

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  bundle_item: KnetikCloudClient::BundleItem.new # BundleItem | The bundle item object
}

begin
  #Create a bundle item
  result = api_instance.create_bundle_item(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->create_bundle_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **bundle_item** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_bundle_template**
> ItemTemplateResource create_bundle_template(opts)

Create a bundle template

Bundle Templates define a type of bundle and the properties they have.

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

api_instance = KnetikCloudClient::StoreBundlesApi.new

opts = { 
  bundle_template_resource: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The new bundle template
}

begin
  #Create a bundle template
  result = api_instance.create_bundle_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->create_bundle_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new bundle template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_bundle_item**
> delete_bundle_item(id)

Delete a bundle item

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

api_instance = KnetikCloudClient::StoreBundlesApi.new

id = 56 # Integer | The id of the bundle


begin
  #Delete a bundle item
  api_instance.delete_bundle_item(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->delete_bundle_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the bundle | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_bundle_template**
> delete_bundle_template(id, opts)

Delete a bundle template

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

api_instance = KnetikCloudClient::StoreBundlesApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | force deleting the template if it's attached to other objects, cascade = detach
}

begin
  #Delete a bundle template
  api_instance.delete_bundle_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->delete_bundle_template: #{e}"
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



# **get_bundle_item**
> BundleItem get_bundle_item(id)

Get a single bundle item

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

api_instance = KnetikCloudClient::StoreBundlesApi.new

id = 56 # Integer | The id of the bundle


begin
  #Get a single bundle item
  result = api_instance.get_bundle_item(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->get_bundle_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the bundle | 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bundle_template**
> ItemTemplateResource get_bundle_template(id)

Get a single bundle template

Bundle Templates define a type of bundle and the properties they have.

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

api_instance = KnetikCloudClient::StoreBundlesApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single bundle template
  result = api_instance.get_bundle_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->get_bundle_template: #{e}"
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



# **get_bundle_templates**
> PageResourceItemTemplateResource get_bundle_templates(opts)

List and search bundle templates

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

api_instance = KnetikCloudClient::StoreBundlesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search bundle templates
  result = api_instance.get_bundle_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->get_bundle_templates: #{e}"
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



# **update_bundle_item**
> BundleItem update_bundle_item(id, opts)

Update a bundle item

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

api_instance = KnetikCloudClient::StoreBundlesApi.new

id = 56 # Integer | The id of the bundle

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  bundle_item: KnetikCloudClient::BundleItem.new # BundleItem | The bundle item object
}

begin
  #Update a bundle item
  result = api_instance.update_bundle_item(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->update_bundle_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the bundle | 
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **bundle_item** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_bundle_template**
> ItemTemplateResource update_bundle_template(id, opts)

Update a bundle template

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

api_instance = KnetikCloudClient::StoreBundlesApi.new

id = "id_example" # String | The id of the template

opts = { 
  bundle_template_resource: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The bundle template resource object
}

begin
  #Update a bundle template
  result = api_instance.update_bundle_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreBundlesApi->update_bundle_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **bundle_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The bundle template resource object | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



