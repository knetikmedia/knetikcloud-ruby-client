# SwaggerClient::PaymentsXsollaApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_token_url_using_post**](PaymentsXsollaApi.md#create_token_url_using_post) | **POST** /payment/provider/xsolla/payment | Create a payment token that should be used to forward the user to Xsolla so they can complete payment
[**receive_notification_using_post**](PaymentsXsollaApi.md#receive_notification_using_post) | **POST** /payment/provider/xsolla/notifications | Receives payment response from Xsolla


# **create_token_url_using_post**
> String create_token_url_using_post(opts)

Create a payment token that should be used to forward the user to Xsolla so they can complete payment

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsXsollaApi.new

opts = { 
  request: SwaggerClient::XsollaPaymentRequest.new # XsollaPaymentRequest | The payment request to be sent to XSolla
}

begin
  #Create a payment token that should be used to forward the user to Xsolla so they can complete payment
  result = api_instance.create_token_url_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsXsollaApi->create_token_url_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**XsollaPaymentRequest**](XsollaPaymentRequest.md)| The payment request to be sent to XSolla | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **receive_notification_using_post**
> receive_notification_using_post

Receives payment response from Xsolla

Only used by XSolla to call back to JSAPI after processing user payment action

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsXsollaApi.new

begin
  #Receives payment response from Xsolla
  api_instance.receive_notification_using_post
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsXsollaApi->receive_notification_using_post: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



