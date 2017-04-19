# KnetikCloudClient::PaymentsXsollaApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_xsolla_token_url**](PaymentsXsollaApi.md#create_xsolla_token_url) | **POST** /payment/provider/xsolla/payment | Create a payment token that should be used to forward the user to Xsolla so they can complete payment
[**receive_xsolla_notification**](PaymentsXsollaApi.md#receive_xsolla_notification) | **POST** /payment/provider/xsolla/notifications | Receives payment response from Xsolla


# **create_xsolla_token_url**
> String create_xsolla_token_url(opts)

Create a payment token that should be used to forward the user to Xsolla so they can complete payment

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::PaymentsXsollaApi.new

opts = { 
  request: KnetikCloudClient::XsollaPaymentRequest.new # XsollaPaymentRequest | The payment request to be sent to XSolla
}

begin
  #Create a payment token that should be used to forward the user to Xsolla so they can complete payment
  result = api_instance.create_xsolla_token_url(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsXsollaApi->create_xsolla_token_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**XsollaPaymentRequest**](XsollaPaymentRequest.md)| The payment request to be sent to XSolla | [optional] 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **receive_xsolla_notification**
> receive_xsolla_notification

Receives payment response from Xsolla

Only used by Xsolla to call back to JSAPI after processing user payment action

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsXsollaApi.new

begin
  #Receives payment response from Xsolla
  api_instance.receive_xsolla_notification
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsXsollaApi->receive_xsolla_notification: #{e}"
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
 - **Accept**: application/json



