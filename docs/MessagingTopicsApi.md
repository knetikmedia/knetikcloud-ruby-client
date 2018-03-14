# KnetikCloudClient::MessagingTopicsApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disable_topic_subscriber**](MessagingTopicsApi.md#disable_topic_subscriber) | **PUT** /messaging/topics/{id}/subscribers/{user_id}/disabled | Enable or disable messages for a user
[**get_topic_subscriber**](MessagingTopicsApi.md#get_topic_subscriber) | **GET** /messaging/topics/{id}/subscribers/{user_id} | Get a subscriber to a topic
[**get_user_topics**](MessagingTopicsApi.md#get_user_topics) | **GET** /users/{id}/topics | Get all messaging topics for a given user


# **disable_topic_subscriber**
> disable_topic_subscriber(id, user_id, disabled)

Enable or disable messages for a user

Useful for opt-out options on a single topic. Consider multiple topics for multiple opt-out options. <br><br><b>Permissions Needed:</b> TOPICS_ADMIN or self

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

api_instance = KnetikCloudClient::MessagingTopicsApi.new

id = "id_example" # String | The id of the topic

user_id = "user_id_example" # String | The id of the subscriber or 'me'

disabled = KnetikCloudClient::ValueWrapperboolean.new # ValueWrapperboolean | disabled


begin
  #Enable or disable messages for a user
  api_instance.disable_topic_subscriber(id, user_id, disabled)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingTopicsApi->disable_topic_subscriber: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the topic | 
 **user_id** | **String**| The id of the subscriber or &#39;me&#39; | 
 **disabled** | [**ValueWrapperboolean**](ValueWrapperboolean.md)| disabled | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_topic_subscriber**
> TopicSubscriberResource get_topic_subscriber(id, user_id)

Get a subscriber to a topic

<b>Permissions Needed:</b> TOPICS_ADMIN or self

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

api_instance = KnetikCloudClient::MessagingTopicsApi.new

id = "id_example" # String | The id of the topic

user_id = "user_id_example" # String | The id of the subscriber or 'me'


begin
  #Get a subscriber to a topic
  result = api_instance.get_topic_subscriber(id, user_id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingTopicsApi->get_topic_subscriber: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the topic | 
 **user_id** | **String**| The id of the subscriber or &#39;me&#39; | 

### Return type

[**TopicSubscriberResource**](TopicSubscriberResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_topics**
> PageResourceTopicResource get_user_topics(id)

Get all messaging topics for a given user

<b>Permissions Needed:</b> TOPICS_ADMIN or self

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

api_instance = KnetikCloudClient::MessagingTopicsApi.new

id = "id_example" # String | The id of the user or 'me'


begin
  #Get all messaging topics for a given user
  result = api_instance.get_user_topics(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingTopicsApi->get_user_topics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user or &#39;me&#39; | 

### Return type

[**PageResourceTopicResource**](PageResourceTopicResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



