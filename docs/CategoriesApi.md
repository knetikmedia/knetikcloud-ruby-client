# SwaggerClient::CategoriesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_category_using_post**](CategoriesApi.md#create_category_using_post) | **POST** /categories | Create a new category
[**create_template_using_post2**](CategoriesApi.md#create_template_using_post2) | **POST** /categories/templates | Create a category template
[**delete_category_using_delete**](CategoriesApi.md#delete_category_using_delete) | **DELETE** /categories/{id} | Delete an existing category
[**delete_template_using_delete1**](CategoriesApi.md#delete_template_using_delete1) | **DELETE** /categories/templates/{id} | Delete a category template
[**get_article_templates_using_get1**](CategoriesApi.md#get_article_templates_using_get1) | **GET** /categories/templates | List and search category templates
[**get_categories_using_get1**](CategoriesApi.md#get_categories_using_get1) | **GET** /categories | List and search categories with optional filters
[**get_category_using_get1**](CategoriesApi.md#get_category_using_get1) | **GET** /categories/{id} | Get a single category
[**get_tags_using_get**](CategoriesApi.md#get_tags_using_get) | **GET** /tags | List all trivia tags in the system
[**get_template_using_get1**](CategoriesApi.md#get_template_using_get1) | **GET** /categories/templates/{id} | Get a single category template
[**update_category_using_put1**](CategoriesApi.md#update_category_using_put1) | **PUT** /categories/{id} | Update an existing category
[**update_template_using_put2**](CategoriesApi.md#update_template_using_put2) | **PUT** /categories/templates/{id} | Update a category template


# **create_category_using_post**
> CategoryResource create_category_using_post(opts)

Create a new category

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

opts = { 
  category: SwaggerClient::CategoryResource.new # CategoryResource | The category to create
}

begin
  #Create a new category
  result = api_instance.create_category_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->create_category_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**CategoryResource**](CategoryResource.md)| The category to create | [optional] 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_template_using_post2**
> TemplateResource create_template_using_post2(opts)

Create a category template

Templates define a type of category and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

opts = { 
  template: SwaggerClient::TemplateResource.new # TemplateResource | The template to create
}

begin
  #Create a category template
  result = api_instance.create_template_using_post2(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->create_template_using_post2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_category_using_delete**
> delete_category_using_delete(id)

Delete an existing category

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the category to be deleted


begin
  #Delete an existing category
  api_instance.delete_category_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->delete_category_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category to be deleted | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_template_using_delete1**
> delete_template_using_delete1(id, opts)

Delete a category template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a category template
  api_instance.delete_template_using_delete1(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->delete_template_using_delete1: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_article_templates_using_get1**
> PageResourceTemplateResource get_article_templates_using_get1(opts)

List and search category templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
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
  result = api_instance.get_article_templates_using_get1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_article_templates_using_get1: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_categories_using_get1**
> PageResourceCategoryResource get_categories_using_get1(opts)

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
  result = api_instance.get_categories_using_get1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_categories_using_get1: #{e}"
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



# **get_category_using_get1**
> CategoryResource get_category_using_get1(id)

Get a single category

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the category to retrieve


begin
  #Get a single category
  result = api_instance.get_category_using_get1(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_category_using_get1: #{e}"
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



# **get_tags_using_get**
> PageResourcestring get_tags_using_get(opts)

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
  result = api_instance.get_tags_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_tags_using_get: #{e}"
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



# **get_template_using_get1**
> TemplateResource get_template_using_get1(id)

Get a single category template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single category template
  result = api_instance.get_template_using_get1(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_template_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_category_using_put1**
> update_category_using_put1(id, opts)

Update an existing category

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the category

opts = { 
  category: SwaggerClient::CategoryResource.new # CategoryResource | The category to update
}

begin
  #Update an existing category
  api_instance.update_category_using_put1(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->update_category_using_put1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the category | 
 **category** | [**CategoryResource**](CategoryResource.md)| The category to update | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_template_using_put2**
> update_template_using_put2(id, opts)

Update a category template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CategoriesApi.new

id = "id_example" # String | The id of the template

opts = { 
  template: SwaggerClient::TemplateResource.new # TemplateResource | The updated template information
}

begin
  #Update a category template
  api_instance.update_template_using_put2(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->update_template_using_put2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template information | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



