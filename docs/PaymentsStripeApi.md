# SwaggerClient::PaymentsStripeApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer_using_post1**](PaymentsStripeApi.md#create_customer_using_post1) | **POST** /payment/provider/stripe/payment-methods | Create a Stripe payment method for a user
[**pay_invoice_using_post1**](PaymentsStripeApi.md#pay_invoice_using_post1) | **POST** /payment/provider/stripe/payments | Pay with a single use token


# **create_customer_using_post1**
> PaymentMethodResource create_customer_using_post1(opts)

Create a Stripe payment method for a user

Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsStripeApi.new

opts = { 
  request: SwaggerClient::StripeCreatePaymentMethod.new # StripeCreatePaymentMethod | The request to create a Stripe customer with payment info
}

begin
  #Create a Stripe payment method for a user
  result = api_instance.create_customer_using_post1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsStripeApi->create_customer_using_post1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StripeCreatePaymentMethod**](StripeCreatePaymentMethod.md)| The request to create a Stripe customer with payment info | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **pay_invoice_using_post1**
> pay_invoice_using_post1(opts)

Pay with a single use token

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsStripeApi.new

opts = { 
  request: SwaggerClient::StripePaymentRequest.new # StripePaymentRequest | The request to pay an invoice
}

begin
  #Pay with a single use token
  api_instance.pay_invoice_using_post1(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsStripeApi->pay_invoice_using_post1: #{e}"
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



