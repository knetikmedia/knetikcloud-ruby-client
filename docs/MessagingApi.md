# KnetikCloudClient::MessagingApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_raw_email**](MessagingApi.md#send_raw_email) | **POST** /messaging/raw-email | Send a raw email to one or more users
[**send_raw_sms**](MessagingApi.md#send_raw_sms) | **POST** /messaging/raw-sms | Send a raw SMS
[**send_templated_email**](MessagingApi.md#send_templated_email) | **POST** /messaging/templated-email | Send a templated email to one or more users
[**send_templated_sms**](MessagingApi.md#send_templated_sms) | **POST** /messaging/templated-sms | Send a new templated SMS


# **send_raw_email**
> send_raw_email(opts)

Send a raw email to one or more users

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_raw_sms**
> send_raw_sms(opts)

Send a raw SMS

Sends a raw SMS text message to one or more users. User's without registered mobile numbers will be skipped.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_templated_email**
> send_templated_email(opts)

Send a templated email to one or more users

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_templated_sms**
> send_templated_sms(opts)

Send a new templated SMS

Sends a templated SMS text message to one or more users. User's without registered mobile numbers will be skipped.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



