# SwaggerClient::GamificationLeaderboardsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_leaderboard_using_get**](GamificationLeaderboardsApi.md#get_leaderboard_using_get) | **GET** /leaderboards/{context_type}/{context_id} | Retrieves leaderboard details and paginated entries
[**get_strategies_using_get**](GamificationLeaderboardsApi.md#get_strategies_using_get) | **GET** /leaderboards/strategies | Get a list of available leaderboard strategy names
[**get_user_rank_using_get**](GamificationLeaderboardsApi.md#get_user_rank_using_get) | **GET** /leaderboards/{context_type}/{context_id}/users/{id}/rank | Retrieves a specific user entry with rank


# **get_leaderboard_using_get**
> LeaderboardResource get_leaderboard_using_get(context_type, context_id, opts)

Retrieves leaderboard details and paginated entries

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GamificationLeaderboardsApi.new

context_type = "context_type_example" # String | The context type for the leaderboard

context_id = "context_id_example" # String | The context id for the leaderboard

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Retrieves leaderboard details and paginated entries
  result = api_instance.get_leaderboard_using_get(context_type, context_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLeaderboardsApi->get_leaderboard_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context_type** | **String**| The context type for the leaderboard | 
 **context_id** | **String**| The context id for the leaderboard | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**LeaderboardResource**](LeaderboardResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_strategies_using_get**
> Array&lt;String&gt; get_strategies_using_get

Get a list of available leaderboard strategy names

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GamificationLeaderboardsApi.new

begin
  #Get a list of available leaderboard strategy names
  result = api_instance.get_strategies_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLeaderboardsApi->get_strategies_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_rank_using_get**
> LeaderboardEntryResource get_user_rank_using_get(context_type, context_id, id)

Retrieves a specific user entry with rank

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GamificationLeaderboardsApi.new

context_type = "context_type_example" # String | The context type for the leaderboard

context_id = "context_id_example" # String | The context id for the leaderboard

id = "id_example" # String | The id of a user


begin
  #Retrieves a specific user entry with rank
  result = api_instance.get_user_rank_using_get(context_type, context_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationLeaderboardsApi->get_user_rank_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context_type** | **String**| The context type for the leaderboard | 
 **context_id** | **String**| The context id for the leaderboard | 
 **id** | **String**| The id of a user | 

### Return type

[**LeaderboardEntryResource**](LeaderboardEntryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



