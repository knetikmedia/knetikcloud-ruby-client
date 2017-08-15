# KnetikCloudClient::PaymentsOptimalApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**silent_post_optimal**](PaymentsOptimalApi.md#silent_post_optimal) | **POST** /payment/provider/optimal/silent | Initiate silent post with Optimal


# **silent_post_optimal**
> String silent_post_optimal(opts)

Initiate silent post with Optimal

Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsOptimalApi.new

opts = { 
  request: KnetikCloudClient::OptimalPaymentRequest.new # OptimalPaymentRequest | The payment request to initiate
}

begin
  #Initiate silent post with Optimal
  result = api_instance.silent_post_optimal(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsOptimalApi->silent_post_optimal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**OptimalPaymentRequest**](OptimalPaymentRequest.md)| The payment request to initiate | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



