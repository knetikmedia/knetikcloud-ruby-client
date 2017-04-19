# KnetikCloudClient::UtilBatchApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_batch**](UtilBatchApi.md#send_batch) | **POST** /batch | Request to run API call given the method, content type, path url, and body of request


# **send_batch**
> Array&lt;BatchReturn&gt; send_batch(opts)

Request to run API call given the method, content type, path url, and body of request

### Example
```ruby
# load the gem
require 'knetikcloud_client'

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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



