# SwaggerClient::BRERuleEngineCategoriesApi

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bre_category_template**](BRERuleEngineCategoriesApi.md#create_bre_category_template) | **POST** /bre/categories/templates | Create a BRE category template
[**delete_bre_category_template**](BRERuleEngineCategoriesApi.md#delete_bre_category_template) | **DELETE** /bre/categories/templates/{id} | Delete a BRE category template
[**get_bre_categories**](BRERuleEngineCategoriesApi.md#get_bre_categories) | **GET** /bre/categories | List categories
[**get_bre_category**](BRERuleEngineCategoriesApi.md#get_bre_category) | **GET** /bre/categories/{name} | Get a single category
[**get_bre_category_template**](BRERuleEngineCategoriesApi.md#get_bre_category_template) | **GET** /bre/categories/templates/{id} | Get a single BRE category template
[**get_bre_category_templates**](BRERuleEngineCategoriesApi.md#get_bre_category_templates) | **GET** /bre/categories/templates | List and search BRE category templates
[**update_bre_category**](BRERuleEngineCategoriesApi.md#update_bre_category) | **PUT** /bre/categories/{name} | Update a category
[**update_bre_category_template**](BRERuleEngineCategoriesApi.md#update_bre_category_template) | **PUT** /bre/categories/templates/{id} | Update a BRE category template


# **create_bre_category_template**
> TemplateResource create_bre_category_template(opts)

Create a BRE category template

Templates define a type of BRE category and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

opts = { 
  template: SwaggerClient::TemplateResource.new # TemplateResource | The category template to create
}

begin
  #Create a BRE category template
  result = api_instance.create_bre_category_template(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->create_bre_category_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The category template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_bre_category_template**
> delete_bre_category_template(id, opts)

Delete a BRE category template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a BRE category template
  api_instance.delete_bre_category_template(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->delete_bre_category_template: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bre_categories**
> PageResourceBreCategoryResource get_bre_categories(opts)

List categories

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List categories
  result = api_instance.get_bre_categories(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->get_bre_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceBreCategoryResource**](PageResourceBreCategoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bre_category**
> BreCategoryResource get_bre_category(name)

Get a single category

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

name = "name_example" # String | The category name


begin
  #Get a single category
  result = api_instance.get_bre_category(name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->get_bre_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The category name | 

### Return type

[**BreCategoryResource**](BreCategoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bre_category_template**
> TemplateResource get_bre_category_template(id)

Get a single BRE category template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single BRE category template
  result = api_instance.get_bre_category_template(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->get_bre_category_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bre_category_templates**
> PageResourceTemplateResource get_bre_category_templates(opts)

List and search BRE category templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search BRE category templates
  result = api_instance.get_bre_category_templates(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->get_bre_category_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTemplateResource**](PageResourceTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_bre_category**
> BreCategoryResource update_bre_category(name, opts)

Update a category

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

name = "name_example" # String | The category name

opts = { 
  category: SwaggerClient::BreCategoryResource.new # BreCategoryResource | The updated BRE category information
}

begin
  #Update a category
  result = api_instance.update_bre_category(name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->update_bre_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The category name | 
 **category** | [**BreCategoryResource**](BreCategoryResource.md)| The updated BRE category information | [optional] 

### Return type

[**BreCategoryResource**](BreCategoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_bre_category_template**
> TemplateResource update_bre_category_template(id, opts)

Update a BRE category template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

id = "id_example" # String | The id of the template

opts = { 
  template: SwaggerClient::TemplateResource.new # TemplateResource | The updated category template definition
}

begin
  #Update a BRE category template
  result = api_instance.update_bre_category_template(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->update_bre_category_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated category template definition | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



