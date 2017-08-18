# KnetikCloudClient::StoreCouponsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon_item**](StoreCouponsApi.md#create_coupon_item) | **POST** /store/coupons | Create a coupon item
[**create_coupon_template**](StoreCouponsApi.md#create_coupon_template) | **POST** /store/coupons/templates | Create a coupon template
[**delete_coupon_item**](StoreCouponsApi.md#delete_coupon_item) | **DELETE** /store/coupons/{id} | Delete a coupon item
[**delete_coupon_template**](StoreCouponsApi.md#delete_coupon_template) | **DELETE** /store/coupons/templates/{id} | Delete a coupon template
[**get_coupon_item**](StoreCouponsApi.md#get_coupon_item) | **GET** /store/coupons/{id} | Get a single coupon item
[**get_coupon_template**](StoreCouponsApi.md#get_coupon_template) | **GET** /store/coupons/templates/{id} | Get a single coupon template
[**get_coupon_templates**](StoreCouponsApi.md#get_coupon_templates) | **GET** /store/coupons/templates | List and search coupon templates
[**update_coupon_item**](StoreCouponsApi.md#update_coupon_item) | **PUT** /store/coupons/{id} | Update a coupon item
[**update_coupon_template**](StoreCouponsApi.md#update_coupon_template) | **PUT** /store/coupons/templates/{id} | Update a coupon template


# **create_coupon_item**
> CouponItem create_coupon_item(opts)

Create a coupon item

SKUs have to be unique in the entire store.

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

api_instance = KnetikCloudClient::StoreCouponsApi.new

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  coupon_item: KnetikCloudClient::CouponItem.new # CouponItem | The coupon item object
}

begin
  #Create a coupon item
  result = api_instance.create_coupon_item(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->create_coupon_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **coupon_item** | [**CouponItem**](CouponItem.md)| The coupon item object | [optional] 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_coupon_template**
> ItemTemplateResource create_coupon_template(opts)

Create a coupon template

Coupon Templates define a type of coupon and the properties they have.

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

api_instance = KnetikCloudClient::StoreCouponsApi.new

opts = { 
  coupon_template_resource: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The new coupon template
}

begin
  #Create a coupon template
  result = api_instance.create_coupon_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->create_coupon_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new coupon template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_coupon_item**
> delete_coupon_item(id)

Delete a coupon item

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

api_instance = KnetikCloudClient::StoreCouponsApi.new

id = 56 # Integer | The id of the coupon


begin
  #Delete a coupon item
  api_instance.delete_coupon_item(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->delete_coupon_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the coupon | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_coupon_template**
> delete_coupon_template(id, opts)

Delete a coupon template

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

api_instance = KnetikCloudClient::StoreCouponsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | force deleting the template if it's attached to other objects, cascade = detach
}

begin
  #Delete a coupon template
  api_instance.delete_coupon_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->delete_coupon_template: #{e}"
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



# **get_coupon_item**
> CouponItem get_coupon_item(id)

Get a single coupon item

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

api_instance = KnetikCloudClient::StoreCouponsApi.new

id = 56 # Integer | The id of the coupon


begin
  #Get a single coupon item
  result = api_instance.get_coupon_item(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->get_coupon_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the coupon | 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_coupon_template**
> ItemTemplateResource get_coupon_template(id)

Get a single coupon template

Coupon Templates define a type of coupon and the properties they have.

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

api_instance = KnetikCloudClient::StoreCouponsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single coupon template
  result = api_instance.get_coupon_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->get_coupon_template: #{e}"
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



# **get_coupon_templates**
> PageResourceItemTemplateResource get_coupon_templates(opts)

List and search coupon templates

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

api_instance = KnetikCloudClient::StoreCouponsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search coupon templates
  result = api_instance.get_coupon_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->get_coupon_templates: #{e}"
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



# **update_coupon_item**
> CouponItem update_coupon_item(id, opts)

Update a coupon item

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

api_instance = KnetikCloudClient::StoreCouponsApi.new

id = 56 # Integer | The id of the coupon

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  coupon_item: KnetikCloudClient::CouponItem.new # CouponItem | The coupon item object
}

begin
  #Update a coupon item
  result = api_instance.update_coupon_item(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->update_coupon_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the coupon | 
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **coupon_item** | [**CouponItem**](CouponItem.md)| The coupon item object | [optional] 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_coupon_template**
> ItemTemplateResource update_coupon_template(id, opts)

Update a coupon template

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

api_instance = KnetikCloudClient::StoreCouponsApi.new

id = "id_example" # String | The id of the template

opts = { 
  coupon_template_resource: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The coupon template resource object
}

begin
  #Update a coupon template
  result = api_instance.update_coupon_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreCouponsApi->update_coupon_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **coupon_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The coupon template resource object | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



