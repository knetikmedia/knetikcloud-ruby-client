# KnetikCloudClient::ChatApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledge_chat_message**](ChatApi.md#acknowledge_chat_message) | **PUT** /chat/threads/{id}/acknowledge | Acknowledge number of messages in a thread
[**add_chat_message_blacklist**](ChatApi.md#add_chat_message_blacklist) | **POST** /chat/users/{id}/blacklist/{blacklisted_user_id} | Add a user to a chat message blacklist
[**delete_chat_message**](ChatApi.md#delete_chat_message) | **DELETE** /chat/messages/{id} | Delete a message
[**edit_chat_message**](ChatApi.md#edit_chat_message) | **PUT** /chat/messages/{id} | Edit your message
[**get_chat_message**](ChatApi.md#get_chat_message) | **GET** /chat/messages/{id} | Get a message
[**get_chat_message_blacklist**](ChatApi.md#get_chat_message_blacklist) | **GET** /chat/users/{id}/blacklist | Get a list of blocked users for chat messaging
[**get_chat_threads**](ChatApi.md#get_chat_threads) | **GET** /chat/threads | List your threads
[**get_direct_messages**](ChatApi.md#get_direct_messages) | **GET** /chat/users/{id}/messages | List messages with a user
[**get_thread_messages**](ChatApi.md#get_thread_messages) | **GET** /chat/threads/{id}/messages | List messages in a thread
[**get_topic_messages**](ChatApi.md#get_topic_messages) | **GET** /chat/topics/{id}/messages | List messages in a topic
[**remove_chat_blacklist**](ChatApi.md#remove_chat_blacklist) | **DELETE** /chat/users/{id}/blacklist/{blacklisted_user_id} | Remove a user from a blacklist
[**send_chat_message**](ChatApi.md#send_chat_message) | **POST** /chat/messages | Send a message


# **acknowledge_chat_message**
> acknowledge_chat_message(id, opts)

Acknowledge number of messages in a thread

<b>Permissions Needed:</b> owner

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

api_instance = KnetikCloudClient::ChatApi.new

id = "id_example" # String | The thread id

opts = { 
  read_count: 56 # Integer | The amount of messages read
}

begin
  #Acknowledge number of messages in a thread
  api_instance.acknowledge_chat_message(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->acknowledge_chat_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The thread id | 
 **read_count** | **Integer**| The amount of messages read | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_chat_message_blacklist**
> add_chat_message_blacklist(blacklisted_user_id, id)

Add a user to a chat message blacklist

<b>Permissions Needed:</b> CHAT_ADMIN or owner

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

api_instance = KnetikCloudClient::ChatApi.new

blacklisted_user_id = 56 # Integer | The user id to blacklist

id = "id_example" # String | The user id or 'me'


begin
  #Add a user to a chat message blacklist
  api_instance.add_chat_message_blacklist(blacklisted_user_id, id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->add_chat_message_blacklist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blacklisted_user_id** | **Integer**| The user id to blacklist | 
 **id** | **String**| The user id or &#39;me&#39; | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_chat_message**
> delete_chat_message(id)

Delete a message

<b>Permissions Needed:</b> CHAT_ADMIN or owner

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

api_instance = KnetikCloudClient::ChatApi.new

id = "id_example" # String | The message id


begin
  #Delete a message
  api_instance.delete_chat_message(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->delete_chat_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **edit_chat_message**
> edit_chat_message(id, opts)

Edit your message

<b>Permissions Needed:</b> owner

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

api_instance = KnetikCloudClient::ChatApi.new

id = "id_example" # String | The message id

opts = { 
  chat_message_resource: KnetikCloudClient::ChatMessageResource.new # ChatMessageResource | The chat message resource
}

begin
  #Edit your message
  api_instance.edit_chat_message(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->edit_chat_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message id | 
 **chat_message_resource** | [**ChatMessageResource**](ChatMessageResource.md)| The chat message resource | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_chat_message**
> ChatMessageResource get_chat_message(id)

Get a message

<b>Permissions Needed:</b> CHAT_ADMIN or owner

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

api_instance = KnetikCloudClient::ChatApi.new

id = "id_example" # String | The message id


begin
  #Get a message
  result = api_instance.get_chat_message(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->get_chat_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message id | 

### Return type

[**ChatMessageResource**](ChatMessageResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_chat_message_blacklist**
> Array&lt;ChatBlacklistResource&gt; get_chat_message_blacklist(id)

Get a list of blocked users for chat messaging

<b>Permissions Needed:</b> CHAT_ADMIN or owner

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

api_instance = KnetikCloudClient::ChatApi.new

id = "id_example" # String | The user id or 'me'


begin
  #Get a list of blocked users for chat messaging
  result = api_instance.get_chat_message_blacklist(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->get_chat_message_blacklist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The user id or &#39;me&#39; | 

### Return type

[**Array&lt;ChatBlacklistResource&gt;**](ChatBlacklistResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_chat_threads**
> PageResourceChatUserThreadResource get_chat_threads(opts)

List your threads

<b>Permissions Needed:</b> owner

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

api_instance = KnetikCloudClient::ChatApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List your threads
  result = api_instance.get_chat_threads(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->get_chat_threads: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceChatUserThreadResource**](PageResourceChatUserThreadResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_direct_messages**
> PageResourceChatMessageResource get_direct_messages(id, opts)

List messages with a user

<b>Permissions Needed:</b> owner

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

api_instance = KnetikCloudClient::ChatApi.new

id = 56 # Integer | The user id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List messages with a user
  result = api_instance.get_direct_messages(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->get_direct_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The user id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceChatMessageResource**](PageResourceChatMessageResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_thread_messages**
> PageResourceChatMessageResource get_thread_messages(id, opts)

List messages in a thread

<b>Permissions Needed:</b> CHAT_ADMIN or owner

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

api_instance = KnetikCloudClient::ChatApi.new

id = "id_example" # String | The thread id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List messages in a thread
  result = api_instance.get_thread_messages(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->get_thread_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The thread id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceChatMessageResource**](PageResourceChatMessageResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_topic_messages**
> PageResourceChatMessageResource get_topic_messages(id, opts)

List messages in a topic

<b>Permissions Needed:</b> CHAT_ADMIN or owner

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

api_instance = KnetikCloudClient::ChatApi.new

id = "id_example" # String | The topic id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List messages in a topic
  result = api_instance.get_topic_messages(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->get_topic_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The topic id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceChatMessageResource**](PageResourceChatMessageResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_chat_blacklist**
> remove_chat_blacklist(blacklisted_user_id, id)

Remove a user from a blacklist

<b>Permissions Needed:</b> CHAT_ADMIN or owner

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

api_instance = KnetikCloudClient::ChatApi.new

blacklisted_user_id = 56 # Integer | The user id to blacklist

id = "id_example" # String | The user id or 'me'


begin
  #Remove a user from a blacklist
  api_instance.remove_chat_blacklist(blacklisted_user_id, id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->remove_chat_blacklist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blacklisted_user_id** | **Integer**| The user id to blacklist | 
 **id** | **String**| The user id or &#39;me&#39; | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_chat_message**
> ChatMessageResource send_chat_message(opts)

Send a message

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::ChatApi.new

opts = { 
  chat_message_resource: KnetikCloudClient::ChatMessageResource.new # ChatMessageResource | The chat message resource
}

begin
  #Send a message
  result = api_instance.send_chat_message(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ChatApi->send_chat_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chat_message_resource** | [**ChatMessageResource**](ChatMessageResource.md)| The chat message resource | [optional] 

### Return type

[**ChatMessageResource**](ChatMessageResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



