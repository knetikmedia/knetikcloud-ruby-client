# SwaggerClient::AWSS3Api

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pre_sign_url_using_get**](AWSS3Api.md#pre_sign_url_using_get) | **GET** /amazon/s3/signedposturl | Get a signed S3 URL


# **pre_sign_url_using_get**
> AmazonS3Activity pre_sign_url_using_get(opts)

Get a signed S3 URL

Requires the file name and file content type (i.e., 'video/mpeg')

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AWSS3Api.new

opts = { 
  filename: "filename_example", # String | The file name
  content_type: "content_type_example" # String | The content type
}

begin
  #Get a signed S3 URL
  result = api_instance.pre_sign_url_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AWSS3Api->pre_sign_url_using_get: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



