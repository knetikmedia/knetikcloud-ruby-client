# SwaggerClient::CampaignsChallengesApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_challenge**](CampaignsChallengesApi.md#create_challenge) | **POST** /challenges | Create a challenge
[**create_challenge_activity**](CampaignsChallengesApi.md#create_challenge_activity) | **POST** /challenges/{challenge_id}/activities | Create a challenge activity
[**create_challenge_template**](CampaignsChallengesApi.md#create_challenge_template) | **POST** /challenges/templates | Create a challenge template
[**delete_challenge**](CampaignsChallengesApi.md#delete_challenge) | **DELETE** /challenges/{id} | Delete a challenge
[**delete_challenge_activity**](CampaignsChallengesApi.md#delete_challenge_activity) | **DELETE** /challenges/{challenge_id}/activities/{activity_id} | Delete a challenge activity
[**delete_challenge_event**](CampaignsChallengesApi.md#delete_challenge_event) | **DELETE** /challenges/events/{id} | Delete a challenge event
[**delete_challenge_template**](CampaignsChallengesApi.md#delete_challenge_template) | **DELETE** /challenges/templates/{id} | Delete a challenge template
[**get_challenge**](CampaignsChallengesApi.md#get_challenge) | **GET** /challenges/{id} | Retrieve a challenge
[**get_challenge_activities**](CampaignsChallengesApi.md#get_challenge_activities) | **GET** /challenges/{challenge_id}/activities | List and search challenge activities
[**get_challenge_activity**](CampaignsChallengesApi.md#get_challenge_activity) | **GET** /challenges/{challenge_id}/activities/{activity_id} | Get a single challenge activity
[**get_challenge_event**](CampaignsChallengesApi.md#get_challenge_event) | **GET** /challenges/events/{id} | Retrieve a single challenge event details
[**get_challenge_events**](CampaignsChallengesApi.md#get_challenge_events) | **GET** /challenges/events | Retrieve a list of challenge events
[**get_challenge_template**](CampaignsChallengesApi.md#get_challenge_template) | **GET** /challenges/templates/{id} | Get a single challenge template
[**get_challenge_templates**](CampaignsChallengesApi.md#get_challenge_templates) | **GET** /challenges/templates | List and search challenge templates
[**get_challenges**](CampaignsChallengesApi.md#get_challenges) | **GET** /challenges | Retrieve a list of challenges
[**update_challenge**](CampaignsChallengesApi.md#update_challenge) | **PUT** /challenges/{id} | Update a challenge
[**update_challenge_activity**](CampaignsChallengesApi.md#update_challenge_activity) | **PUT** /challenges/{challenge_id}/activities/{activity_id} | Update a challenge activity
[**update_challenge_template**](CampaignsChallengesApi.md#update_challenge_template) | **PUT** /challenges/templates/{id} | Update a challenge template


# **create_challenge**
> ChallengeResource create_challenge(opts)

Create a challenge

Challenges do not run on their own.  They must be added to a campaign before events will spawn.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

opts = { 
  challenge_resource: SwaggerClient::ChallengeResource.new # ChallengeResource | The challenge resource object
}

begin
  #Create a challenge
  result = api_instance.create_challenge(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->create_challenge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge_resource** | [**ChallengeResource**](ChallengeResource.md)| The challenge resource object | [optional] 

### Return type

[**ChallengeResource**](ChallengeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_challenge_activity**
> ChallengeActivityResource create_challenge_activity(challenge_id, opts)

Create a challenge activity

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

challenge_id = 789 # Integer | The challenge id

opts = { 
  challenge_activity_resource: SwaggerClient::ChallengeActivityResource.new, # ChallengeActivityResource | The challenge activity resource object
  validate_settings: false # BOOLEAN | Whether to validate the settings being sent against the available settings on the base activity.
}

begin
  #Create a challenge activity
  result = api_instance.create_challenge_activity(challenge_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->create_challenge_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge_id** | **Integer**| The challenge id | 
 **challenge_activity_resource** | [**ChallengeActivityResource**](ChallengeActivityResource.md)| The challenge activity resource object | [optional] 
 **validate_settings** | **BOOLEAN**| Whether to validate the settings being sent against the available settings on the base activity. | [optional] [default to false]

### Return type

[**ChallengeActivityResource**](ChallengeActivityResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_challenge_template**
> TemplateResource create_challenge_template(opts)

Create a challenge template

Challenge Templates define a type of challenge and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

opts = { 
  challenge_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The challenge template resource object
}

begin
  #Create a challenge template
  result = api_instance.create_challenge_template(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->create_challenge_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge_template_resource** | [**TemplateResource**](TemplateResource.md)| The challenge template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_challenge**
> delete_challenge(id)

Delete a challenge

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

id = 789 # Integer | The challenge id


begin
  #Delete a challenge
  api_instance.delete_challenge(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->delete_challenge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The challenge id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_challenge_activity**
> delete_challenge_activity(activity_id, challenge_id)

Delete a challenge activity

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

activity_id = 789 # Integer | The activity id

challenge_id = 789 # Integer | The challenge id


begin
  #Delete a challenge activity
  api_instance.delete_challenge_activity(activity_id, challenge_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->delete_challenge_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_id** | **Integer**| The activity id | 
 **challenge_id** | **Integer**| The challenge id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_challenge_event**
> delete_challenge_event(id)

Delete a challenge event

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

id = 789 # Integer | The challenge event id


begin
  #Delete a challenge event
  api_instance.delete_challenge_event(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->delete_challenge_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The challenge event id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_challenge_template**
> delete_challenge_template(id, opts)

Delete a challenge template

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

api_instance = SwaggerClient::CampaignsChallengesApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a challenge template
  api_instance.delete_challenge_template(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->delete_challenge_template: #{e}"
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



# **get_challenge**
> ChallengeResource get_challenge(id)

Retrieve a challenge

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsChallengesApi.new

id = 789 # Integer | The challenge id


begin
  #Retrieve a challenge
  result = api_instance.get_challenge(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->get_challenge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The challenge id | 

### Return type

[**ChallengeResource**](ChallengeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_challenge_activities**
> PageResourceBareChallengeActivityResource get_challenge_activities(challenge_id, opts)

List and search challenge activities

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsChallengesApi.new

challenge_id = 789 # Integer | The challenge id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search challenge activities
  result = api_instance.get_challenge_activities(challenge_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->get_challenge_activities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge_id** | **Integer**| The challenge id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceBareChallengeActivityResource**](PageResourceBareChallengeActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_challenge_activity**
> ChallengeActivityResource get_challenge_activity(activity_id)

Get a single challenge activity

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsChallengesApi.new

activity_id = 789 # Integer | The activity id


begin
  #Get a single challenge activity
  result = api_instance.get_challenge_activity(activity_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->get_challenge_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_id** | **Integer**| The activity id | 

### Return type

[**ChallengeActivityResource**](ChallengeActivityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_challenge_event**
> ChallengeEventResource get_challenge_event(id)

Retrieve a single challenge event details

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsChallengesApi.new

id = 789 # Integer | The challenge event id


begin
  #Retrieve a single challenge event details
  result = api_instance.get_challenge_event(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->get_challenge_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The challenge event id | 

### Return type

[**ChallengeEventResource**](ChallengeEventResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_challenge_events**
> PageResourceChallengeEventResource get_challenge_events(opts)

Retrieve a list of challenge events

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsChallengesApi.new

opts = { 
  filter_start_date: "filter_start_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the event start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  filter_end_date: "filter_end_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the event end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  filter_campaigns: true, # BOOLEAN | check only for events from currently running campaigns
  filter_challenge: 789, # Integer | check only for events from the challenge specified by id
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieve a list of challenge events
  result = api_instance.get_challenge_events(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->get_challenge_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_start_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the event start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_end_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the event end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_campaigns** | **BOOLEAN**| check only for events from currently running campaigns | [optional] 
 **filter_challenge** | **Integer**| check only for events from the challenge specified by id | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceChallengeEventResource**](PageResourceChallengeEventResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_challenge_template**
> TemplateResource get_challenge_template(id)

Get a single challenge template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single challenge template
  result = api_instance.get_challenge_template(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->get_challenge_template: #{e}"
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



# **get_challenge_templates**
> PageResourceTemplateResource get_challenge_templates(opts)

List and search challenge templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search challenge templates
  result = api_instance.get_challenge_templates(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->get_challenge_templates: #{e}"
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



# **get_challenges**
> PageResourceChallengeResource get_challenges(opts)

Retrieve a list of challenges

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsChallengesApi.new

opts = { 
  filter_template: true, # BOOLEAN | Filter for challenges that are not tied to campaigns (templates)
  filter_active_campaign: true # BOOLEAN | Filter for challenges that are tied to active campaigns
}

begin
  #Retrieve a list of challenges
  result = api_instance.get_challenges(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->get_challenges: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_template** | **BOOLEAN**| Filter for challenges that are not tied to campaigns (templates) | [optional] 
 **filter_active_campaign** | **BOOLEAN**| Filter for challenges that are tied to active campaigns | [optional] 

### Return type

[**PageResourceChallengeResource**](PageResourceChallengeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_challenge**
> ChallengeResource update_challenge(id, opts)

Update a challenge

If the challenge is a copy, changes will propagate to all the related challenges

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

id = 789 # Integer | The challenge id

opts = { 
  challenge_resource: SwaggerClient::ChallengeResource.new # ChallengeResource | The challenge resource object
}

begin
  #Update a challenge
  result = api_instance.update_challenge(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->update_challenge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The challenge id | 
 **challenge_resource** | [**ChallengeResource**](ChallengeResource.md)| The challenge resource object | [optional] 

### Return type

[**ChallengeResource**](ChallengeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_challenge_activity**
> update_challenge_activity(activity_id, challenge_id, opts)

Update a challenge activity

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

activity_id = 789 # Integer | The activity id

challenge_id = 789 # Integer | The challenge id

opts = { 
  challenge_activity_resource: SwaggerClient::ChallengeActivityResource.new # ChallengeActivityResource | The challenge activity resource object
}

begin
  #Update a challenge activity
  api_instance.update_challenge_activity(activity_id, challenge_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->update_challenge_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_id** | **Integer**| The activity id | 
 **challenge_id** | **Integer**| The challenge id | 
 **challenge_activity_resource** | [**ChallengeActivityResource**](ChallengeActivityResource.md)| The challenge activity resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_challenge_template**
> update_challenge_template(id, opts)

Update a challenge template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CampaignsChallengesApi.new

id = "id_example" # String | The id of the template

opts = { 
  challenge_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The challenge template resource object
}

begin
  #Update a challenge template
  api_instance.update_challenge_template(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsChallengesApi->update_challenge_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **challenge_template_resource** | [**TemplateResource**](TemplateResource.md)| The challenge template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



