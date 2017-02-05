# SwaggerClient::PaymentsAppleApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**verify_receipt_using_post**](PaymentsAppleApi.md#verify_receipt_using_post) | **POST** /payment/provider/apple/receipt | Pay invoice with Apple receipt


# **verify_receipt_using_post**
> String verify_receipt_using_post(opts)

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
  result = api_instance.verify_receipt_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsAppleApi->verify_receipt_using_post: #{e}"
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



