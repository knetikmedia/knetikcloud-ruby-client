# SwaggerClient::PaymentsOptimalApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**silent_post_using_post**](PaymentsOptimalApi.md#silent_post_using_post) | **POST** /payment/provider/optimal/silent | Initiate silent post with Optimal


# **silent_post_using_post**
> String silent_post_using_post(opts)

Initiate silent post with Optimal

Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsOptimalApi.new

opts = { 
  request: SwaggerClient::OptimalPaymentRequest.new # OptimalPaymentRequest | The payment request to initiate
}

begin
  #Initiate silent post with Optimal
  result = api_instance.silent_post_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsOptimalApi->silent_post_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**OptimalPaymentRequest**](OptimalPaymentRequest.md)| The payment request to initiate | [optional] 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


