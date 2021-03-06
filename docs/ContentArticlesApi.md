# KnetikCloudClient::ContentArticlesApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_article**](ContentArticlesApi.md#create_article) | **POST** /content/articles | Create a new article
[**create_article_template**](ContentArticlesApi.md#create_article_template) | **POST** /content/articles/templates | Create an article template
[**create_template**](ContentArticlesApi.md#create_template) | **POST** /templates/{type_hint} | Create a template
[**delete_article**](ContentArticlesApi.md#delete_article) | **DELETE** /content/articles/{id} | Delete an existing article
[**delete_article_template**](ContentArticlesApi.md#delete_article_template) | **DELETE** /content/articles/templates/{id} | Delete an article template
[**delete_template**](ContentArticlesApi.md#delete_template) | **DELETE** /templates/{type_hint}/{id} | Delete a template
[**get_article**](ContentArticlesApi.md#get_article) | **GET** /content/articles/{id} | Get a single article
[**get_article_template**](ContentArticlesApi.md#get_article_template) | **GET** /content/articles/templates/{id} | Get a single article template
[**get_article_templates**](ContentArticlesApi.md#get_article_templates) | **GET** /content/articles/templates | List and search article templates
[**get_articles**](ContentArticlesApi.md#get_articles) | **GET** /content/articles | List and search articles
[**get_template**](ContentArticlesApi.md#get_template) | **GET** /templates/{type_hint}/{id} | Get a template
[**get_templates**](ContentArticlesApi.md#get_templates) | **GET** /templates/{type_hint} | List and search templates
[**update_article**](ContentArticlesApi.md#update_article) | **PUT** /content/articles/{id} | Update an existing article
[**update_article_template**](ContentArticlesApi.md#update_article_template) | **PUT** /content/articles/templates/{id} | Update an article template
[**update_template**](ContentArticlesApi.md#update_template) | **PUT** /templates/{type_hint}/{id} | Update a template
[**validate**](ContentArticlesApi.md#validate) | **POST** /templates/{type_hint}/validate | Validate a templated resource


# **create_article**
> ArticleResource create_article(opts)

Create a new article

Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.<br><br><b>Permissions:</b> ARTICLES_ADMIN

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_article_template**
> TemplateResource create_article_template(opts)

Create an article template

Article Templates define a type of article and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_template**
> TemplateResource create_template(type_hint, opts)

Create a template

<b>Permissions Needed:</b> TEMPLATES_ADMIN

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

api_instance = KnetikCloudClient::ContentArticlesApi.new

type_hint = "type_hint_example" # String | The type for the resource this template applies to

opts = { 
  template: KnetikCloudClient::TemplateResource.new # TemplateResource | The template
}

begin
  #Create a template
  result = api_instance.create_template(type_hint, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->create_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_hint** | **String**| The type for the resource this template applies to | 
 **template** | [**TemplateResource**](TemplateResource.md)| The template | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_article**
> delete_article(id)

Delete an existing article

<b>Permissions Needed:</b> ARTICLES_ADMIN

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_article_template**
> delete_article_template(id, opts)

Delete an article template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_template**
> delete_template(type_hint, id, opts)

Delete a template

<b>Permissions Needed:</b> TEMPLATES_ADMIN

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

api_instance = KnetikCloudClient::ContentArticlesApi.new

type_hint = "type_hint_example" # String | The type for the resource this template applies to

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | How to cascade the delete
}

begin
  #Delete a template
  api_instance.delete_template(type_hint, id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->delete_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_hint** | **String**| The type for the resource this template applies to | 
 **id** | **String**| The id of the template | 
 **cascade** | **String**| How to cascade the delete | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_article**
> ArticleResource get_article(id)

Get a single article

<b>Permissions Needed:</b> ANY

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_article_template**
> TemplateResource get_article_template(id)

Get a single article template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or ARTICLES_ADMIN

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_article_templates**
> PageResourceTemplateResource get_article_templates(opts)

List and search article templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or ARTICLES_ADMIN

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_articles**
> PageResourceArticleResource get_articles(opts)

List and search articles

Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single article' to retrieve the full resource with assets for a given item as needed. <br><br><b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::ContentArticlesApi.new

opts = { 
  filter_active_only: true, # BOOLEAN | Filter for articles that are active (true) or inactive (false)
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
 **filter_active_only** | **BOOLEAN**| Filter for articles that are active (true) or inactive (false) | [optional] 
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_template**
> TemplateResource get_template(type_hint, id)

Get a template

<b>Permissions Needed:</b> TEMPLATES_ADMIN

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

api_instance = KnetikCloudClient::ContentArticlesApi.new

type_hint = "type_hint_example" # String | The type for the resource this template applies to

id = "id_example" # String | The id of the template


begin
  #Get a template
  result = api_instance.get_template(type_hint, id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->get_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_hint** | **String**| The type for the resource this template applies to | 
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_templates**
> PageResourceTemplateResource get_templates(type_hint, opts)

List and search templates

<b>Permissions Needed:</b> TEMPLATES_ADMIN

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

api_instance = KnetikCloudClient::ContentArticlesApi.new

type_hint = "type_hint_example" # String | The type for the resource this template applies to

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search templates
  result = api_instance.get_templates(type_hint, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->get_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_hint** | **String**| The type for the resource this template applies to | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTemplateResource**](PageResourceTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_article**
> ArticleResource update_article(id, opts)

Update an existing article

<b>Permissions Needed:</b> ARTICLES_ADMIN

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_article_template**
> TemplateResource update_article_template(id, opts)

Update an article template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_template**
> TemplateResource update_template(type_hint, id, opts)

Update a template

<b>Permissions Needed:</b> TEMPLATES_ADMIN

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

api_instance = KnetikCloudClient::ContentArticlesApi.new

type_hint = "type_hint_example" # String | The type for the resource this template applies to

id = "id_example" # String | The id of the template

opts = { 
  template: KnetikCloudClient::TemplateResource.new # TemplateResource | The template
}

begin
  #Update a template
  result = api_instance.update_template(type_hint, id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->update_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_hint** | **String**| The type for the resource this template applies to | 
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The template | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **validate**
> validate(type_hint, opts)

Validate a templated resource

Error code thrown if invalid.<br><br><b>Permissions Needed:</b> TEMPLATES_ADMIN

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

api_instance = KnetikCloudClient::ContentArticlesApi.new

type_hint = "type_hint_example" # String | The type for the resource this template applies to

opts = { 
  resource: KnetikCloudClient::BasicTemplatedResource.new # BasicTemplatedResource | The resource to validate
}

begin
  #Validate a templated resource
  api_instance.validate(type_hint, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ContentArticlesApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_hint** | **String**| The type for the resource this template applies to | 
 **resource** | [**BasicTemplatedResource**](BasicTemplatedResource.md)| The resource to validate | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



