# KnetikCloudClient::PaymentsStripeApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_stripe_payment_method**](PaymentsStripeApi.md#create_stripe_payment_method) | **POST** /payment/provider/stripe/payment-methods | Create a Stripe payment method for a user
[**pay_stripe_invoice**](PaymentsStripeApi.md#pay_stripe_invoice) | **POST** /payment/provider/stripe/payments | Pay with a single use token


# **create_stripe_payment_method**
> PaymentMethodResource create_stripe_payment_method(opts)

Create a Stripe payment method for a user

Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::PaymentsStripeApi.new

opts = { 
  request: KnetikCloudClient::StripeCreatePaymentMethod.new # StripeCreatePaymentMethod | The request to create a Stripe customer with payment info
}

begin
  #Create a Stripe payment method for a user
  result = api_instance.create_stripe_payment_method(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsStripeApi->create_stripe_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StripeCreatePaymentMethod**](StripeCreatePaymentMethod.md)| The request to create a Stripe customer with payment info | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **pay_stripe_invoice**
> pay_stripe_invoice(opts)

Pay with a single use token

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsStripeApi.new

opts = { 
  request: KnetikCloudClient::StripePaymentRequest.new # StripePaymentRequest | The request to pay an invoice
}

begin
  #Pay with a single use token
  api_instance.pay_stripe_invoice(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsStripeApi->pay_stripe_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StripePaymentRequest**](StripePaymentRequest.md)| The request to pay an invoice | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



