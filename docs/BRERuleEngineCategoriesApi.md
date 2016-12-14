# SwaggerClient::BRERuleEngineCategoriesApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_template_using_post1**](BRERuleEngineCategoriesApi.md#create_template_using_post1) | **POST** /bre/categories/templates | Create a BRE category template
[**delete_template_using_delete**](BRERuleEngineCategoriesApi.md#delete_template_using_delete) | **DELETE** /bre/categories/templates/{id} | Delete a BRE category template
[**get_categories_using_get**](BRERuleEngineCategoriesApi.md#get_categories_using_get) | **GET** /bre/categories | List categories
[**get_category_using_get**](BRERuleEngineCategoriesApi.md#get_category_using_get) | **GET** /bre/categories/{name} | Get a single category
[**get_template_using_get**](BRERuleEngineCategoriesApi.md#get_template_using_get) | **GET** /bre/categories/templates/{id} | Get a single BRE category template
[**get_templates_using_get**](BRERuleEngineCategoriesApi.md#get_templates_using_get) | **GET** /bre/categories/templates | List and search BRE category templates
[**update_category_using_put**](BRERuleEngineCategoriesApi.md#update_category_using_put) | **PUT** /bre/categories/{name} | Update a category
[**update_template_using_put1**](BRERuleEngineCategoriesApi.md#update_template_using_put1) | **PUT** /bre/categories/templates/{id} | Update a BRE category template


# **create_template_using_post1**
> TemplateResource create_template_using_post1(opts)

Create a BRE category template

Templates define a type of BRE category and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

opts = { 
  template: SwaggerClient::TemplateResource.new # TemplateResource | The category template to create
}

begin
  #Create a BRE category template
  result = api_instance.create_template_using_post1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->create_template_using_post1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The category template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_template_using_delete**
> delete_template_using_delete(id, opts)

Delete a BRE category template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a BRE category template
  api_instance.delete_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->delete_template_using_delete: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_categories_using_get**
> PageBreCategoryResource get_categories_using_get(opts)

List categories

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List categories
  result = api_instance.get_categories_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->get_categories_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageBreCategoryResource**](PageBreCategoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_category_using_get**
> BreCategoryResource get_category_using_get(name)

Get a single category

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

name = "name_example" # String | The category name


begin
  #Get a single category
  result = api_instance.get_category_using_get(name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->get_category_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The category name | 

### Return type

[**BreCategoryResource**](BreCategoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_template_using_get**
> TemplateResource get_template_using_get(id)

Get a single BRE category template

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single BRE category template
  result = api_instance.get_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->get_template_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_templates_using_get**
> PageTemplateResource get_templates_using_get(opts)

List and search BRE category templates

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search BRE category templates
  result = api_instance.get_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->get_templates_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageTemplateResource**](PageTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_category_using_put**
> update_category_using_put(name, opts)

Update a category

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

name = "name_example" # String | The category name

opts = { 
  category: SwaggerClient::BreCategoryResource.new # BreCategoryResource | The updated BRE category information
}

begin
  #Update a category
  api_instance.update_category_using_put(name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->update_category_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The category name | 
 **category** | [**BreCategoryResource**](BreCategoryResource.md)| The updated BRE category information | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_template_using_put1**
> update_template_using_put1(id, opts)

Update a BRE category template

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BRERuleEngineCategoriesApi.new

id = "id_example" # String | The id of the template

opts = { 
  template: SwaggerClient::TemplateResource.new # TemplateResource | The updated category template definition
}

begin
  #Update a BRE category template
  api_instance.update_template_using_put1(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineCategoriesApi->update_template_using_put1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated category template definition | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



