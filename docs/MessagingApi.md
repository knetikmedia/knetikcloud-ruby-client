# SwaggerClient::MessagingApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_raw_email_using_post**](MessagingApi.md#send_raw_email_using_post) | **POST** /messaging/raw-email | Send a raw email to one or more users
[**send_raw_sms_using_post**](MessagingApi.md#send_raw_sms_using_post) | **POST** /messaging/raw-sms | Send a raw SMS
[**send_raw_sms_using_post1**](MessagingApi.md#send_raw_sms_using_post1) | **POST** /messaging/templated-sms | Send a new templated SMS
[**send_template_email_using_post**](MessagingApi.md#send_template_email_using_post) | **POST** /messaging/templated-email | Send a templated email to one or more users


# **send_raw_email_using_post**
> send_raw_email_using_post(opts)

Send a raw email to one or more users

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MessagingApi.new

opts = { 
  raw_email_resource: SwaggerClient::RawEmailResource.new # RawEmailResource | The new raw email to be sent
}

begin
  #Send a raw email to one or more users
  api_instance.send_raw_email_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MessagingApi->send_raw_email_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **raw_email_resource** | [**RawEmailResource**](RawEmailResource.md)| The new raw email to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_raw_sms_using_post**
> send_raw_sms_using_post(opts)

Send a raw SMS

Sends a raw SMS text message to one or more users. User's without registered mobile numbers will be skipped.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MessagingApi.new

opts = { 
  raw_sms_resource: SwaggerClient::RawSMSResource.new # RawSMSResource | The new raw SMS to be sent
}

begin
  #Send a raw SMS
  api_instance.send_raw_sms_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MessagingApi->send_raw_sms_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **raw_sms_resource** | [**RawSMSResource**](RawSMSResource.md)| The new raw SMS to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_raw_sms_using_post1**
> send_raw_sms_using_post1(opts)

Send a new templated SMS

Sends a templated SMS text message to one or more users. User's without registered mobile numbers will be skipped.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MessagingApi.new

opts = { 
  template_sms_resource: SwaggerClient::TemplateSMSResource.new # TemplateSMSResource | The new template SMS to be sent
}

begin
  #Send a new templated SMS
  api_instance.send_raw_sms_using_post1(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MessagingApi->send_raw_sms_using_post1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_sms_resource** | [**TemplateSMSResource**](TemplateSMSResource.md)| The new template SMS to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_template_email_using_post**
> send_template_email_using_post(opts)

Send a templated email to one or more users

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MessagingApi.new

opts = { 
  message_resource: SwaggerClient::TemplateEmailResource.new # TemplateEmailResource | The new template email to be sent
}

begin
  #Send a templated email to one or more users
  api_instance.send_template_email_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MessagingApi->send_template_email_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_resource** | [**TemplateEmailResource**](TemplateEmailResource.md)| The new template email to be sent | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


