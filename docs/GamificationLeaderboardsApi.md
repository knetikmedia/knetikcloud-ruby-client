# KnetikCloudClient::GamificationLeaderboardsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_leaderboard**](GamificationLeaderboardsApi.md#get_leaderboard) | **GET** /leaderboards/{context_type}/{context_id} | Retrieves leaderboard details and paginated entries
[**get_leaderboard_rank**](GamificationLeaderboardsApi.md#get_leaderboard_rank) | **GET** /leaderboards/{context_type}/{context_id}/users/{id}/rank | Retrieves a specific user entry with rank
[**get_leaderboard_strategies**](GamificationLeaderboardsApi.md#get_leaderboard_strategies) | **GET** /leaderboards/strategies | Get a list of available leaderboard strategy names


# **get_leaderboard**
> LeaderboardResource get_leaderboard(context_type, context_id, opts)

Retrieves leaderboard details and paginated entries

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard. Sorting is based on the fields of LeaderboardEntryResource rather than the returned LeaderboardResource.

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

api_instance = KnetikCloudClient::GamificationLeaderboardsApi.new

context_type = "context_type_example" # String | The context type for the leaderboard

context_id = "context_id_example" # String | The context id for the leaderboard

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "score:DESC,updated:ASC,user_id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieves leaderboard details and paginated entries
  result = api_instance.get_leaderboard(context_type, context_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLeaderboardsApi->get_leaderboard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context_type** | **String**| The context type for the leaderboard | 
 **context_id** | **String**| The context id for the leaderboard | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to score:DESC,updated:ASC,user_id:ASC]

### Return type

[**LeaderboardResource**](LeaderboardResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_leaderboard_rank**
> LeaderboardEntryResource get_leaderboard_rank(context_type, context_id, id)

Retrieves a specific user entry with rank

The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard

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

api_instance = KnetikCloudClient::GamificationLeaderboardsApi.new

context_type = "context_type_example" # String | The context type for the leaderboard

context_id = "context_id_example" # String | The context id for the leaderboard

id = "id_example" # String | The id of a user


begin
  #Retrieves a specific user entry with rank
  result = api_instance.get_leaderboard_rank(context_type, context_id, id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLeaderboardsApi->get_leaderboard_rank: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_leaderboard_strategies**
> Array&lt;String&gt; get_leaderboard_strategies

Get a list of available leaderboard strategy names

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

api_instance = KnetikCloudClient::GamificationLeaderboardsApi.new

begin
  #Get a list of available leaderboard strategy names
  result = api_instance.get_leaderboard_strategies
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationLeaderboardsApi->get_leaderboard_strategies: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



