# SwaggerClient::PaymentsAppleApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**verify_apple_receipt**](PaymentsAppleApi.md#verify_apple_receipt) | **POST** /payment/provider/apple/receipt | Pay invoice with Apple receipt


# **verify_apple_receipt**
> String verify_apple_receipt(opts)

Pay invoice with Apple receipt

Mark an invoice paid using Apple payment receipt. A receipt will only be accepted once and the details of the transaction must match the invoice, including the product_id matching the sku text of the item in the invoice. Returns the transaction ID if successful.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsAppleApi.new

opts = { 
  request: SwaggerClient::ApplyPaymentRequest.new # ApplyPaymentRequest | The request for paying an invoice through an Apple receipt
}

begin
  #Pay invoice with Apple receipt
  result = api_instance.verify_apple_receipt(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsAppleApi->verify_apple_receipt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ApplyPaymentRequest**](ApplyPaymentRequest.md)| The request for paying an invoice through an Apple receipt | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



