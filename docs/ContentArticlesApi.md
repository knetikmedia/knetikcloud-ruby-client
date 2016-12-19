# SwaggerClient::ContentArticlesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_article_template_using_post**](ContentArticlesApi.md#create_article_template_using_post) | **POST** /content/articles/templates | Create an article template
[**create_article_using_post**](ContentArticlesApi.md#create_article_using_post) | **POST** /content/articles | Create a new article
[**delete_article_template_using_delete**](ContentArticlesApi.md#delete_article_template_using_delete) | **DELETE** /content/articles/templates/{id} | Delete an article template
[**delete_article_using_delete**](ContentArticlesApi.md#delete_article_using_delete) | **DELETE** /content/articles/{id} | Delete an existing article
[**get_article_template_using_get**](ContentArticlesApi.md#get_article_template_using_get) | **GET** /content/articles/templates/{id} | Get a single article template
[**get_article_templates_using_get**](ContentArticlesApi.md#get_article_templates_using_get) | **GET** /content/articles/templates | List and search article templates
[**get_article_using_get**](ContentArticlesApi.md#get_article_using_get) | **GET** /content/articles/{id} | Get a single article
[**get_articles_using_get**](ContentArticlesApi.md#get_articles_using_get) | **GET** /content/articles | List and search articles
[**update_article_template_using_put**](ContentArticlesApi.md#update_article_template_using_put) | **PUT** /content/articles/templates/{id} | Update an article template
[**update_article_using_put**](ContentArticlesApi.md#update_article_using_put) | **PUT** /content/articles/{id} | Update an existing article


# **create_article_template_using_post**
> TemplateResource create_article_template_using_post(opts)

Create an article template

Article Templates define a type of article and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentArticlesApi.new

opts = { 
  article_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The article template resource object
}

begin
  #Create an article template
  result = api_instance.create_article_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->create_article_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_template_resource** | [**TemplateResource**](TemplateResource.md)| The article template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create_article_using_post**
> ArticleResource create_article_using_post(opts)

Create a new article

Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentArticlesApi.new

opts = { 
  article_resource: SwaggerClient::ArticleResource.new # ArticleResource | The new article
}

begin
  #Create a new article
  result = api_instance.create_article_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->create_article_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_resource** | [**ArticleResource**](ArticleResource.md)| The new article | [optional] 

### Return type

[**ArticleResource**](ArticleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_article_template_using_delete**
> delete_article_template_using_delete(id, opts)

Delete an article template

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

api_instance = SwaggerClient::ContentArticlesApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete an article template
  api_instance.delete_article_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->delete_article_template_using_delete: #{e}"
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
 - **Accept**: */*



# **delete_article_using_delete**
> delete_article_using_delete(id)

Delete an existing article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentArticlesApi.new

id = "id_example" # String | The article id


begin
  #Delete an existing article
  api_instance.delete_article_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->delete_article_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The article id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_article_template_using_get**
> TemplateResource get_article_template_using_get(id)

Get a single article template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentArticlesApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single article template
  result = api_instance.get_article_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->get_article_template_using_get: #{e}"
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
 - **Accept**: */*



# **get_article_templates_using_get**
> PageTemplateResource get_article_templates_using_get(opts)

List and search article templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentArticlesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search article templates
  result = api_instance.get_article_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->get_article_templates_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageTemplateResource**](PageTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_article_using_get**
> ArticleResource get_article_using_get(id)

Get a single article

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContentArticlesApi.new

id = "id_example" # String | The article id


begin
  #Get a single article
  result = api_instance.get_article_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->get_article_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The article id | 

### Return type

[**ArticleResource**](ArticleResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_articles_using_get**
> PageArticleResource get_articles_using_get(opts)

List and search articles

Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single article' to retrieve the full resource with assets for a given item as needed.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContentArticlesApi.new

opts = { 
  filter_category: "filter_category_example", # String | Filter for articles from a specific category by id
  filter_tagset: "filter_tagset_example", # String | Filter for articles with specified tags (separated by comma)
  filter_title: "filter_title_example", # String | Filter for articles whose title contains a string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search articles
  result = api_instance.get_articles_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->get_articles_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_category** | **String**| Filter for articles from a specific category by id | [optional] 
 **filter_tagset** | **String**| Filter for articles with specified tags (separated by comma) | [optional] 
 **filter_title** | **String**| Filter for articles whose title contains a string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageArticleResource**](PageArticleResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_article_template_using_put**
> update_article_template_using_put(id, opts)

Update an article template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentArticlesApi.new

id = "id_example" # String | The id of the template

opts = { 
  article_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The article template resource object
}

begin
  #Update an article template
  api_instance.update_article_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->update_article_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **article_template_resource** | [**TemplateResource**](TemplateResource.md)| The article template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_article_using_put**
> update_article_using_put(id, opts)

Update an existing article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentArticlesApi.new

id = "id_example" # String | The article id

opts = { 
  article_resource: SwaggerClient::ArticleResource.new # ArticleResource | The article object
}

begin
  #Update an existing article
  api_instance.update_article_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->update_article_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The article id | 
 **article_resource** | [**ArticleResource**](ArticleResource.md)| The article object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



