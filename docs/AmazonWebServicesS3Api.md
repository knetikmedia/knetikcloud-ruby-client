# KnetikCloudClient::AmazonWebServicesS3Api

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_download_url**](AmazonWebServicesS3Api.md#get_download_url) | **GET** /amazon/s3/downloadurl | Get a temporary signed S3 URL for download
[**get_signed_s3_url**](AmazonWebServicesS3Api.md#get_signed_s3_url) | **GET** /amazon/s3/signedposturl | Get a signed S3 URL for upload


# **get_download_url**
> String get_download_url(opts)

Get a temporary signed S3 URL for download

To give access to files in your own S3 account, you will need to grant KnetikcCloud access to the file by adjusting your bucket policy accordingly. See S3 documentation for details. <br><br><b>Permissions Needed:</b> S3_ADMIN

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

api_instance = KnetikCloudClient::AmazonWebServicesS3Api.new

opts = { 
  bucket: "bucket_example", # String | S3 bucket name
  path: "path_example", # String | The path to the file relative to the bucket (the s3 object key)
  expiration: 60 # Integer | The number of seconds this URL will be valid. Default to 60
}

begin
  #Get a temporary signed S3 URL for download
  result = api_instance.get_download_url(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AmazonWebServicesS3Api->get_download_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **String**| S3 bucket name | [optional] 
 **path** | **String**| The path to the file relative to the bucket (the s3 object key) | [optional] 
 **expiration** | **Integer**| The number of seconds this URL will be valid. Default to 60 | [optional] [default to 60]

### Return type

**String**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_signed_s3_url**
> AmazonS3Activity get_signed_s3_url(opts)

Get a signed S3 URL for upload

Requires the file name and file content type (i.e., 'video/mpeg'). Make a PUT to the resulting url to upload the file and use the cdn_url to retrieve it after. <br><br><b>Permissions Needed:</b> S3_USER or S3_ADMIN

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

api_instance = KnetikCloudClient::AmazonWebServicesS3Api.new

opts = { 
  filename: "filename_example", # String | The file name
  content_type: "content_type_example" # String | The content type
}

begin
  #Get a signed S3 URL for upload
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



