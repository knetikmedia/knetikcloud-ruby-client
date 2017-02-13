# SwaggerClient::ContentPollsApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**answer_poll**](ContentPollsApi.md#answer_poll) | **POST** /media/polls/{id}/response | Add your vote to a poll
[**create_poll**](ContentPollsApi.md#create_poll) | **POST** /media/polls | Create a new poll
[**create_poll_template**](ContentPollsApi.md#create_poll_template) | **POST** /media/polls/templates | Create a poll template
[**delete_poll**](ContentPollsApi.md#delete_poll) | **DELETE** /media/polls/{id} | Delete an existing poll
[**delete_poll_template**](ContentPollsApi.md#delete_poll_template) | **DELETE** /media/polls/templates/{id} | Delete a poll template
[**get_poll**](ContentPollsApi.md#get_poll) | **GET** /media/polls/{id} | Get a single poll
[**get_poll_answer**](ContentPollsApi.md#get_poll_answer) | **GET** /media/polls/{id}/response | Get poll answer
[**get_poll_template**](ContentPollsApi.md#get_poll_template) | **GET** /media/polls/templates/{id} | Get a single poll template
[**get_poll_templates**](ContentPollsApi.md#get_poll_templates) | **GET** /media/polls/templates | List and search poll templates
[**get_polls**](ContentPollsApi.md#get_polls) | **GET** /media/polls | List and search polls
[**update_poll**](ContentPollsApi.md#update_poll) | **PUT** /media/polls/{id} | Update an existing poll
[**update_poll_template**](ContentPollsApi.md#update_poll_template) | **PUT** /media/polls/templates/{id} | Update a poll template


# **answer_poll**
> PollResponseResource answer_poll(id, opts)

Add your vote to a poll

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentPollsApi.new

id = "id_example" # String | The poll id

opts = { 
  answer_key: "answer_key_example" # String | The answer key
}

begin
  #Add your vote to a poll
  result = api_instance.answer_poll(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->answer_poll: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 
 **answer_key** | **String**| The answer key | [optional] 

### Return type

[**PollResponseResource**](PollResponseResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_poll**
> PollResource create_poll(opts)

Create a new poll

Polls are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentPollsApi.new

opts = { 
  poll_resource: SwaggerClient::PollResource.new # PollResource | The poll object
}

begin
  #Create a new poll
  result = api_instance.create_poll(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->create_poll: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poll_resource** | [**PollResource**](PollResource.md)| The poll object | [optional] 

### Return type

[**PollResource**](PollResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_poll_template**
> TemplateResource create_poll_template(opts)

Create a poll template

Poll templates define a type of poll and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentPollsApi.new

opts = { 
  poll_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The poll template resource object
}

begin
  #Create a poll template
  result = api_instance.create_poll_template(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->create_poll_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poll_template_resource** | [**TemplateResource**](TemplateResource.md)| The poll template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_poll**
> delete_poll(id)

Delete an existing poll

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentPollsApi.new

id = "id_example" # String | The poll id


begin
  #Delete an existing poll
  api_instance.delete_poll(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->delete_poll: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_poll_template**
> delete_poll_template(id, opts)

Delete a poll template

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

api_instance = SwaggerClient::ContentPollsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a poll template
  api_instance.delete_poll_template(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->delete_poll_template: #{e}"
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



# **get_poll**
> PollResource get_poll(id)

Get a single poll

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContentPollsApi.new

id = "id_example" # String | The poll id


begin
  #Get a single poll
  result = api_instance.get_poll(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->get_poll: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 

### Return type

[**PollResource**](PollResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_poll_answer**
> PollResponseResource get_poll_answer(id)

Get poll answer

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentPollsApi.new

id = "id_example" # String | The poll id


begin
  #Get poll answer
  result = api_instance.get_poll_answer(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->get_poll_answer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 

### Return type

[**PollResponseResource**](PollResponseResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_poll_template**
> TemplateResource get_poll_template(id)

Get a single poll template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentPollsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single poll template
  result = api_instance.get_poll_template(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->get_poll_template: #{e}"
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



# **get_poll_templates**
> PageResourceTemplateResource get_poll_templates(opts)

List and search poll templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentPollsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search poll templates
  result = api_instance.get_poll_templates(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->get_poll_templates: #{e}"
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



# **get_polls**
> PageResourcePollResource get_polls(opts)

List and search polls

Get a list of polls with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContentPollsApi.new

opts = { 
  filter_category: "filter_category_example", # String | Filter for polls from a specific category by id
  filter_tagset: "filter_tagset_example", # String | Filter for polls with specified tags (separated by comma)
  filter_text: "filter_text_example", # String | Filter for polls whose text contains a string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search polls
  result = api_instance.get_polls(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->get_polls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_category** | **String**| Filter for polls from a specific category by id | [optional] 
 **filter_tagset** | **String**| Filter for polls with specified tags (separated by comma) | [optional] 
 **filter_text** | **String**| Filter for polls whose text contains a string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourcePollResource**](PageResourcePollResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_poll**
> update_poll(id, opts)

Update an existing poll

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentPollsApi.new

id = "id_example" # String | The poll id

opts = { 
  poll_resource: SwaggerClient::PollResource.new # PollResource | The poll object
}

begin
  #Update an existing poll
  api_instance.update_poll(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->update_poll: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The poll id | 
 **poll_resource** | [**PollResource**](PollResource.md)| The poll object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_poll_template**
> update_poll_template(id, opts)

Update a poll template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ContentPollsApi.new

id = "id_example" # String | The id of the template

opts = { 
  poll_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The poll template resource object
}

begin
  #Update a poll template
  api_instance.update_poll_template(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentPollsApi->update_poll_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **poll_template_resource** | [**TemplateResource**](TemplateResource.md)| The poll template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



