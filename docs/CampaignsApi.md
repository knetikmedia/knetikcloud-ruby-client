# SwaggerClient::CampaignsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_challenges_using_post**](CampaignsApi.md#add_challenges_using_post) | **POST** /campaigns/{id}/challenges | Add a challenge to a campaign
[**create_campaign_template_using_post**](CampaignsApi.md#create_campaign_template_using_post) | **POST** /campaigns/templates | Create a campaign template
[**create_campaign_using_post**](CampaignsApi.md#create_campaign_using_post) | **POST** /campaigns | Create a campaign
[**delete_campaign_template_using_delete**](CampaignsApi.md#delete_campaign_template_using_delete) | **DELETE** /campaigns/templates/{id} | Delete a campaign template
[**delete_campaign_using_delete**](CampaignsApi.md#delete_campaign_using_delete) | **DELETE** /campaigns/{id} | Delete a campaign
[**get_campaign_template_using_get**](CampaignsApi.md#get_campaign_template_using_get) | **GET** /campaigns/templates/{id} | Get a single campaign template
[**get_campaign_templates_using_get**](CampaignsApi.md#get_campaign_templates_using_get) | **GET** /campaigns/templates | List and search campaign templates
[**get_campaign_using_get**](CampaignsApi.md#get_campaign_using_get) | **GET** /campaigns/{id} | Returns a single campaign
[**get_campaigns_using_get**](CampaignsApi.md#get_campaigns_using_get) | **GET** /campaigns | List and search campaigns
[**get_challenges_using_get**](CampaignsApi.md#get_challenges_using_get) | **GET** /campaigns/{id}/challenges | List the challenges associated with a campaign
[**remove_challenge_using_delete**](CampaignsApi.md#remove_challenge_using_delete) | **DELETE** /campaigns/{campaign_id}/challenges/{id} | Remove a challenge from a campaign
[**update_campaign_template_using_put**](CampaignsApi.md#update_campaign_template_using_put) | **PUT** /campaigns/templates/{id} | Update an campaign template
[**update_campaign_using_put**](CampaignsApi.md#update_campaign_using_put) | **PUT** /campaigns/{id} | Update a campaign


# **add_challenges_using_post**
> add_challenges_using_post(id, opts)

Add a challenge to a campaign

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsApi.new

id = 789 # Integer | The id of the campaign

opts = { 
  challenge_id: 789 # Integer | The id of the challenge
}

begin
  #Add a challenge to a campaign
  api_instance.add_challenges_using_post(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->add_challenges_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the campaign | 
 **challenge_id** | **Integer**| The id of the challenge | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create_campaign_template_using_post**
> TemplateResource create_campaign_template_using_post(opts)

Create a campaign template

Campaign Templates define a type of campaign and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsApi.new

opts = { 
  campaign_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The campaign template resource object
}

begin
  #Create a campaign template
  result = api_instance.create_campaign_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->create_campaign_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_template_resource** | [**TemplateResource**](TemplateResource.md)| The campaign template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create_campaign_using_post**
> CampaignResource create_campaign_using_post(opts)

Create a campaign

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsApi.new

opts = { 
  campaign_resource: SwaggerClient::CampaignResource.new # CampaignResource | The campaign resource object
}

begin
  #Create a campaign
  result = api_instance.create_campaign_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->create_campaign_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_resource** | [**CampaignResource**](CampaignResource.md)| The campaign resource object | [optional] 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_campaign_template_using_delete**
> delete_campaign_template_using_delete(id, opts)

Delete a campaign template

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

api_instance = SwaggerClient::CampaignsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a campaign template
  api_instance.delete_campaign_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->delete_campaign_template_using_delete: #{e}"
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



# **delete_campaign_using_delete**
> delete_campaign_using_delete(id)

Delete a campaign

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsApi.new

id = 789 # Integer | The campaign id


begin
  #Delete a campaign
  api_instance.delete_campaign_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->delete_campaign_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The campaign id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_campaign_template_using_get**
> TemplateResource get_campaign_template_using_get(id)

Get a single campaign template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single campaign template
  result = api_instance.get_campaign_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaign_template_using_get: #{e}"
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



# **get_campaign_templates_using_get**
> PageTemplateResource get_campaign_templates_using_get(opts)

List and search campaign templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search campaign templates
  result = api_instance.get_campaign_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaign_templates_using_get: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_campaign_using_get**
> CampaignResource get_campaign_using_get(id)

Returns a single campaign

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

id = 789 # Integer | The campaign id


begin
  #Returns a single campaign
  result = api_instance.get_campaign_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaign_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The campaign id | 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_campaigns_using_get**
> PageCampaignResource get_campaigns_using_get(opts)

List and search campaigns

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

opts = { 
  filter_active: true, # BOOLEAN | Filter for campaigns that are active
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search campaigns
  result = api_instance.get_campaigns_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaigns_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_active** | **BOOLEAN**| Filter for campaigns that are active | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageCampaignResource**](PageCampaignResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_challenges_using_get**
> PageChallengeResource get_challenges_using_get(id)

List the challenges associated with a campaign

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

id = 789 # Integer | The campaign id


begin
  #List the challenges associated with a campaign
  result = api_instance.get_challenges_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_challenges_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The campaign id | 

### Return type

[**PageChallengeResource**](PageChallengeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **remove_challenge_using_delete**
> remove_challenge_using_delete(campaign_id, id)

Remove a challenge from a campaign

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsApi.new

campaign_id = 789 # Integer | The campaign id

id = 789 # Integer | The challenge id


begin
  #Remove a challenge from a campaign
  api_instance.remove_challenge_using_delete(campaign_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->remove_challenge_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| The campaign id | 
 **id** | **Integer**| The challenge id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_campaign_template_using_put**
> update_campaign_template_using_put(id, opts)

Update an campaign template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsApi.new

id = "id_example" # String | The id of the template

opts = { 
  campaign_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The campaign template resource object
}

begin
  #Update an campaign template
  api_instance.update_campaign_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->update_campaign_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **campaign_template_resource** | [**TemplateResource**](TemplateResource.md)| The campaign template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_campaign_using_put**
> update_campaign_using_put(id, opts)

Update a campaign

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsApi.new

id = 789 # Integer | The campaign id

opts = { 
  campaign_resource: SwaggerClient::CampaignResource.new # CampaignResource | The campaign resource object
}

begin
  #Update a campaign
  api_instance.update_campaign_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->update_campaign_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The campaign id | 
 **campaign_resource** | [**CampaignResource**](CampaignResource.md)| The campaign resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


