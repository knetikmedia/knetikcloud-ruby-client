# SwaggerClient::GamificationAchievementsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_achievement_using_post**](GamificationAchievementsApi.md#create_achievement_using_post) | **POST** /achievements | Create a new achievement definition
[**create_template_using_post**](GamificationAchievementsApi.md#create_template_using_post) | **POST** /achievements/templates | Create an achievement template
[**delete_achievement_template_using_delete**](GamificationAchievementsApi.md#delete_achievement_template_using_delete) | **DELETE** /achievements/templates/{id} | Delete an achievement template
[**delete_achievement_using_delete**](GamificationAchievementsApi.md#delete_achievement_using_delete) | **DELETE** /achievements/{name} | Delete an achievement definition
[**find_all_by_group_name_using_get**](GamificationAchievementsApi.md#find_all_by_group_name_using_get) | **GET** /achievements/derived/{name} | Get a list of derived achievements
[**get_achievement_template_using_get**](GamificationAchievementsApi.md#get_achievement_template_using_get) | **GET** /achievements/templates/{id} | Get a single achievement template
[**get_achievement_templates_using_get**](GamificationAchievementsApi.md#get_achievement_templates_using_get) | **GET** /achievements/templates | List and search achievement templates
[**get_achievement_using_get**](GamificationAchievementsApi.md#get_achievement_using_get) | **GET** /achievements/{name} | Get a single achievement definition
[**get_achievements_using_get**](GamificationAchievementsApi.md#get_achievements_using_get) | **GET** /achievements | Get all achievement definitions in the system
[**get_all_user_progress_for_achievement_using_get**](GamificationAchievementsApi.md#get_all_user_progress_for_achievement_using_get) | **GET** /users/achievements/{achievement_name} | Retrieve progress on a given achievement for all users
[**get_all_user_progress_using_get**](GamificationAchievementsApi.md#get_all_user_progress_using_get) | **GET** /users/achievements | Retrieve progress on achievements for all users
[**get_available_triggers_using_get**](GamificationAchievementsApi.md#get_available_triggers_using_get) | **GET** /achievements/triggers | Get the list of triggers that can be used to trigger an achievement progress update
[**get_user_progress_for_achievement_using_get**](GamificationAchievementsApi.md#get_user_progress_for_achievement_using_get) | **GET** /users/{user_id}/achievements/{achievement_name} | Retrieve progress on a given achievement for a given user
[**get_user_progress_using_get**](GamificationAchievementsApi.md#get_user_progress_using_get) | **GET** /users/{user_id}/achievements | Retrieve progress on achievements for a given user
[**update_achievement_using_put**](GamificationAchievementsApi.md#update_achievement_using_put) | **PUT** /achievements/{name} | Update an achievement definition
[**update_progress_using_put**](GamificationAchievementsApi.md#update_progress_using_put) | **PUT** /users/{user_id}/achievements/{achievement_name} | Update or create an achievement progress record for a user
[**update_template_using_put**](GamificationAchievementsApi.md#update_template_using_put) | **PUT** /achievements/templates/{id} | Update an achievement template


# **create_achievement_using_post**
> AchievementDefinitionResource create_achievement_using_post(opts)

Create a new achievement definition

If the definition contains a trigger event name, a BRE rule is created, so that tracking logic is executed when the triggering event occurs. If no trigger event name is specified, the user's achievement status must manually be updated via the API.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

opts = { 
  achievement: SwaggerClient::AchievementDefinitionResource.new # AchievementDefinitionResource | The achievement definition
}

begin
  #Create a new achievement definition
  result = api_instance.create_achievement_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->create_achievement_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievement** | [**AchievementDefinitionResource**](AchievementDefinitionResource.md)| The achievement definition | [optional] 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create_template_using_post**
> TemplateResource create_template_using_post(opts)

Create an achievement template

Achievement templates define a type of achievement and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

opts = { 
  template: SwaggerClient::TemplateResource.new # TemplateResource | The achievement template to be created
}

begin
  #Create an achievement template
  result = api_instance.create_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->create_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The achievement template to be created | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_achievement_template_using_delete**
> delete_achievement_template_using_delete(id, opts)

Delete an achievement template

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

api_instance = SwaggerClient::GamificationAchievementsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete an achievement template
  api_instance.delete_achievement_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->delete_achievement_template_using_delete: #{e}"
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



# **delete_achievement_using_delete**
> delete_achievement_using_delete(name)

Delete an achievement definition

Will also disable the associated generated rule, if any.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

name = "name_example" # String | The name of the achievement


begin
  #Delete an achievement definition
  api_instance.delete_achievement_using_delete(name)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->delete_achievement_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the achievement | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **find_all_by_group_name_using_get**
> Array&lt;AchievementDefinitionResource&gt; find_all_by_group_name_using_get(name)

Get a list of derived achievements

Used by other services that depend on achievements

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

name = "name_example" # String | The name of the derived achievement


begin
  #Get a list of derived achievements
  result = api_instance.find_all_by_group_name_using_get(name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->find_all_by_group_name_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the derived achievement | 

### Return type

[**Array&lt;AchievementDefinitionResource&gt;**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_achievement_template_using_get**
> TemplateResource get_achievement_template_using_get(id)

Get a single achievement template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single achievement template
  result = api_instance.get_achievement_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_achievement_template_using_get: #{e}"
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



# **get_achievement_templates_using_get**
> PageTemplateResource get_achievement_templates_using_get(opts)

List and search achievement templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search achievement templates
  result = api_instance.get_achievement_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_achievement_templates_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageTemplateResource**](PageTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_achievement_using_get**
> AchievementDefinitionResource get_achievement_using_get(name)

Get a single achievement definition

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

name = "name_example" # String | The name of the achievement


begin
  #Get a single achievement definition
  result = api_instance.get_achievement_using_get(name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_achievement_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the achievement | 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_achievements_using_get**
> PageAchievementDefinitionResource get_achievements_using_get(opts)

Get all achievement definitions in the system

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

opts = { 
  filter_tagset: "filter_tagset_example", # String | Filter for achievements with specified tags (separated by comma)
  filter_name: "filter_name_example", # String | Filter for achievements whose name contains a string
  filter_hidden: true, # BOOLEAN | Filter for achievements that are hidden or not
  filter_derived: true, # BOOLEAN | Filter for achievements that are derived from other services
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get all achievement definitions in the system
  result = api_instance.get_achievements_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_achievements_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_tagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_name** | **String**| Filter for achievements whose name contains a string | [optional] 
 **filter_hidden** | **BOOLEAN**| Filter for achievements that are hidden or not | [optional] 
 **filter_derived** | **BOOLEAN**| Filter for achievements that are derived from other services | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageAchievementDefinitionResource**](PageAchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_all_user_progress_for_achievement_using_get**
> PageUserAchievementGroupResource get_all_user_progress_for_achievement_using_get(achievement_name, opts)

Retrieve progress on a given achievement for all users

Assets will not be filled in on the resources returned. Use 'Get single achievement progress for user' to retrieve the full resource with assets for a given user as needed.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

achievement_name = "achievement_name_example" # String | The achievement's name

opts = { 
  filter_achievement_derived: true, # BOOLEAN | Filter for achievements that are derived from other services
  filter_achievement_tagset: "filter_achievement_tagset_example", # String | Filter for achievements with specified tags (separated by comma)
  filter_achievement_hidden: true, # BOOLEAN | Filter for achievements that are hidden or not
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Retrieve progress on a given achievement for all users
  result = api_instance.get_all_user_progress_for_achievement_using_get(achievement_name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_all_user_progress_for_achievement_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievement_name** | **String**| The achievement&#39;s name | 
 **filter_achievement_derived** | **BOOLEAN**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_hidden** | **BOOLEAN**| Filter for achievements that are hidden or not | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageUserAchievementGroupResource**](PageUserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_all_user_progress_using_get**
> PageUserAchievementGroupResource get_all_user_progress_using_get(opts)

Retrieve progress on achievements for all users

Assets will not be filled in on the resources returned. Use 'Get single achievement progress for user' to retrieve the full resource with assets for a given user as needed.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

opts = { 
  filter_achievement_derived: true, # BOOLEAN | Filter for achievements that are derived from other services
  filter_achievement_tagset: "filter_achievement_tagset_example", # String | Filter for achievements with specified tags (separated by comma)
  filter_achievement_name: "filter_achievement_name_example", # String | Filter for achievements whose name contains a string
  filter_achievement_hidden: true, # BOOLEAN | Filter for achievements that are hidden or not
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Retrieve progress on achievements for all users
  result = api_instance.get_all_user_progress_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_all_user_progress_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_achievement_derived** | **BOOLEAN**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_name** | **String**| Filter for achievements whose name contains a string | [optional] 
 **filter_achievement_hidden** | **BOOLEAN**| Filter for achievements that are hidden or not | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageUserAchievementGroupResource**](PageUserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_available_triggers_using_get**
> Array&lt;BreTriggerResource&gt; get_available_triggers_using_get

Get the list of triggers that can be used to trigger an achievement progress update

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

begin
  #Get the list of triggers that can be used to trigger an achievement progress update
  result = api_instance.get_available_triggers_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_available_triggers_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;BreTriggerResource&gt;**](BreTriggerResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_user_progress_for_achievement_using_get**
> UserAchievementGroupResource get_user_progress_for_achievement_using_get(user_id, achievement_name)

Retrieve progress on a given achievement for a given user

Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

user_id = 56 # Integer | The user's id

achievement_name = "achievement_name_example" # String | The achievement's name


begin
  #Retrieve progress on a given achievement for a given user
  result = api_instance.get_user_progress_for_achievement_using_get(user_id, achievement_name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_user_progress_for_achievement_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user&#39;s id | 
 **achievement_name** | **String**| The achievement&#39;s name | 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_user_progress_using_get**
> PageUserAchievementGroupResource get_user_progress_using_get(user_id, opts)

Retrieve progress on achievements for a given user

Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

user_id = 56 # Integer | The user's id

opts = { 
  filter_achievement_derived: true, # BOOLEAN | Filter for achievements that are derived from other services
  filter_achievement_tagset: "filter_achievement_tagset_example", # String | Filter for achievements with specified tags (separated by comma)
  filter_achievement_name: "filter_achievement_name_example", # String | Filter for achievements whose name contains a string
  filter_achievement_hidden: true, # BOOLEAN | Filter for achievements that are hidden or not
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Retrieve progress on achievements for a given user
  result = api_instance.get_user_progress_using_get(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_user_progress_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user&#39;s id | 
 **filter_achievement_derived** | **BOOLEAN**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_name** | **String**| Filter for achievements whose name contains a string | [optional] 
 **filter_achievement_hidden** | **BOOLEAN**| Filter for achievements that are hidden or not | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageUserAchievementGroupResource**](PageUserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_achievement_using_put**
> update_achievement_using_put(name, opts)

Update an achievement definition

The existing generated rule, if any, will be deleted. A new rule will be created if a trigger event name is specified in the new version.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

name = "name_example" # String | The name of the achievement

opts = { 
  achievement: SwaggerClient::AchievementDefinitionResource.new # AchievementDefinitionResource | The achievement definition
}

begin
  #Update an achievement definition
  api_instance.update_achievement_using_put(name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->update_achievement_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the achievement | 
 **achievement** | [**AchievementDefinitionResource**](AchievementDefinitionResource.md)| The achievement definition | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_progress_using_put**
> UserAchievementGroupResource update_progress_using_put(user_id, achievement_name, opts)

Update or create an achievement progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the achievement's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

user_id = 56 # Integer | The user's id

achievement_name = "achievement_name_example" # String | The achievement's name

opts = { 
  request: SwaggerClient::AchievementProgressUpdateRequest.new # AchievementProgressUpdateRequest | The progress update details
}

begin
  #Update or create an achievement progress record for a user
  result = api_instance.update_progress_using_put(user_id, achievement_name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->update_progress_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user&#39;s id | 
 **achievement_name** | **String**| The achievement&#39;s name | 
 **request** | [**AchievementProgressUpdateRequest**](AchievementProgressUpdateRequest.md)| The progress update details | [optional] 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_template_using_put**
> update_template_using_put(id, opts)

Update an achievement template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationAchievementsApi.new

id = "id_example" # String | The id of the template

opts = { 
  template: SwaggerClient::TemplateResource.new # TemplateResource | The updated template
}

begin
  #Update an achievement template
  api_instance.update_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->update_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



