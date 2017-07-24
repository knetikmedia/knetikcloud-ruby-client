# KnetikCloudClient::ContentArticlesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_article**](ContentArticlesApi.md#create_article) | **POST** /content/articles | Create a new article
[**create_article_template**](ContentArticlesApi.md#create_article_template) | **POST** /content/articles/templates | Create an article template
[**delete_article**](ContentArticlesApi.md#delete_article) | **DELETE** /content/articles/{id} | Delete an existing article
[**delete_article_template**](ContentArticlesApi.md#delete_article_template) | **DELETE** /content/articles/templates/{id} | Delete an article template
[**get_article**](ContentArticlesApi.md#get_article) | **GET** /content/articles/{id} | Get a single article
[**get_article_template**](ContentArticlesApi.md#get_article_template) | **GET** /content/articles/templates/{id} | Get a single article template
[**get_article_templates**](ContentArticlesApi.md#get_article_templates) | **GET** /content/articles/templates | List and search article templates
[**get_articles**](ContentArticlesApi.md#get_articles) | **GET** /content/articles | List and search articles
[**update_article**](ContentArticlesApi.md#update_article) | **PUT** /content/articles/{id} | Update an existing article
[**update_article_template**](ContentArticlesApi.md#update_article_template) | **PUT** /content/articles/templates/{id} | Update an article template


# **create_article**
> ArticleResource create_article(opts)

Create a new article

Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ContentArticlesApi.new

opts = { 
  article_resource: KnetikCloudClient::ArticleResource.new # ArticleResource | The new article
}

begin
  #Create a new article
  result = api_instance.create_article(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->create_article: #{e}"
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
 - **Accept**: application/json



# **create_article_template**
> TemplateResource create_article_template(opts)

Create an article template

Article Templates define a type of article and the properties they have

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ContentArticlesApi.new

opts = { 
  article_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The article template resource object
}

begin
  #Create an article template
  result = api_instance.create_article_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->create_article_template: #{e}"
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
 - **Accept**: application/json



# **delete_article**
> delete_article(id)

Delete an existing article

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ContentArticlesApi.new

id = "id_example" # String | The article id


begin
  #Delete an existing article
  api_instance.delete_article(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->delete_article: #{e}"
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
 - **Accept**: application/json



# **delete_article_template**
> delete_article_template(id, opts)

Delete an article template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ContentArticlesApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete an article template
  api_instance.delete_article_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->delete_article_template: #{e}"
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



# **get_article**
> ArticleResource get_article(id)

Get a single article

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::ContentArticlesApi.new

id = "id_example" # String | The article id


begin
  #Get a single article
  result = api_instance.get_article(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->get_article: #{e}"
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
 - **Accept**: application/json



# **get_article_template**
> TemplateResource get_article_template(id)

Get a single article template

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ContentArticlesApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single article template
  result = api_instance.get_article_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->get_article_template: #{e}"
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



# **get_article_templates**
> PageResourceTemplateResource get_article_templates(opts)

List and search article templates

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ContentArticlesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search article templates
  result = api_instance.get_article_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->get_article_templates: #{e}"
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



# **get_articles**
> PageResourceArticleResource get_articles(opts)

List and search articles

Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single article' to retrieve the full resource with assets for a given item as needed.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::ContentArticlesApi.new

opts = { 
  filter_category: "filter_category_example", # String | Filter for articles from a specific category by id
  filter_tagset: "filter_tagset_example", # String | Filter for articles with at least one of a specified set of tags (separated by comma)
  filter_tag_intersection: "filter_tag_intersection_example", # String | Filter for articles with all of a specified set of tags (separated by comma)
  filter_tag_exclusion: "filter_tag_exclusion_example", # String | Filter for articles with none of a specified set of tags (separated by comma)
  filter_title: "filter_title_example", # String | Filter for articles whose title contains a string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search articles
  result = api_instance.get_articles(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->get_articles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_category** | **String**| Filter for articles from a specific category by id | [optional] 
 **filter_tagset** | **String**| Filter for articles with at least one of a specified set of tags (separated by comma) | [optional] 
 **filter_tag_intersection** | **String**| Filter for articles with all of a specified set of tags (separated by comma) | [optional] 
 **filter_tag_exclusion** | **String**| Filter for articles with none of a specified set of tags (separated by comma) | [optional] 
 **filter_title** | **String**| Filter for articles whose title contains a string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceArticleResource**](PageResourceArticleResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_article**
> ArticleResource update_article(id, opts)

Update an existing article

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ContentArticlesApi.new

id = "id_example" # String | The article id

opts = { 
  article_resource: KnetikCloudClient::ArticleResource.new # ArticleResource | The article object
}

begin
  #Update an existing article
  result = api_instance.update_article(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->update_article: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The article id | 
 **article_resource** | [**ArticleResource**](ArticleResource.md)| The article object | [optional] 

### Return type

[**ArticleResource**](ArticleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_article_template**
> TemplateResource update_article_template(id, opts)

Update an article template

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ContentArticlesApi.new

id = "id_example" # String | The id of the template

opts = { 
  article_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The article template resource object
}

begin
  #Update an article template
  result = api_instance.update_article_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->update_article_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **article_template_resource** | [**TemplateResource**](TemplateResource.md)| The article template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



