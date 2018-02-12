# KnetikCloudClient::MessagingApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compile_message_template**](MessagingApi.md#compile_message_template) | **POST** /messaging/templates/compilations | Compile a message template
[**create_message_template**](MessagingApi.md#create_message_template) | **POST** /messaging/templates | Create a message template
[**delete_message_template**](MessagingApi.md#delete_message_template) | **DELETE** /messaging/templates/{id} | Delete an existing message template
[**get_message_template**](MessagingApi.md#get_message_template) | **GET** /messaging/templates/{id} | Get a single message template
[**get_message_templates**](MessagingApi.md#get_message_templates) | **GET** /messaging/templates | List and search message templates
[**send_message1**](MessagingApi.md#send_message1) | **POST** /messaging/message | Send a message
[**send_raw_email**](MessagingApi.md#send_raw_email) | **POST** /messaging/raw-email | Send a raw email to one or more users
[**send_raw_push**](MessagingApi.md#send_raw_push) | **POST** /messaging/raw-push | Send a raw push notification
[**send_raw_sms**](MessagingApi.md#send_raw_sms) | **POST** /messaging/raw-sms | Send a raw SMS
[**send_templated_email**](MessagingApi.md#send_templated_email) | **POST** /messaging/templated-email | Send a templated email to one or more users
[**send_templated_push**](MessagingApi.md#send_templated_push) | **POST** /messaging/templated-push | Send a templated push notification
[**send_templated_sms**](MessagingApi.md#send_templated_sms) | **POST** /messaging/templated-sms | Send a new templated SMS
[**send_websocket**](MessagingApi.md#send_websocket) | **POST** /messaging/websocket-message | Send a websocket message
[**update_message_template**](MessagingApi.md#update_message_template) | **PUT** /messaging/templates/{id} | Update an existing message template


# **compile_message_template**
> Hash&lt;String, String&gt; compile_message_template(opts)

Compile a message template

Processes a set of input data against the template and returnes the compiled result. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  request: KnetikCloudClient::MessageTemplateBulkRequest.new # MessageTemplateBulkRequest | request
}

begin
  #Compile a message template
  result = api_instance.compile_message_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->compile_message_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**MessageTemplateBulkRequest**](MessageTemplateBulkRequest.md)| request | [optional] 

### Return type

**Hash&lt;String, String&gt;**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_message_template**
> MessageTemplateResource create_message_template(opts)

Create a message template

<b>Permissions Needed:</b> MESSAGING_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  message_template: KnetikCloudClient::MessageTemplateResource.new # MessageTemplateResource | The new template email to be sent
}

begin
  #Create a message template
  result = api_instance.create_message_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->create_message_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_template** | [**MessageTemplateResource**](MessageTemplateResource.md)| The new template email to be sent | [optional] 

### Return type

[**MessageTemplateResource**](MessageTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_message_template**
> delete_message_template(id)

Delete an existing message template

<b>Permissions Needed:</b> ARTICLES_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

id = "id_example" # String | The message_template id


begin
  #Delete an existing message template
  api_instance.delete_message_template(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->delete_message_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message_template id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_message_template**
> MessageTemplateResource get_message_template(id)

Get a single message template

<b>Permissions Needed:</b> ARTICLES_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

id = "id_example" # String | The message_template id


begin
  #Get a single message template
  result = api_instance.get_message_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->get_message_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message_template id | 

### Return type

[**MessageTemplateResource**](MessageTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_message_templates**
> PageResourceMessageTemplateResource get_message_templates(opts)

List and search message templates

Get a list of message templates with optional filtering. <br><br><b>Permissions Needed:</b> ARTICLES_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  filter_tagset: "filter_tagset_example", # String | Filter for message templates with at least one of a specified set of tags (separated by comma)
  filter_tag_intersection: "filter_tag_intersection_example", # String | Filter for message templates with all of a specified set of tags (separated by comma)
  filter_tag_exclusion: "filter_tag_exclusion_example", # String | Filter for message templates with none of a specified set of tags (separated by comma)
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search message templates
  result = api_instance.get_message_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->get_message_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_tagset** | **String**| Filter for message templates with at least one of a specified set of tags (separated by comma) | [optional] 
 **filter_tag_intersection** | **String**| Filter for message templates with all of a specified set of tags (separated by comma) | [optional] 
 **filter_tag_exclusion** | **String**| Filter for message templates with none of a specified set of tags (separated by comma) | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceMessageTemplateResource**](PageResourceMessageTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_message1**
> send_message1(opts)

Send a message

Sends a message with one or more formats to one or more users. Fill in any message formats desired (email, sms, websockets) and each user will recieve all valid formats. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  message_resource: KnetikCloudClient::MessageResource.new # MessageResource | The message to be sent
}

begin
  #Send a message
  api_instance.send_message1(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->send_message1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_resource** | [**MessageResource**](MessageResource.md)| The message to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_raw_email**
> send_raw_email(opts)

Send a raw email to one or more users

<b>Permissions Needed:</b> MESSAGING_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  raw_email_resource: KnetikCloudClient::RawEmailResource.new # RawEmailResource | The new raw email to be sent
}

begin
  #Send a raw email to one or more users
  api_instance.send_raw_email(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->send_raw_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **raw_email_resource** | [**RawEmailResource**](RawEmailResource.md)| The new raw email to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_raw_push**
> send_raw_push(opts)

Send a raw push notification

Sends a raw push notification message to one or more users. User's without registered mobile device for the application will be skipped. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  raw_push_resource: KnetikCloudClient::RawPushResource.new # RawPushResource | The new raw push notification to be sent
}

begin
  #Send a raw push notification
  api_instance.send_raw_push(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->send_raw_push: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **raw_push_resource** | [**RawPushResource**](RawPushResource.md)| The new raw push notification to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_raw_sms**
> send_raw_sms(opts)

Send a raw SMS

Sends a raw SMS text message to one or more users. User's without registered mobile numbers will be skipped. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  raw_sms_resource: KnetikCloudClient::RawSMSResource.new # RawSMSResource | The new raw SMS to be sent
}

begin
  #Send a raw SMS
  api_instance.send_raw_sms(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->send_raw_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **raw_sms_resource** | [**RawSMSResource**](RawSMSResource.md)| The new raw SMS to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_templated_email**
> send_templated_email(opts)

Send a templated email to one or more users

<b>Permissions Needed:</b> MESSAGING_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  message_resource: KnetikCloudClient::TemplateEmailResource.new # TemplateEmailResource | The new template email to be sent
}

begin
  #Send a templated email to one or more users
  api_instance.send_templated_email(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->send_templated_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_resource** | [**TemplateEmailResource**](TemplateEmailResource.md)| The new template email to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_templated_push**
> send_templated_push(opts)

Send a templated push notification

Sends a templated push notification message to one or more users. User's without registered mobile device for the application will be skipped. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  template_push_resource: KnetikCloudClient::TemplatePushResource.new # TemplatePushResource | The new templated push notification to be sent
}

begin
  #Send a templated push notification
  api_instance.send_templated_push(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->send_templated_push: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_push_resource** | [**TemplatePushResource**](TemplatePushResource.md)| The new templated push notification to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_templated_sms**
> send_templated_sms(opts)

Send a new templated SMS

Sends a templated SMS text message to one or more users. User's without registered mobile numbers will be skipped. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  template_sms_resource: KnetikCloudClient::TemplateSMSResource.new # TemplateSMSResource | The new template SMS to be sent
}

begin
  #Send a new templated SMS
  api_instance.send_templated_sms(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->send_templated_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_sms_resource** | [**TemplateSMSResource**](TemplateSMSResource.md)| The new template SMS to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_websocket**
> send_websocket(opts)

Send a websocket message

Sends a websocket message to one or more users. <br><br><b>Permissions Needed:</b> MESSAGING_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

opts = { 
  websocket_resource: KnetikCloudClient::WebsocketMessageResource.new # WebsocketMessageResource | The new websocket message to be sent
}

begin
  #Send a websocket message
  api_instance.send_websocket(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->send_websocket: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **websocket_resource** | [**WebsocketMessageResource**](WebsocketMessageResource.md)| The new websocket message to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_message_template**
> MessageTemplateResource update_message_template(id, opts)

Update an existing message template

<b>Permissions Needed:</b> ARTICLES_ADMIN

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

api_instance = KnetikCloudClient::MessagingApi.new

id = "id_example" # String | The message_template id

opts = { 
  message_template_resource: KnetikCloudClient::MessageTemplateResource.new # MessageTemplateResource | The message template
}

begin
  #Update an existing message template
  result = api_instance.update_message_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MessagingApi->update_message_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message_template id | 
 **message_template_resource** | [**MessageTemplateResource**](MessageTemplateResource.md)| The message template | [optional] 

### Return type

[**MessageTemplateResource**](MessageTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



