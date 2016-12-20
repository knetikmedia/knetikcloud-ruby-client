# SwaggerClient::GamificationLevelingApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_user_level_experience_using_put**](GamificationLevelingApi.md#change_user_level_experience_using_put) | **PUT** /users/{user_id}/leveling/{name} | Update or create a leveling progress record for a user
[**create_level_using_post**](GamificationLevelingApi.md#create_level_using_post) | **POST** /leveling | Create a level schema
[**delete_level_using_delete**](GamificationLevelingApi.md#delete_level_using_delete) | **DELETE** /leveling/{name} | Delete a level
[**get_available_triggers_using_get1**](GamificationLevelingApi.md#get_available_triggers_using_get1) | **GET** /leveling/triggers | Get the list of triggers that can be used to trigger a leveling progress update
[**get_level_using_get**](GamificationLevelingApi.md#get_level_using_get) | **GET** /leveling/{name} | Retrieve a particular level
[**get_levels_using_get**](GamificationLevelingApi.md#get_levels_using_get) | **GET** /leveling | List and search levels
[**get_user_level_using_get**](GamificationLevelingApi.md#get_user_level_using_get) | **GET** /users/{user_id}/leveling/{name} | Get a user&#39;s progress for a given level schema
[**get_user_levels_using_get**](GamificationLevelingApi.md#get_user_levels_using_get) | **GET** /users/{user_id}/leveling | Get a user&#39;s progress for all level schemas
[**update_level_using_put**](GamificationLevelingApi.md#update_level_using_put) | **PUT** /leveling/{name} | Update a level


# **change_user_level_experience_using_put**
> change_user_level_experience_using_put(user_id, name, opts)

Update or create a leveling progress record for a user

If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationLevelingApi.new

user_id = 56 # Integer | The id of the user

name = "name_example" # String | The level schema name

opts = { 
  progress: 56 # Integer | The current progress amount
}

begin
  #Update or create a leveling progress record for a user
  api_instance.change_user_level_experience_using_put(user_id, name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->change_user_level_experience_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **name** | **String**| The level schema name | 
 **progress** | **Integer**| The current progress amount | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_level_using_post**
> LevelingResource create_level_using_post(opts)

Create a level schema

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationLevelingApi.new

opts = { 
  level: SwaggerClient::LevelingResource.new # LevelingResource | The level schema definition
}

begin
  #Create a level schema
  result = api_instance.create_level_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->create_level_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **level** | [**LevelingResource**](LevelingResource.md)| The level schema definition | [optional] 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_level_using_delete**
> delete_level_using_delete(name)

Delete a level

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationLevelingApi.new

name = "name_example" # String | The level schema name


begin
  #Delete a level
  api_instance.delete_level_using_delete(name)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->delete_level_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_available_triggers_using_get1**
> Array&lt;BreTriggerResource&gt; get_available_triggers_using_get1

Get the list of triggers that can be used to trigger a leveling progress update

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationLevelingApi.new

begin
  #Get the list of triggers that can be used to trigger a leveling progress update
  result = api_instance.get_available_triggers_using_get1
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_available_triggers_using_get1: #{e}"
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



# **get_level_using_get**
> LevelingResource get_level_using_get(name)

Retrieve a particular level

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationLevelingApi.new

name = "name_example" # String | The level schema name


begin
  #Retrieve a particular level
  result = api_instance.get_level_using_get(name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_level_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 

### Return type

[**LevelingResource**](LevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_levels_using_get**
> PageLevelingResource get_levels_using_get(opts)

List and search levels

Get a list of levels schemas with optional filtering

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationLevelingApi.new

opts = { 
  filter_name: "filter_name_example", # String | Filter for level schemas whose name contains a given string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search levels
  result = api_instance.get_levels_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_levels_using_get: #{e}"
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

[**PageLevelingResource**](PageLevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_level_using_get**
> UserLevelingResource get_user_level_using_get(user_id, name)

Get a user's progress for a given level schema

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationLevelingApi.new

user_id = 56 # Integer | The id of the user

name = "name_example" # String | The level schema name


begin
  #Get a user's progress for a given level schema
  result = api_instance.get_user_level_using_get(user_id, name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_user_level_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **name** | **String**| The level schema name | 

### Return type

[**UserLevelingResource**](UserLevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_levels_using_get**
> PageUserLevelingResource get_user_levels_using_get(user_id)

Get a user's progress for all level schemas

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationLevelingApi.new

user_id = 56 # Integer | The id of the user


begin
  #Get a user's progress for all level schemas
  result = api_instance.get_user_levels_using_get(user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_user_levels_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 

### Return type

[**PageUserLevelingResource**](PageUserLevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_level_using_put**
> update_level_using_put(name, opts)

Update a level

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationLevelingApi.new

name = "name_example" # String | The level schema name

opts = { 
  new_level: SwaggerClient::LevelingResource.new # LevelingResource | The level schema definition
}

begin
  #Update a level
  api_instance.update_level_using_put(name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->update_level_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The level schema name | 
 **new_level** | [**LevelingResource**](LevelingResource.md)| The level schema definition | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



