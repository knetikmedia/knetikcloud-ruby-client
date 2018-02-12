# KnetikCloudClient::NotificationsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_notification_type**](NotificationsApi.md#create_notification_type) | **POST** /notifications/types | Create a notification type
[**delete_notification_type**](NotificationsApi.md#delete_notification_type) | **DELETE** /notifications/types/{id} | Delete a notification type
[**get_notification_type**](NotificationsApi.md#get_notification_type) | **GET** /notifications/types/{id} | Get a single notification type
[**get_notification_types**](NotificationsApi.md#get_notification_types) | **GET** /notifications/types | List and search notification types
[**get_user_notification_info**](NotificationsApi.md#get_user_notification_info) | **GET** /users/{user_id}/notifications/types/{type_id} | View a user&#39;s notification settings for a type
[**get_user_notification_info_list**](NotificationsApi.md#get_user_notification_info_list) | **GET** /users/{user_id}/notifications/types | View a user&#39;s notification settings
[**get_user_notifications**](NotificationsApi.md#get_user_notifications) | **GET** /users/{id}/notifications | Get notifications
[**send_notification**](NotificationsApi.md#send_notification) | **POST** /notifications | Send a notification
[**set_user_notification_status**](NotificationsApi.md#set_user_notification_status) | **PUT** /users/{user_id}/notifications/{notification_id}/status | Set notification status
[**silence_direct_notifications**](NotificationsApi.md#silence_direct_notifications) | **PUT** /users/{user_id}/notifications/types/{type_id}/silenced | Enable or disable direct notifications for a user
[**update_notification_type**](NotificationsApi.md#update_notification_type) | **PUT** /notifications/types/{id} | Update a notificationType


# **create_notification_type**
> NotificationTypeResource create_notification_type(opts)

Create a notification type

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

api_instance = KnetikCloudClient::NotificationsApi.new

opts = { 
  notification_type: KnetikCloudClient::NotificationTypeResource.new # NotificationTypeResource | notificationType
}

begin
  #Create a notification type
  result = api_instance.create_notification_type(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->create_notification_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_type** | [**NotificationTypeResource**](NotificationTypeResource.md)| notificationType | [optional] 

### Return type

[**NotificationTypeResource**](NotificationTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_notification_type**
> delete_notification_type(id)

Delete a notification type

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

api_instance = KnetikCloudClient::NotificationsApi.new

id = "id_example" # String | id


begin
  #Delete a notification type
  api_instance.delete_notification_type(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->delete_notification_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_notification_type**
> NotificationTypeResource get_notification_type(id)

Get a single notification type

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

api_instance = KnetikCloudClient::NotificationsApi.new

id = "id_example" # String | id


begin
  #Get a single notification type
  result = api_instance.get_notification_type(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->get_notification_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id | 

### Return type

[**NotificationTypeResource**](NotificationTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_notification_types**
> PageResourceNotificationTypeResource get_notification_types(opts)

List and search notification types

Get a list of notification type with optional filtering

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

api_instance = KnetikCloudClient::NotificationsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search notification types
  result = api_instance.get_notification_types(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->get_notification_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceNotificationTypeResource**](PageResourceNotificationTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_notification_info**
> NotificationUserTypeResource get_user_notification_info(type_id, user_id)

View a user's notification settings for a type

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

api_instance = KnetikCloudClient::NotificationsApi.new

type_id = "type_id_example" # String | The id of the topic

user_id = "user_id_example" # String | The id of the subscriber or 'me'


begin
  #View a user's notification settings for a type
  result = api_instance.get_user_notification_info(type_id, user_id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->get_user_notification_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **String**| The id of the topic | 
 **user_id** | **String**| The id of the subscriber or &#39;me&#39; | 

### Return type

[**NotificationUserTypeResource**](NotificationUserTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_notification_info_list**
> PageResourceNotificationUserTypeResource get_user_notification_info_list(user_id, opts)

View a user's notification settings

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

api_instance = KnetikCloudClient::NotificationsApi.new

user_id = "user_id_example" # String | The id of the subscriber or 'me'

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #View a user's notification settings
  result = api_instance.get_user_notification_info_list(user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->get_user_notification_info_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the subscriber or &#39;me&#39; | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceNotificationUserTypeResource**](PageResourceNotificationUserTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_notifications**
> PageResourceUserNotificationResource get_user_notifications(id, opts)

Get notifications

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

api_instance = KnetikCloudClient::NotificationsApi.new

id = "id_example" # String | The id of the user or 'me'

opts = { 
  filter_status: "filter_status_example", # String | filter for notifications with a given status
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get notifications
  result = api_instance.get_user_notifications(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->get_user_notifications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user or &#39;me&#39; | 
 **filter_status** | **String**| filter for notifications with a given status | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceUserNotificationResource**](PageResourceUserNotificationResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_notification**
> NotificationResource send_notification(opts)

Send a notification

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

api_instance = KnetikCloudClient::NotificationsApi.new

opts = { 
  notification: KnetikCloudClient::NotificationResource.new # NotificationResource | notification
}

begin
  #Send a notification
  result = api_instance.send_notification(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->send_notification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification** | [**NotificationResource**](NotificationResource.md)| notification | [optional] 

### Return type

[**NotificationResource**](NotificationResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_user_notification_status**
> set_user_notification_status(user_id, notification_id, opts)

Set notification status

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

api_instance = KnetikCloudClient::NotificationsApi.new

user_id = "user_id_example" # String | The id of the user or 'me'

notification_id = "notification_id_example" # String | The id of the notification

opts = { 
  notification: KnetikCloudClient::ValueWrapperstring.new # ValueWrapperstring | status
}

begin
  #Set notification status
  api_instance.set_user_notification_status(user_id, notification_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->set_user_notification_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; | 
 **notification_id** | **String**| The id of the notification | 
 **notification** | [**ValueWrapperstring**](ValueWrapperstring.md)| status | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **silence_direct_notifications**
> silence_direct_notifications(type_id, user_id, silenced)

Enable or disable direct notifications for a user

Allows enabling or disabling messages for a given notification type when sent direct to the user. Notifications can still be retrieved by endpoint. For notifications broadcased to a topic, see the topic service to disable messages for the user there.

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

api_instance = KnetikCloudClient::NotificationsApi.new

type_id = "type_id_example" # String | The id of the topic

user_id = "user_id_example" # String | The id of the subscriber or 'me'

silenced = KnetikCloudClient::ValueWrapperboolean.new # ValueWrapperboolean | silenced


begin
  #Enable or disable direct notifications for a user
  api_instance.silence_direct_notifications(type_id, user_id, silenced)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->silence_direct_notifications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **String**| The id of the topic | 
 **user_id** | **String**| The id of the subscriber or &#39;me&#39; | 
 **silenced** | [**ValueWrapperboolean**](ValueWrapperboolean.md)| silenced | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_notification_type**
> NotificationTypeResource update_notification_type(id, opts)

Update a notificationType

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

api_instance = KnetikCloudClient::NotificationsApi.new

id = "id_example" # String | id

opts = { 
  notification_type: KnetikCloudClient::NotificationTypeResource.new # NotificationTypeResource | notificationType
}

begin
  #Update a notificationType
  result = api_instance.update_notification_type(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling NotificationsApi->update_notification_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id | 
 **notification_type** | [**NotificationTypeResource**](NotificationTypeResource.md)| notificationType | [optional] 

### Return type

[**NotificationTypeResource**](NotificationTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



