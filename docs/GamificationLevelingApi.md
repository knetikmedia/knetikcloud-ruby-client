# KnetikCloudClient::GamificationLevelingApi

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_level**](GamificationLevelingApi.md#create_level) | **POST** /leveling | Create a level schema
[**delete_level**](GamificationLevelingApi.md#delete_level) | **DELETE** /leveling/{name} | Delete a level
[**get_level**](GamificationLevelingApi.md#get_level) | **GET** /leveling/{name} | Retrieve a level
[**get_level_triggers**](GamificationLevelingApi.md#get_level_triggers) | **GET** /leveling/triggers | Get the list of triggers that can be used to trigger a leveling progress update
[**get_levels**](GamificationLevelingApi.md#get_levels) | **GET** /leveling | List and search levels
[**get_user_level**](GamificationLevelingApi.md#get_user_level) | **GET** /users/{user_id}/leveling/{name} | Get a user&#39;s progress for a given level schema
[**get_user_levels**](GamificationLevelingApi.md#get_user_levels) | **GET** /users/{user_id}/leveling | Get a user&#39;s progress for all level schemas
[**increment_progress**](GamificationLevelingApi.md#increment_progress) | **POST** /users/{user_id}/leveling/{name}/progress | Update or create a leveling progress record for a user
[**set_progress**](GamificationLevelingApi.md#set_progress) | **PUT** /users/{user_id}/leveling/{name}/progress | Set leveling progress for a user
[**update_level**](GamificationLevelingApi.md#update_level) | **PUT** /leveling/{name} | Update a level


# **create_level**
> LevelingResource create_level(opts)

Create a level schema

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

api_instance = KnetikCloudClient::GamificationLevelingApi.new

opts = { 
  level: KnetikCloudClient::LevelingResource.new # LevelingResource | The level schema definition
}

begin
  #Create a level schema
  result = api_instance.create_level(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->create_level: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **level** | [**LevelingResource**](LevelingResource.md)| The level schema definition | [optional] 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_level**
> delete_level(name)

Delete a level

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

api_instance = KnetikCloudClient::GamificationLevelingApi.new

name = "name_example" # String | The level schema name


begin
  #Delete a level
  api_instance.delete_level(name)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->delete_level: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_level**
> LevelingResource get_level(name)

Retrieve a level

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

api_instance = KnetikCloudClient::GamificationLevelingApi.new

name = "name_example" # String | The level schema name


begin
  #Retrieve a level
  result = api_instance.get_level(name)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_level: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_level_triggers**
> Array&lt;BreTriggerResource&gt; get_level_triggers

Get the list of triggers that can be used to trigger a leveling progress update

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

api_instance = KnetikCloudClient::GamificationLevelingApi.new

begin
  #Get the list of triggers that can be used to trigger a leveling progress update
  result = api_instance.get_level_triggers
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_level_triggers: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;BreTriggerResource&gt;**](BreTriggerResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_levels**
> PageResourceLevelingResource get_levels(opts)

List and search levels

Get a list of levels schemas with optional filtering

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

api_instance = KnetikCloudClient::GamificationLevelingApi.new

opts = { 
  filter_name: "filter_name_example", # String | Filter for level schemas whose name contains a given string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search levels
  result = api_instance.get_levels(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_levels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_name** | **String**| Filter for level schemas whose name contains a given string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceLevelingResource**](PageResourceLevelingResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_level**
> UserLevelingResource get_user_level(user_id, name)

Get a user's progress for a given level schema

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

api_instance = KnetikCloudClient::GamificationLevelingApi.new

user_id = "user_id_example" # String | The id of the user or 'me'

name = "name_example" # String | The level schema name


begin
  #Get a user's progress for a given level schema
  result = api_instance.get_user_level(user_id, name)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_user_level: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; | 
 **name** | **String**| The level schema name | 

### Return type

[**UserLevelingResource**](UserLevelingResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_levels**
> PageResourceUserLevelingResource get_user_levels(user_id, opts)

Get a user's progress for all level schemas

Filtering and sorting is based on the LevelingResource object, not the UserLevelingResource that is returned here.

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

api_instance = KnetikCloudClient::GamificationLevelingApi.new

user_id = "user_id_example" # String | The id of the user or 'me'

opts = { 
  filter_name: "filter_name_example", # String | Filter for level schemas whose name contains a given string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get a user's progress for all level schemas
  result = api_instance.get_user_levels(user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_user_levels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; | 
 **filter_name** | **String**| Filter for level schemas whose name contains a given string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceUserLevelingResource**](PageResourceUserLevelingResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **increment_progress**
> increment_progress(user_id, name, opts)

Update or create a leveling progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise the provided value will be added to it. May be negative. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

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

api_instance = KnetikCloudClient::GamificationLevelingApi.new

user_id = 56 # Integer | The id of the user

name = "name_example" # String | The level schema name

opts = { 
  progress: KnetikCloudClient::IntWrapper.new # IntWrapper | The amount of progress to add
}

begin
  #Update or create a leveling progress record for a user
  api_instance.increment_progress(user_id, name, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->increment_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **name** | **String**| The level schema name | 
 **progress** | [**IntWrapper**](IntWrapper.md)| The amount of progress to add | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_progress**
> set_progress(user_id, name, opts)

Set leveling progress for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated to the provided value. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

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

api_instance = KnetikCloudClient::GamificationLevelingApi.new

user_id = 56 # Integer | The id of the user

name = "name_example" # String | The level schema name

opts = { 
  progress: KnetikCloudClient::IntWrapper.new # IntWrapper | The new progress amount
}

begin
  #Set leveling progress for a user
  api_instance.set_progress(user_id, name, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->set_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **name** | **String**| The level schema name | 
 **progress** | [**IntWrapper**](IntWrapper.md)| The new progress amount | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_level**
> LevelingResource update_level(name, opts)

Update a level

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

api_instance = KnetikCloudClient::GamificationLevelingApi.new

name = "name_example" # String | The level schema name

opts = { 
  new_level: KnetikCloudClient::LevelingResource.new # LevelingResource | The level schema definition
}

begin
  #Update a level
  result = api_instance.update_level(name, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->update_level: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 
 **new_level** | [**LevelingResource**](LevelingResource.md)| The level schema definition | [optional] 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



