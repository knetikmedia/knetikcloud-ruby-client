# SwaggerClient::CampaignsRewardsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_reward_set_using_post**](CampaignsRewardsApi.md#create_reward_set_using_post) | **POST** /rewards | Create a reward set
[**delete_reward_set_using_delete**](CampaignsRewardsApi.md#delete_reward_set_using_delete) | **DELETE** /rewards/{id} | Delete a reward set
[**get_reward_set_using_get**](CampaignsRewardsApi.md#get_reward_set_using_get) | **GET** /rewards/{id} | Get a single reward set
[**get_reward_sets_using_get**](CampaignsRewardsApi.md#get_reward_sets_using_get) | **GET** /rewards | List and search reward sets
[**update_reward_set_using_put**](CampaignsRewardsApi.md#update_reward_set_using_put) | **PUT** /rewards/{id} | Update a reward set


# **create_reward_set_using_post**
> RewardSetResource create_reward_set_using_post(opts)

Create a reward set

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsRewardsApi.new

opts = { 
  reward_set_resource: SwaggerClient::RewardSetResource.new # RewardSetResource | The reward set resource object
}

begin
  #Create a reward set
  result = api_instance.create_reward_set_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsRewardsApi->create_reward_set_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reward_set_resource** | [**RewardSetResource**](RewardSetResource.md)| The reward set resource object | [optional] 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_reward_set_using_delete**
> delete_reward_set_using_delete(id)

Delete a reward set

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsRewardsApi.new

id = 56 # Integer | The reward id


begin
  #Delete a reward set
  api_instance.delete_reward_set_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsRewardsApi->delete_reward_set_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The reward id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_reward_set_using_get**
> RewardSetResource get_reward_set_using_get(id)

Get a single reward set

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsRewardsApi.new

id = 56 # Integer | The reward id


begin
  #Get a single reward set
  result = api_instance.get_reward_set_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsRewardsApi->get_reward_set_using_get: #{e}"
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
 - **Accept**: */*



# **get_reward_sets_using_get**
> PageRewardSetResource get_reward_sets_using_get(opts)

List and search reward sets

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsRewardsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search reward sets
  result = api_instance.get_reward_sets_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsRewardsApi->get_reward_sets_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageRewardSetResource**](PageRewardSetResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_reward_set_using_put**
> update_reward_set_using_put(id, opts)

Update a reward set

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsRewardsApi.new

id = 56 # Integer | The reward id

opts = { 
  reward_set_resource: SwaggerClient::RewardSetResource.new # RewardSetResource | The reward set resource object
}

begin
  #Update a reward set
  api_instance.update_reward_set_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsRewardsApi->update_reward_set_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The reward id | 
 **reward_set_resource** | [**RewardSetResource**](RewardSetResource.md)| The reward set resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



