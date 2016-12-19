# SwaggerClient::UtilBatchApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_batch_post_using_post**](UtilBatchApi.md#get_batch_post_using_post) | **POST** /batch | Request to run API call given the method, content type, path url, and body of request


# **get_batch_post_using_post**
> get_batch_post_using_post(opts)

Request to run API call given the method, content type, path url, and body of request

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UtilBatchApi.new

opts = { 
  batch: SwaggerClient::Batch.new # Batch | The batch object
}

begin
  #Request to run API call given the method, content type, path url, and body of request
  api_instance.get_batch_post_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilBatchApi->get_batch_post_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch** | [**Batch**](Batch.md)| The batch object | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



