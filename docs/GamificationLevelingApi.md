# SwaggerClient::GamificationLevelingApi

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_level**](GamificationLevelingApi.md#create_level) | **POST** /leveling | Create a level schema
[**delete_level**](GamificationLevelingApi.md#delete_level) | **DELETE** /leveling/{name} | Delete a level
[**get_level**](GamificationLevelingApi.md#get_level) | **GET** /leveling/{name} | Retrieve a level
[**get_level_triggers**](GamificationLevelingApi.md#get_level_triggers) | **GET** /leveling/triggers | Get the list of triggers that can be used to trigger a leveling progress update
[**get_levels**](GamificationLevelingApi.md#get_levels) | **GET** /leveling | List and search levels
[**get_user_level**](GamificationLevelingApi.md#get_user_level) | **GET** /users/{user_id}/leveling/{name} | Get a user&#39;s progress for a given level schema
[**get_user_levels**](GamificationLevelingApi.md#get_user_levels) | **GET** /users/{user_id}/leveling | Get a user&#39;s progress for all level schemas
[**update_level**](GamificationLevelingApi.md#update_level) | **PUT** /leveling/{name} | Update a level
[**update_user_level**](GamificationLevelingApi.md#update_user_level) | **PUT** /users/{user_id}/leveling/{name} | Update or create a leveling progress record for a user


# **create_level**
> LevelingResource create_level(opts)

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
  result = api_instance.create_level(opts)
  p result
rescue SwaggerClient::ApiError => e
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_level**
> delete_level(name)

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
  api_instance.delete_level(name)
rescue SwaggerClient::ApiError => e
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_level**
> LevelingResource get_level(name)

Retrieve a level

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
  #Retrieve a level
  result = api_instance.get_level(name)
  p result
rescue SwaggerClient::ApiError => e
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_level_triggers**
> Array&lt;BreTriggerResource&gt; get_level_triggers

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
  result = api_instance.get_level_triggers
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_level_triggers: #{e}"
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



# **get_levels**
> PageResourceLevelingResource get_levels(opts)

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
  result = api_instance.get_levels(opts)
  p result
rescue SwaggerClient::ApiError => e
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_level**
> UserLevelingResource get_user_level(user_id, name)

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
  result = api_instance.get_user_level(user_id, name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_user_level: #{e}"
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



# **get_user_levels**
> PageResourceUserLevelingResource get_user_levels(user_id)

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
  result = api_instance.get_user_levels(user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->get_user_levels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 

### Return type

[**PageResourceUserLevelingResource**](PageResourceUserLevelingResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_level**
> LevelingResource update_level(name, opts)

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
  result = api_instance.update_level(name, opts)
  p result
rescue SwaggerClient::ApiError => e
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_level**
> update_user_level(user_id, name, opts)

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
  api_instance.update_user_level(user_id, name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLevelingApi->update_user_level: #{e}"
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



