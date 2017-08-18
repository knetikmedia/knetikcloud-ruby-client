# KnetikCloudClient::CampaignsRewardsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_reward_set**](CampaignsRewardsApi.md#create_reward_set) | **POST** /rewards | Create a reward set
[**delete_reward_set**](CampaignsRewardsApi.md#delete_reward_set) | **DELETE** /rewards/{id} | Delete a reward set
[**get_reward_set**](CampaignsRewardsApi.md#get_reward_set) | **GET** /rewards/{id} | Get a single reward set
[**get_reward_sets**](CampaignsRewardsApi.md#get_reward_sets) | **GET** /rewards | List and search reward sets
[**update_reward_set**](CampaignsRewardsApi.md#update_reward_set) | **PUT** /rewards/{id} | Update a reward set


# **create_reward_set**
> RewardSetResource create_reward_set(opts)

Create a reward set

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

api_instance = KnetikCloudClient::CampaignsRewardsApi.new

opts = { 
  reward_set_resource: KnetikCloudClient::RewardSetResource.new # RewardSetResource | The reward set resource object
}

begin
  #Create a reward set
  result = api_instance.create_reward_set(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsRewardsApi->create_reward_set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reward_set_resource** | [**RewardSetResource**](RewardSetResource.md)| The reward set resource object | [optional] 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_reward_set**
> delete_reward_set(id)

Delete a reward set

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

api_instance = KnetikCloudClient::CampaignsRewardsApi.new

id = 56 # Integer | The reward id


begin
  #Delete a reward set
  api_instance.delete_reward_set(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsRewardsApi->delete_reward_set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The reward id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_reward_set**
> RewardSetResource get_reward_set(id)

Get a single reward set

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::CampaignsRewardsApi.new

id = 56 # Integer | The reward id


begin
  #Get a single reward set
  result = api_instance.get_reward_set(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsRewardsApi->get_reward_set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The reward id | 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_reward_sets**
> PageResourceRewardSetResource get_reward_sets(opts)

List and search reward sets

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::CampaignsRewardsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search reward sets
  result = api_instance.get_reward_sets(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsRewardsApi->get_reward_sets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceRewardSetResource**](PageResourceRewardSetResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_reward_set**
> RewardSetResource update_reward_set(id, opts)

Update a reward set

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

api_instance = KnetikCloudClient::CampaignsRewardsApi.new

id = 56 # Integer | The reward id

opts = { 
  reward_set_resource: KnetikCloudClient::RewardSetResource.new # RewardSetResource | The reward set resource object
}

begin
  #Update a reward set
  result = api_instance.update_reward_set(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling CampaignsRewardsApi->update_reward_set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The reward id | 
 **reward_set_resource** | [**RewardSetResource**](RewardSetResource.md)| The reward set resource object | [optional] 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



