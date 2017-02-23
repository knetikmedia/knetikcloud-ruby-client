# SwaggerClient::CategoriesApi

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_category**](CategoriesApi.md#create_category) | **POST** /categories | Create a new category
[**create_category_template**](CategoriesApi.md#create_category_template) | **POST** /categories/templates | Create a category template
[**delete_category**](CategoriesApi.md#delete_category) | **DELETE** /categories/{id} | Delete an existing category
[**delete_category_template**](CategoriesApi.md#delete_category_template) | **DELETE** /categories/templates/{id} | Delete a category template
[**get_categories**](CategoriesApi.md#get_categories) | **GET** /categories | List and search categories with optional filters
[**get_category**](CategoriesApi.md#get_category) | **GET** /categories/{id} | Get a single category
[**get_category_template**](CategoriesApi.md#get_category_template) | **GET** /categories/templates/{id} | Get a single category template
[**get_category_templates**](CategoriesApi.md#get_category_templates) | **GET** /categories/templates | List and search category templates
[**get_tags**](CategoriesApi.md#get_tags) | **GET** /tags | List all trivia tags in the system
[**update_category**](CategoriesApi.md#update_category) | **PUT** /categories/{id} | Update an existing category
[**update_category_template**](CategoriesApi.md#update_category_template) | **PUT** /categories/templates/{id} | Update a category template


# **create_category**
> CategoryResource create_category(opts)

Create a new category

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

opts = { 
  category: SwaggerClient::CategoryResource.new # CategoryResource | The category to create
}

begin
  #Create a new category
  result = api_instance.create_category(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->create_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**CategoryResource**](CategoryResource.md)| The category to create | [optional] 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_category_template**
> TemplateResource create_category_template(opts)

Create a category template

Templates define a type of category and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

opts = { 
  template: SwaggerClient::TemplateResource.new # TemplateResource | The template to create
}

begin
  #Create a category template
  result = api_instance.create_category_template(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->create_category_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_category**
> delete_category(id)

Delete an existing category

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the category to be deleted


begin
  #Delete an existing category
  api_instance.delete_category(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->delete_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category to be deleted | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_category_template**
> delete_category_template(id, opts)

Delete a category template

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

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a category template
  api_instance.delete_category_template(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->delete_category_template: #{e}"
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



# **get_categories**
> PageResourceCategoryResource get_categories(opts)

List and search categories with optional filters

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CategoriesApi.new

opts = { 
  filter_search: "filter_search_example", # String | Filter for categories whose names begin with provided string
  filter_active: true, # BOOLEAN | Filter for categories that are specifically active or inactive
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search categories with optional filters
  result = api_instance.get_categories(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_search** | **String**| Filter for categories whose names begin with provided string | [optional] 
 **filter_active** | **BOOLEAN**| Filter for categories that are specifically active or inactive | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceCategoryResource**](PageResourceCategoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_category**
> CategoryResource get_category(id)

Get a single category

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the category to retrieve


begin
  #Get a single category
  result = api_instance.get_category(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category to retrieve | 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_category_template**
> TemplateResource get_category_template(id)

Get a single category template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single category template
  result = api_instance.get_category_template(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_category_template: #{e}"
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



# **get_category_templates**
> PageResourceTemplateResource get_category_templates(opts)

List and search category templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search category templates
  result = api_instance.get_category_templates(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_category_templates: #{e}"
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



# **get_tags**
> PageResourcestring get_tags(opts)

List all trivia tags in the system

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CategoriesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List all trivia tags in the system
  result = api_instance.get_tags(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourcestring**](PageResourcestring.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_category**
> CategoryResource update_category(id, opts)

Update an existing category

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the category

opts = { 
  category: SwaggerClient::CategoryResource.new # CategoryResource | The category to update
}

begin
  #Update an existing category
  result = api_instance.update_category(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->update_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category | 
 **category** | [**CategoryResource**](CategoryResource.md)| The category to update | [optional] 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_category_template**
> TemplateResource update_category_template(id, opts)

Update a category template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the template

opts = { 
  template: SwaggerClient::TemplateResource.new # TemplateResource | The updated template information
}

begin
  #Update a category template
  result = api_instance.update_category_template(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->update_category_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template information | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



