# SwaggerClient::PaymentsGoogleApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**handle_payment_using_post**](PaymentsGoogleApi.md#handle_payment_using_post) | **POST** /payment/provider/google/payments | Mark an invoice paid with Google


# **handle_payment_using_post**
> Integer handle_payment_using_post(opts)

Mark an invoice paid with Google

Mark an invoice paid with Google. Verifies signature from Google and treats the developerPayload field inside the json payload as the id of the invoice to pay. Returns the transaction ID if successful.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsGoogleApi.new

opts = { 
  request: SwaggerClient::GooglePaymentRequest.new # GooglePaymentRequest | The request for paying an invoice through a Google in-app payment
}

begin
  #Mark an invoice paid with Google
  result = api_instance.handle_payment_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsGoogleApi->handle_payment_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**GooglePaymentRequest**](GooglePaymentRequest.md)| The request for paying an invoice through a Google in-app payment | [optional] 

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



