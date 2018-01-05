# KnetikCloudClient::ObjectsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_object_item**](ObjectsApi.md#create_object_item) | **POST** /objects/{template_id} | Create an object
[**create_object_template**](ObjectsApi.md#create_object_template) | **POST** /objects/templates | Create an object template
[**delete_object_item**](ObjectsApi.md#delete_object_item) | **DELETE** /objects/{template_id}/{object_id} | Delete an object
[**delete_object_template**](ObjectsApi.md#delete_object_template) | **DELETE** /objects/templates/{id} | Delete an entitlement template
[**get_object_item**](ObjectsApi.md#get_object_item) | **GET** /objects/{template_id}/{object_id} | Get a single object
[**get_object_items**](ObjectsApi.md#get_object_items) | **GET** /objects/{template_id} | List and search objects
[**get_object_template**](ObjectsApi.md#get_object_template) | **GET** /objects/templates/{id} | Get a single entitlement template
[**get_object_templates**](ObjectsApi.md#get_object_templates) | **GET** /objects/templates | List and search entitlement templates
[**update_object_item**](ObjectsApi.md#update_object_item) | **PUT** /objects/{template_id}/{object_id} | Update an object
[**update_object_template**](ObjectsApi.md#update_object_template) | **PUT** /objects/templates/{id} | Update an entitlement template


# **create_object_item**
> ObjectResource create_object_item(template_id, opts)

Create an object

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

api_instance = KnetikCloudClient::ObjectsApi.new

template_id = "template_id_example" # String | The id of the template this object is to be part of

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  object_item: KnetikCloudClient::ObjectResource.new # ObjectResource | The object item object
}

begin
  #Create an object
  result = api_instance.create_object_item(template_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ObjectsApi->create_object_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| The id of the template this object is to be part of | 
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **object_item** | [**ObjectResource**](ObjectResource.md)| The object item object | [optional] 

### Return type

[**ObjectResource**](ObjectResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_object_template**
> ItemTemplateResource create_object_template(opts)

Create an object template

Object templates define a type of entitlement and the properties they have

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

api_instance = KnetikCloudClient::ObjectsApi.new

opts = { 
  template: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The entitlement template to be created
}

begin
  #Create an object template
  result = api_instance.create_object_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ObjectsApi->create_object_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**ItemTemplateResource**](ItemTemplateResource.md)| The entitlement template to be created | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_object_item**
> delete_object_item(template_id, object_id)

Delete an object

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

api_instance = KnetikCloudClient::ObjectsApi.new

template_id = "template_id_example" # String | The id of the template this object is part of

object_id = 56 # Integer | The id of the object


begin
  #Delete an object
  api_instance.delete_object_item(template_id, object_id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ObjectsApi->delete_object_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| The id of the template this object is part of | 
 **object_id** | **Integer**| The id of the object | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_object_template**
> delete_object_template(id, opts)

Delete an entitlement template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

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

api_instance = KnetikCloudClient::ObjectsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete an entitlement template
  api_instance.delete_object_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ObjectsApi->delete_object_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| The value needed to delete used templates | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_object_item**
> ObjectResource get_object_item(template_id, object_id)

Get a single object

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

api_instance = KnetikCloudClient::ObjectsApi.new

template_id = "template_id_example" # String | The id of the template this object is part of

object_id = 56 # Integer | The id of the object


begin
  #Get a single object
  result = api_instance.get_object_item(template_id, object_id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ObjectsApi->get_object_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| The id of the template this object is part of | 
 **object_id** | **Integer**| The id of the object | 

### Return type

[**ObjectResource**](ObjectResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_object_items**
> PageResourceObjectResource get_object_items(template_id, opts)

List and search objects

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

api_instance = KnetikCloudClient::ObjectsApi.new

template_id = "template_id_example" # String | The id of the template to get objects for

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search objects
  result = api_instance.get_object_items(template_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ObjectsApi->get_object_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| The id of the template to get objects for | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceObjectResource**](PageResourceObjectResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_object_template**
> ItemTemplateResource get_object_template(id)

Get a single entitlement template

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

api_instance = KnetikCloudClient::ObjectsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single entitlement template
  result = api_instance.get_object_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ObjectsApi->get_object_template: #{e}"
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



# **get_object_templates**
> PageResourceItemTemplateResource get_object_templates(opts)

List and search entitlement templates

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

api_instance = KnetikCloudClient::ObjectsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search entitlement templates
  result = api_instance.get_object_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ObjectsApi->get_object_templates: #{e}"
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



# **update_object_item**
> update_object_item(template_id, object_id, opts)

Update an object

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

api_instance = KnetikCloudClient::ObjectsApi.new

template_id = "template_id_example" # String | The id of the template this object is part of

object_id = 56 # Integer | The id of the object

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  object_item: KnetikCloudClient::ObjectResource.new # ObjectResource | The object item object
}

begin
  #Update an object
  api_instance.update_object_item(template_id, object_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ObjectsApi->update_object_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| The id of the template this object is part of | 
 **object_id** | **Integer**| The id of the object | 
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **object_item** | [**ObjectResource**](ObjectResource.md)| The object item object | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_object_template**
> ItemTemplateResource update_object_template(id, opts)

Update an entitlement template

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

api_instance = KnetikCloudClient::ObjectsApi.new

id = "id_example" # String | The id of the template

opts = { 
  template: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The updated template
}

begin
  #Update an entitlement template
  result = api_instance.update_object_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ObjectsApi->update_object_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**ItemTemplateResource**](ItemTemplateResource.md)| The updated template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



