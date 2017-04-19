# KnetikCloudClient::AmazonWebServicesS3Api

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_signed_s3_url**](AmazonWebServicesS3Api.md#get_signed_s3_url) | **GET** /amazon/s3/signedposturl | Get a signed S3 URL


# **get_signed_s3_url**
> AmazonS3Activity get_signed_s3_url(opts)

Get a signed S3 URL

Requires the file name and file content type (i.e., 'video/mpeg')

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AmazonWebServicesS3Api.new

opts = { 
  filename: "filename_example", # String | The file name
  content_type: "content_type_example" # String | The content type
}

begin
  #Get a signed S3 URL
  result = api_instance.get_signed_s3_url(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AmazonWebServicesS3Api->get_signed_s3_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **String**| The file name | [optional] 
 **content_type** | **String**| The content type | [optional] 

### Return type

[**AmazonS3Activity**](AmazonS3Activity.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



