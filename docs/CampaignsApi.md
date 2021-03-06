# KnetikCloudClient::CampaignsApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_challenge_to_campaign**](CampaignsApi.md#add_challenge_to_campaign) | **POST** /campaigns/{id}/challenges | Add a challenge to a campaign
[**create_campaign**](CampaignsApi.md#create_campaign) | **POST** /campaigns | Create a campaign
[**create_campaign_template**](CampaignsApi.md#create_campaign_template) | **POST** /campaigns/templates | Create a campaign template
[**delete_campaign**](CampaignsApi.md#delete_campaign) | **DELETE** /campaigns/{id} | Delete a campaign
[**delete_campaign_template**](CampaignsApi.md#delete_campaign_template) | **DELETE** /campaigns/templates/{id} | Delete a campaign template
[**get_campaign**](CampaignsApi.md#get_campaign) | **GET** /campaigns/{id} | Returns a single campaign
[**get_campaign_challenges**](CampaignsApi.md#get_campaign_challenges) | **GET** /campaigns/{id}/challenges | List the challenges associated with a campaign
[**get_campaign_template**](CampaignsApi.md#get_campaign_template) | **GET** /campaigns/templates/{id} | Get a single campaign template
[**get_campaign_templates**](CampaignsApi.md#get_campaign_templates) | **GET** /campaigns/templates | List and search campaign templates
[**get_campaigns**](CampaignsApi.md#get_campaigns) | **GET** /campaigns | List and search campaigns
[**remove_challenge_from_campaign**](CampaignsApi.md#remove_challenge_from_campaign) | **DELETE** /campaigns/{campaign_id}/challenges/{id} | Remove a challenge from a campaign
[**update_campaign**](CampaignsApi.md#update_campaign) | **PUT** /campaigns/{id} | Update a campaign
[**update_campaign_template**](CampaignsApi.md#update_campaign_template) | **PUT** /campaigns/templates/{id} | Update an campaign template


# **add_challenge_to_campaign**
> add_challenge_to_campaign(id, opts)

Add a challenge to a campaign

<b>Permissions Needed:</b> CAMPAIGNS_ADMIN

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

api_instance = KnetikCloudClient::CampaignsApi.new

id = 789 # Integer | The id of the campaign

opts = { 
  challenge_id: 789 # Integer | The id of the challenge
}

begin
  #Add a challenge to a campaign
  api_instance.add_challenge_to_campaign(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->add_challenge_to_campaign: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_campaign**
> CampaignResource create_campaign(opts)

Create a campaign

<b>Permissions Needed:</b> CAMPAIGNS_ADMIN

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

api_instance = KnetikCloudClient::CampaignsApi.new

opts = { 
  campaign_resource: KnetikCloudClient::CampaignResource.new # CampaignResource | The campaign resource object
}

begin
  #Create a campaign
  result = api_instance.create_campaign(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->create_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_resource** | [**CampaignResource**](CampaignResource.md)| The campaign resource object | [optional] 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_campaign_template**
> TemplateResource create_campaign_template(opts)

Create a campaign template

Campaign Templates define a type of campaign and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::CampaignsApi.new

opts = { 
  campaign_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The campaign template resource object
}

begin
  #Create a campaign template
  result = api_instance.create_campaign_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->create_campaign_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_template_resource** | [**TemplateResource**](TemplateResource.md)| The campaign template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_campaign**
> delete_campaign(id)

Delete a campaign

<b>Permissions Needed:</b> CAMPAIGNS_ADMIN

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

api_instance = KnetikCloudClient::CampaignsApi.new

id = 789 # Integer | The campaign id


begin
  #Delete a campaign
  api_instance.delete_campaign(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->delete_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The campaign id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_campaign_template**
> delete_campaign_template(id, opts)

Delete a campaign template

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

api_instance = KnetikCloudClient::CampaignsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a campaign template
  api_instance.delete_campaign_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->delete_campaign_template: #{e}"
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



# **get_campaign**
> CampaignResource get_campaign(id)

Returns a single campaign

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

api_instance = KnetikCloudClient::CampaignsApi.new

id = 789 # Integer | The campaign id


begin
  #Returns a single campaign
  result = api_instance.get_campaign(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The campaign id | 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_campaign_challenges**
> PageResourceChallengeResource get_campaign_challenges(id, opts)

List the challenges associated with a campaign

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

api_instance = KnetikCloudClient::CampaignsApi.new

id = 789 # Integer | The campaign id

opts = { 
  filter_start_date: "filter_start_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the challenge start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  filter_end_date: "filter_end_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the challenge end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List the challenges associated with a campaign
  result = api_instance.get_campaign_challenges(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaign_challenges: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The campaign id | 
 **filter_start_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the challenge start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_end_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the challenge end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceChallengeResource**](PageResourceChallengeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_campaign_template**
> TemplateResource get_campaign_template(id)

Get a single campaign template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or CAMPAIGNS_ADMIN

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

api_instance = KnetikCloudClient::CampaignsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single campaign template
  result = api_instance.get_campaign_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaign_template: #{e}"
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



# **get_campaign_templates**
> PageResourceTemplateResource get_campaign_templates(opts)

List and search campaign templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or CAMPAIGNS_ADMIN

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

api_instance = KnetikCloudClient::CampaignsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search campaign templates
  result = api_instance.get_campaign_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaign_templates: #{e}"
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



# **get_campaigns**
> PageResourceCampaignResource get_campaigns(opts)

List and search campaigns

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

api_instance = KnetikCloudClient::CampaignsApi.new

opts = { 
  filter_active: true, # BOOLEAN | Filter for campaigns that are active
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search campaigns
  result = api_instance.get_campaigns(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_active** | **BOOLEAN**| Filter for campaigns that are active | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceCampaignResource**](PageResourceCampaignResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_challenge_from_campaign**
> remove_challenge_from_campaign(campaign_id, id)

Remove a challenge from a campaign

<b>Permissions Needed:</b> CAMPAIGNS_ADMIN

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

api_instance = KnetikCloudClient::CampaignsApi.new

campaign_id = 789 # Integer | The campaign id

id = 789 # Integer | The challenge id


begin
  #Remove a challenge from a campaign
  api_instance.remove_challenge_from_campaign(campaign_id, id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->remove_challenge_from_campaign: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_campaign**
> CampaignResource update_campaign(id, opts)

Update a campaign

<b>Permissions Needed:</b> CAMPAIGNS_ADMIN

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

api_instance = KnetikCloudClient::CampaignsApi.new

id = 789 # Integer | The campaign id

opts = { 
  campaign_resource: KnetikCloudClient::CampaignResource.new # CampaignResource | The campaign resource object
}

begin
  #Update a campaign
  result = api_instance.update_campaign(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->update_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The campaign id | 
 **campaign_resource** | [**CampaignResource**](CampaignResource.md)| The campaign resource object | [optional] 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_campaign_template**
> TemplateResource update_campaign_template(id, opts)

Update an campaign template

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

api_instance = KnetikCloudClient::CampaignsApi.new

id = "id_example" # String | The id of the template

opts = { 
  campaign_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The campaign template resource object
}

begin
  #Update an campaign template
  result = api_instance.update_campaign_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsApi->update_campaign_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **campaign_template_resource** | [**TemplateResource**](TemplateResource.md)| The campaign template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



