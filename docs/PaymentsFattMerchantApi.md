# KnetikCloudClient::PaymentsFattMerchantApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_or_update_fatt_merchant_payment_method**](PaymentsFattMerchantApi.md#create_or_update_fatt_merchant_payment_method) | **PUT** /payment/provider/fattmerchant/payment-methods | Create or update a FattMerchant payment method for a user


# **create_or_update_fatt_merchant_payment_method**
> PaymentMethodResource create_or_update_fatt_merchant_payment_method(opts)

Create or update a FattMerchant payment method for a user

Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsFattMerchantApi.new

opts = { 
  request: KnetikCloudClient::FattMerchantPaymentMethodRequest.new # FattMerchantPaymentMethodRequest | Request containing payment method information for user
}

begin
  #Create or update a FattMerchant payment method for a user
  result = api_instance.create_or_update_fatt_merchant_payment_method(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsFattMerchantApi->create_or_update_fatt_merchant_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FattMerchantPaymentMethodRequest**](FattMerchantPaymentMethodRequest.md)| Request containing payment method information for user | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



