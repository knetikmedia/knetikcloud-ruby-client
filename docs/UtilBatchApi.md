# KnetikCloudClient::UtilBatchApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_batch**](UtilBatchApi.md#get_batch) | **GET** /batch/{token} | Get batch result with token
[**send_batch**](UtilBatchApi.md#send_batch) | **POST** /batch | Request to run API call given the method, content type, path url, and body of request


# **get_batch**
> Array&lt;BatchReturn&gt; get_batch(token)

Get batch result with token

Tokens expire in 24 hours. <br><br><b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::UtilBatchApi.new

token = "token_example" # String | token


begin
  #Get batch result with token
  result = api_instance.get_batch(token)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UtilBatchApi->get_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| token | 

### Return type

[**Array&lt;BatchReturn&gt;**](BatchReturn.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_batch**
> Array&lt;BatchReturn&gt; send_batch(opts)

Request to run API call given the method, content type, path url, and body of request

Should the request take longer than one of the alloted timeout parameters, a token will be returned instead, which can be used on the token endpoint in this service. <br><br><b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::UtilBatchApi.new

opts = { 
  batch: KnetikCloudClient::Batch.new # Batch | The batch object
}

begin
  #Request to run API call given the method, content type, path url, and body of request
  result = api_instance.send_batch(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UtilBatchApi->send_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch** | [**Batch**](Batch.md)| The batch object | [optional] 

### Return type

[**Array&lt;BatchReturn&gt;**](BatchReturn.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



