# KnetikCloudClient::StoreVendorsApi

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_vendor**](StoreVendorsApi.md#create_vendor) | **POST** /vendors | Create a vendor
[**create_vendor_template**](StoreVendorsApi.md#create_vendor_template) | **POST** /vendors/templates | Create a vendor template
[**delete_vendor**](StoreVendorsApi.md#delete_vendor) | **DELETE** /vendors/{id} | Delete a vendor
[**delete_vendor_template**](StoreVendorsApi.md#delete_vendor_template) | **DELETE** /vendors/templates/{id} | Delete a vendor template
[**get_vendor**](StoreVendorsApi.md#get_vendor) | **GET** /vendors/{id} | Get a single vendor
[**get_vendor_template**](StoreVendorsApi.md#get_vendor_template) | **GET** /vendors/templates/{id} | Get a single vendor template
[**get_vendor_templates**](StoreVendorsApi.md#get_vendor_templates) | **GET** /vendors/templates | List and search vendor templates
[**get_vendors**](StoreVendorsApi.md#get_vendors) | **GET** /vendors | List and search vendors
[**update_vendor**](StoreVendorsApi.md#update_vendor) | **PUT** /vendors/{id} | Update a vendor
[**update_vendor_template**](StoreVendorsApi.md#update_vendor_template) | **PUT** /vendors/templates/{id} | Update a vendor template


# **create_vendor**
> VendorResource create_vendor(opts)

Create a vendor

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

api_instance = KnetikCloudClient::StoreVendorsApi.new

opts = { 
  vendor: KnetikCloudClient::VendorResource.new # VendorResource | The vendor
}

begin
  #Create a vendor
  result = api_instance.create_vendor(opts)
  p result
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_vendor_template**
> ItemTemplateResource create_vendor_template(opts)

Create a vendor template

Vendor Templates define a type of vendor and the properties they have.

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

api_instance = KnetikCloudClient::StoreVendorsApi.new

opts = { 
  vendor_template_resource: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The new vendor template
}

begin
  #Create a vendor template
  result = api_instance.create_vendor_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->create_vendor_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendor_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new vendor template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_vendor**
> delete_vendor(id)

Delete a vendor

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

api_instance = KnetikCloudClient::StoreVendorsApi.new

id = 56 # Integer | The id of the vendor


begin
  #Delete a vendor
  api_instance.delete_vendor(id)
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_vendor_template**
> delete_vendor_template(id, opts)

Delete a vendor template

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

api_instance = KnetikCloudClient::StoreVendorsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | force deleting the template if it's attached to other objects, cascade = detach
}

begin
  #Delete a vendor template
  api_instance.delete_vendor_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->delete_vendor_template: #{e}"
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



# **get_vendor**
> VendorResource get_vendor(id)

Get a single vendor

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

api_instance = KnetikCloudClient::StoreVendorsApi.new

id = 56 # Integer | The id of the vendor


begin
  #Get a single vendor
  result = api_instance.get_vendor(id)
  p result
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_vendor_template**
> ItemTemplateResource get_vendor_template(id)

Get a single vendor template

Vendor Templates define a type of vendor and the properties they have.

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

api_instance = KnetikCloudClient::StoreVendorsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single vendor template
  result = api_instance.get_vendor_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->get_vendor_template: #{e}"
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



# **get_vendor_templates**
> PageResourceItemTemplateResource get_vendor_templates(opts)

List and search vendor templates

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

api_instance = KnetikCloudClient::StoreVendorsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search vendor templates
  result = api_instance.get_vendor_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->get_vendor_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageResourceItemTemplateResource**](PageResourceItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_vendors**
> PageResourceVendorResource get_vendors(opts)

List and search vendors

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

api_instance = KnetikCloudClient::StoreVendorsApi.new

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
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_vendor**
> VendorResource update_vendor(id, opts)

Update a vendor

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

api_instance = KnetikCloudClient::StoreVendorsApi.new

id = 56 # Integer | The id of the vendor

opts = { 
  vendor: KnetikCloudClient::VendorResource.new # VendorResource | The vendor
}

begin
  #Update a vendor
  result = api_instance.update_vendor(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->update_vendor: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the vendor | 
 **vendor** | [**VendorResource**](VendorResource.md)| The vendor | [optional] 

### Return type

[**VendorResource**](VendorResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_vendor_template**
> ItemTemplateResource update_vendor_template(id, opts)

Update a vendor template

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

api_instance = KnetikCloudClient::StoreVendorsApi.new

id = "id_example" # String | The id of the template

opts = { 
  vendor_template_resource: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The vendor template resource object
}

begin
  #Update a vendor template
  result = api_instance.update_vendor_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling StoreVendorsApi->update_vendor_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **vendor_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The vendor template resource object | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



