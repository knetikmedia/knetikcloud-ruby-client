# KnetikCloudClient::GamificationAchievementsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_achievement**](GamificationAchievementsApi.md#create_achievement) | **POST** /achievements | Create a new achievement definition
[**create_achievement_template**](GamificationAchievementsApi.md#create_achievement_template) | **POST** /achievements/templates | Create an achievement template
[**delete_achievement**](GamificationAchievementsApi.md#delete_achievement) | **DELETE** /achievements/{name} | Delete an achievement definition
[**delete_achievement_template**](GamificationAchievementsApi.md#delete_achievement_template) | **DELETE** /achievements/templates/{id} | Delete an achievement template
[**get_achievement**](GamificationAchievementsApi.md#get_achievement) | **GET** /achievements/{name} | Get a single achievement definition
[**get_achievement_template**](GamificationAchievementsApi.md#get_achievement_template) | **GET** /achievements/templates/{id} | Get a single achievement template
[**get_achievement_templates**](GamificationAchievementsApi.md#get_achievement_templates) | **GET** /achievements/templates | List and search achievement templates
[**get_achievement_triggers**](GamificationAchievementsApi.md#get_achievement_triggers) | **GET** /achievements/triggers | Get the list of triggers that can be used to trigger an achievement progress update
[**get_achievements**](GamificationAchievementsApi.md#get_achievements) | **GET** /achievements | Get all achievement definitions in the system
[**get_derived_achievements**](GamificationAchievementsApi.md#get_derived_achievements) | **GET** /achievements/derived/{name} | Get a list of derived achievements
[**get_user_achievement_progress**](GamificationAchievementsApi.md#get_user_achievement_progress) | **GET** /users/{user_id}/achievements/{achievement_name} | Retrieve progress on a given achievement for a given user
[**get_user_achievements_progress**](GamificationAchievementsApi.md#get_user_achievements_progress) | **GET** /users/{user_id}/achievements | Retrieve progress on achievements for a given user
[**get_users_achievement_progress**](GamificationAchievementsApi.md#get_users_achievement_progress) | **GET** /users/achievements/{achievement_name} | Retrieve progress on a given achievement for all users
[**get_users_achievements_progress**](GamificationAchievementsApi.md#get_users_achievements_progress) | **GET** /users/achievements | Retrieve progress on achievements for all users
[**increment_achievement_progress**](GamificationAchievementsApi.md#increment_achievement_progress) | **POST** /users/{user_id}/achievements/{achievement_name}/progress | Increment an achievement progress record for a user
[**set_achievement_progress**](GamificationAchievementsApi.md#set_achievement_progress) | **PUT** /users/{user_id}/achievements/{achievement_name}/progress | Set an achievement progress record for a user
[**update_achievement**](GamificationAchievementsApi.md#update_achievement) | **PUT** /achievements/{name} | Update an achievement definition
[**update_achievement_template**](GamificationAchievementsApi.md#update_achievement_template) | **PUT** /achievements/templates/{id} | Update an achievement template


# **create_achievement**
> AchievementDefinitionResource create_achievement(opts)

Create a new achievement definition

If the definition contains a trigger event name, a BRE rule is created, so that tracking logic is executed when the triggering event occurs. If no trigger event name is specified, the user's achievement status must manually be updated via the API.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

opts = { 
  achievement: KnetikCloudClient::AchievementDefinitionResource.new # AchievementDefinitionResource | The achievement definition
}

begin
  #Create a new achievement definition
  result = api_instance.create_achievement(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->create_achievement: #{e}"
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
 - **Accept**: application/json



# **create_achievement_template**
> TemplateResource create_achievement_template(opts)

Create an achievement template

Achievement templates define a type of achievement and the properties they have

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

opts = { 
  template: KnetikCloudClient::TemplateResource.new # TemplateResource | The achievement template to be created
}

begin
  #Create an achievement template
  result = api_instance.create_achievement_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->create_achievement_template: #{e}"
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
 - **Accept**: application/json



# **delete_achievement**
> delete_achievement(name)

Delete an achievement definition

Will also disable the associated generated rule, if any.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

name = "name_example" # String | The name of the achievement


begin
  #Delete an achievement definition
  api_instance.delete_achievement(name)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->delete_achievement: #{e}"
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
 - **Accept**: application/json



# **delete_achievement_template**
> delete_achievement_template(id, opts)

Delete an achievement template

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

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete an achievement template
  api_instance.delete_achievement_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->delete_achievement_template: #{e}"
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



# **get_achievement**
> AchievementDefinitionResource get_achievement(name)

Get a single achievement definition

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

name = "name_example" # String | The name of the achievement


begin
  #Get a single achievement definition
  result = api_instance.get_achievement(name)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_achievement: #{e}"
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
 - **Accept**: application/json



# **get_achievement_template**
> TemplateResource get_achievement_template(id)

Get a single achievement template

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single achievement template
  result = api_instance.get_achievement_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_achievement_template: #{e}"
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



# **get_achievement_templates**
> PageResourceTemplateResource get_achievement_templates(opts)

List and search achievement templates

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search achievement templates
  result = api_instance.get_achievement_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_achievement_templates: #{e}"
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



# **get_achievement_triggers**
> Array&lt;BreTriggerResource&gt; get_achievement_triggers

Get the list of triggers that can be used to trigger an achievement progress update

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

begin
  #Get the list of triggers that can be used to trigger an achievement progress update
  result = api_instance.get_achievement_triggers
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_achievement_triggers: #{e}"
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
 - **Accept**: application/json



# **get_achievements**
> PageResourceAchievementDefinitionResource get_achievements(opts)

Get all achievement definitions in the system

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

opts = { 
  filter_tagset: "filter_tagset_example", # String | Filter for achievements with specified tags (separated by comma)
  filter_name: "filter_name_example", # String | Filter for achievements whose name contains a string
  filter_hidden: true, # BOOLEAN | Filter for achievements that are hidden or not
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "name:ASC", # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  filter_derived: false # BOOLEAN | Filter for achievements that are derived from other services
}

begin
  #Get all achievement definitions in the system
  result = api_instance.get_achievements(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_achievements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_tagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_name** | **String**| Filter for achievements whose name contains a string | [optional] 
 **filter_hidden** | **BOOLEAN**| Filter for achievements that are hidden or not | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]
 **filter_derived** | **BOOLEAN**| Filter for achievements that are derived from other services | [optional] [default to false]

### Return type

[**PageResourceAchievementDefinitionResource**](PageResourceAchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_derived_achievements**
> Array&lt;AchievementDefinitionResource&gt; get_derived_achievements(name)

Get a list of derived achievements

Used by other services that depend on achievements

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

name = "name_example" # String | The name of the derived achievement


begin
  #Get a list of derived achievements
  result = api_instance.get_derived_achievements(name)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_derived_achievements: #{e}"
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
 - **Accept**: application/json



# **get_user_achievement_progress**
> UserAchievementGroupResource get_user_achievement_progress(user_id, achievement_name)

Retrieve progress on a given achievement for a given user

Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

user_id = 56 # Integer | The user's id

achievement_name = "achievement_name_example" # String | The achievement's name


begin
  #Retrieve progress on a given achievement for a given user
  result = api_instance.get_user_achievement_progress(user_id, achievement_name)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_user_achievement_progress: #{e}"
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
 - **Accept**: application/json



# **get_user_achievements_progress**
> PageResourceUserAchievementGroupResource get_user_achievements_progress(user_id, opts)

Retrieve progress on achievements for a given user

Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

user_id = 56 # Integer | The user's id

opts = { 
  filter_achievement_derived: true, # BOOLEAN | Filter for achievements that are derived from other services
  filter_achievement_tagset: "filter_achievement_tagset_example", # String | Filter for achievements with specified tags (separated by comma)
  filter_achievement_name: "filter_achievement_name_example", # String | Filter for achievements whose name contains a string
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Retrieve progress on achievements for a given user
  result = api_instance.get_user_achievements_progress(user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_user_achievements_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user&#39;s id | 
 **filter_achievement_derived** | **BOOLEAN**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_name** | **String**| Filter for achievements whose name contains a string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserAchievementGroupResource**](PageResourceUserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_users_achievement_progress**
> PageResourceUserAchievementGroupResource get_users_achievement_progress(achievement_name, opts)

Retrieve progress on a given achievement for all users

Assets will not be filled in on the resources returned. Use 'Get single achievement progress for user' to retrieve the full resource with assets for a given user as needed.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

achievement_name = "achievement_name_example" # String | The achievement's name

opts = { 
  filter_achievement_derived: true, # BOOLEAN | Filter for achievements that are derived from other services
  filter_achievement_tagset: "filter_achievement_tagset_example", # String | Filter for achievements with specified tags (separated by comma)
  filter_achievement_name: "filter_achievement_name_example", # String | Filter for achievements whose name contains a string
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Retrieve progress on a given achievement for all users
  result = api_instance.get_users_achievement_progress(achievement_name, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_users_achievement_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **achievement_name** | **String**| The achievement&#39;s name | 
 **filter_achievement_derived** | **BOOLEAN**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_name** | **String**| Filter for achievements whose name contains a string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserAchievementGroupResource**](PageResourceUserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_users_achievements_progress**
> PageResourceUserAchievementGroupResource get_users_achievements_progress(opts)

Retrieve progress on achievements for all users

Assets will not be filled in on the resources returned. Use 'Get single achievement progress for user' to retrieve the full resource with assets for a given user as needed.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

opts = { 
  filter_achievement_derived: true, # BOOLEAN | Filter for achievements that are derived from other services
  filter_achievement_tagset: "filter_achievement_tagset_example", # String | Filter for achievements with specified tags (separated by comma)
  filter_achievement_name: "filter_achievement_name_example", # String | Filter for achievements whose name contains a string
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Retrieve progress on achievements for all users
  result = api_instance.get_users_achievements_progress(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->get_users_achievements_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_achievement_derived** | **BOOLEAN**| Filter for achievements that are derived from other services | [optional] 
 **filter_achievement_tagset** | **String**| Filter for achievements with specified tags (separated by comma) | [optional] 
 **filter_achievement_name** | **String**| Filter for achievements whose name contains a string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserAchievementGroupResource**](PageResourceUserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **increment_achievement_progress**
> UserAchievementGroupResource increment_achievement_progress(user_id, achievement_name, opts)

Increment an achievement progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated and the provided value added to the existing progress. May be negative. If progress meets or exceeds the achievement's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

user_id = 56 # Integer | The user's id

achievement_name = "achievement_name_example" # String | The achievement's name

opts = { 
  progress: 56 # Integer | The amount to add to the progress value
}

begin
  #Increment an achievement progress record for a user
  result = api_instance.increment_achievement_progress(user_id, achievement_name, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->increment_achievement_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user&#39;s id | 
 **achievement_name** | **String**| The achievement&#39;s name | 
 **progress** | **Integer**| The amount to add to the progress value | [optional] 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_achievement_progress**
> UserAchievementGroupResource set_achievement_progress(user_id, achievement_name, opts)

Set an achievement progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated and progress set to the provided value. If progress meets or exceeds the achievement's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

user_id = 56 # Integer | The user's id

achievement_name = "achievement_name_example" # String | The achievement's name

opts = { 
  progress: 56 # Integer | The new progress value
}

begin
  #Set an achievement progress record for a user
  result = api_instance.set_achievement_progress(user_id, achievement_name, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->set_achievement_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user&#39;s id | 
 **achievement_name** | **String**| The achievement&#39;s name | 
 **progress** | **Integer**| The new progress value | [optional] 

### Return type

[**UserAchievementGroupResource**](UserAchievementGroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_achievement**
> AchievementDefinitionResource update_achievement(name, opts)

Update an achievement definition

The existing generated rule, if any, will be deleted. A new rule will be created if a trigger event name is specified in the new version.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

name = "name_example" # String | The name of the achievement

opts = { 
  achievement: KnetikCloudClient::AchievementDefinitionResource.new # AchievementDefinitionResource | The achievement definition
}

begin
  #Update an achievement definition
  result = api_instance.update_achievement(name, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->update_achievement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the achievement | 
 **achievement** | [**AchievementDefinitionResource**](AchievementDefinitionResource.md)| The achievement definition | [optional] 

### Return type

[**AchievementDefinitionResource**](AchievementDefinitionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_achievement_template**
> TemplateResource update_achievement_template(id, opts)

Update an achievement template

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationAchievementsApi.new

id = "id_example" # String | The id of the template

opts = { 
  template: KnetikCloudClient::TemplateResource.new # TemplateResource | The updated template
}

begin
  #Update an achievement template
  result = api_instance.update_achievement_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationAchievementsApi->update_achievement_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



