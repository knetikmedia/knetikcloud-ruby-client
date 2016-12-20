# SwaggerClient::StoreSubscriptionsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_subscription_template_using_post**](StoreSubscriptionsApi.md#create_subscription_template_using_post) | **POST** /subscriptions/templates | Create a subscription template
[**create_subscription_using_post**](StoreSubscriptionsApi.md#create_subscription_using_post) | **POST** /subscriptions | Creates a subscription item and associated plans
[**delete_plan_using_delete**](StoreSubscriptionsApi.md#delete_plan_using_delete) | **DELETE** /subscriptions/{id}/plans/{plan_id} | Delete a subscription plan
[**delete_subscription_template_using_delete**](StoreSubscriptionsApi.md#delete_subscription_template_using_delete) | **DELETE** /subscriptions/templates/{id} | Delete a subscription template
[**get_subscription_template_using_get**](StoreSubscriptionsApi.md#get_subscription_template_using_get) | **GET** /subscriptions/templates/{id} | Get a single subscription template
[**get_subscription_templates_using_get**](StoreSubscriptionsApi.md#get_subscription_templates_using_get) | **GET** /subscriptions/templates | List and search subscription templates
[**get_subscription_using_get**](StoreSubscriptionsApi.md#get_subscription_using_get) | **GET** /subscriptions/{id} | Retrieve a single subscription item and associated plans
[**list_subscriptions_using_get**](StoreSubscriptionsApi.md#list_subscriptions_using_get) | **GET** /subscriptions | List available subscription items and associated plans
[**process_using_post**](StoreSubscriptionsApi.md#process_using_post) | **POST** /subscriptions/process | Processes subscriptions and charge dues
[**update_subscription_template_using_put**](StoreSubscriptionsApi.md#update_subscription_template_using_put) | **PUT** /subscriptions/templates/{id} | Update a subscription template
[**update_subscription_using_put**](StoreSubscriptionsApi.md#update_subscription_using_put) | **PUT** /subscriptions/{id} | Updates a subscription item and associated plans


# **create_subscription_template_using_post**
> SubscriptionTemplateResource create_subscription_template_using_post(opts)

Create a subscription template

Subscription Templates define a type of subscription and the properties they have.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSubscriptionsApi.new

opts = { 
  subscription_template_resource: SwaggerClient::SubscriptionTemplateResource.new # SubscriptionTemplateResource | The new subscription template
}

begin
  #Create a subscription template
  result = api_instance.create_subscription_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->create_subscription_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_template_resource** | [**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)| The new subscription template | [optional] 

### Return type

[**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_subscription_using_post**
> SubscriptionResource create_subscription_using_post(opts)

Creates a subscription item and associated plans

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSubscriptionsApi.new

opts = { 
  subscription_resource: SwaggerClient::SubscriptionResource.new # SubscriptionResource | The subscription to be created
}

begin
  #Creates a subscription item and associated plans
  result = api_instance.create_subscription_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->create_subscription_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_resource** | [**SubscriptionResource**](SubscriptionResource.md)| The subscription to be created | [optional] 

### Return type

[**SubscriptionResource**](SubscriptionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_plan_using_delete**
> delete_plan_using_delete(id, plan_id)

Delete a subscription plan

Must not be locked or a migration target

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSubscriptionsApi.new

id = 56 # Integer | The id of the subscription

plan_id = "plan_id_example" # String | The id of the plan


begin
  #Delete a subscription plan
  api_instance.delete_plan_using_delete(id, plan_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->delete_plan_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the subscription | 
 **plan_id** | **String**| The id of the plan | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_subscription_template_using_delete**
> delete_subscription_template_using_delete(id, opts)

Delete a subscription template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSubscriptionsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | force deleting the template if it's attached to other objects, cascade = detach
}

begin
  #Delete a subscription template
  api_instance.delete_subscription_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->delete_subscription_template_using_delete: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_subscription_template_using_get**
> SubscriptionTemplateResource get_subscription_template_using_get(id)

Get a single subscription template

Subscription Templates define a type of subscription and the properties they have.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSubscriptionsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single subscription template
  result = api_instance.get_subscription_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->get_subscription_template_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_subscription_templates_using_get**
> PageResourceSubscriptionTemplateResource get_subscription_templates_using_get(opts)

List and search subscription templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSubscriptionsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search subscription templates
  result = api_instance.get_subscription_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->get_subscription_templates_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceSubscriptionTemplateResource**](PageResourceSubscriptionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_subscription_using_get**
> SubscriptionResource get_subscription_using_get(id)

Retrieve a single subscription item and associated plans

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreSubscriptionsApi.new

id = 56 # Integer | The id of the subscription


begin
  #Retrieve a single subscription item and associated plans
  result = api_instance.get_subscription_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->get_subscription_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the subscription | 

### Return type

[**SubscriptionResource**](SubscriptionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_subscriptions_using_get**
> PageResourceSubscriptionResource list_subscriptions_using_get(opts)

List available subscription items and associated plans

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreSubscriptionsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List available subscription items and associated plans
  result = api_instance.list_subscriptions_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->list_subscriptions_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceSubscriptionResource**](PageResourceSubscriptionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **process_using_post**
> process_using_post

Processes subscriptions and charge dues

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSubscriptionsApi.new

begin
  #Processes subscriptions and charge dues
  api_instance.process_using_post
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->process_using_post: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_subscription_template_using_put**
> update_subscription_template_using_put(id, opts)

Update a subscription template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSubscriptionsApi.new

id = "id_example" # String | The id of the template

opts = { 
  subscription_template_resource: SwaggerClient::SubscriptionTemplateResource.new # SubscriptionTemplateResource | The subscription template resource object
}

begin
  #Update a subscription template
  api_instance.update_subscription_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->update_subscription_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **subscription_template_resource** | [**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)| The subscription template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_subscription_using_put**
> update_subscription_using_put(id, opts)

Updates a subscription item and associated plans

Will not remove plans left out

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreSubscriptionsApi.new

id = 56 # Integer | The id of the subscription

opts = { 
  subscription_resource: SwaggerClient::SubscriptionResource.new # SubscriptionResource | The subscription resource object
}

begin
  #Updates a subscription item and associated plans
  api_instance.update_subscription_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreSubscriptionsApi->update_subscription_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the subscription | 
 **subscription_resource** | [**SubscriptionResource**](SubscriptionResource.md)| The subscription resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



