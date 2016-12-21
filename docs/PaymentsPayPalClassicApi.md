# SwaggerClient::PaymentsPayPalClassicApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_billing_agreement_url_using_post**](PaymentsPayPalClassicApi.md#create_billing_agreement_url_using_post) | **POST** /payment/provider/paypal/classic/agreements/start | Create a PayPal Classic billing agreement for the user
[**express_checkout_using_post**](PaymentsPayPalClassicApi.md#express_checkout_using_post) | **POST** /payment/provider/paypal/classic/checkout/start | Create a payment token for PayPal express checkout
[**finalize_billing_agreement_using_post**](PaymentsPayPalClassicApi.md#finalize_billing_agreement_using_post) | **POST** /payment/provider/paypal/classic/agreements/finish | Finalizes a billing agreement after the user has accepted through PayPal
[**finalize_checkout_using_post**](PaymentsPayPalClassicApi.md#finalize_checkout_using_post) | **POST** /payment/provider/paypal/classic/checkout/finish | Finalizes a payment after the user has completed checkout with PayPal


# **create_billing_agreement_url_using_post**
> String create_billing_agreement_url_using_post(opts)

Create a PayPal Classic billing agreement for the user

Returns the token that should be used to forward the user to PayPal so they can accept the agreement.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsPayPalClassicApi.new

opts = { 
  request: SwaggerClient::CreateBillingAgreementRequest.new # CreateBillingAgreementRequest | The request to create a PayPal billing agreement
}

begin
  #Create a PayPal Classic billing agreement for the user
  result = api_instance.create_billing_agreement_url_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsPayPalClassicApi->create_billing_agreement_url_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateBillingAgreementRequest**](CreateBillingAgreementRequest.md)| The request to create a PayPal billing agreement | [optional] 

### Return type

**String**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **express_checkout_using_post**
> String express_checkout_using_post(opts)

Create a payment token for PayPal express checkout

Returns the token that should be used to forward the user to PayPal so they can complete the checkout.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsPayPalClassicApi.new

opts = { 
  request: SwaggerClient::CreatePayPalPaymentRequest.new # CreatePayPalPaymentRequest | The request to create a PayPal payment token
}

begin
  #Create a payment token for PayPal express checkout
  result = api_instance.express_checkout_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsPayPalClassicApi->express_checkout_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreatePayPalPaymentRequest**](CreatePayPalPaymentRequest.md)| The request to create a PayPal payment token | [optional] 

### Return type

**String**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finalize_billing_agreement_using_post**
> Integer finalize_billing_agreement_using_post(opts)

Finalizes a billing agreement after the user has accepted through PayPal

Returns the ID of the new payment method created for the user for the billing agreement.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsPayPalClassicApi.new

opts = { 
  request: SwaggerClient::FinalizeBillingAgreementRequest.new # FinalizeBillingAgreementRequest | The request to finalize a PayPal billing agreement
}

begin
  #Finalizes a billing agreement after the user has accepted through PayPal
  result = api_instance.finalize_billing_agreement_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsPayPalClassicApi->finalize_billing_agreement_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FinalizeBillingAgreementRequest**](FinalizeBillingAgreementRequest.md)| The request to finalize a PayPal billing agreement | [optional] 

### Return type

**Integer**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finalize_checkout_using_post**
> finalize_checkout_using_post(opts)

Finalizes a payment after the user has completed checkout with PayPal

The invoice will be marked paid/failed by asynchronous IPN callback.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsPayPalClassicApi.new

opts = { 
  request: SwaggerClient::FinalizePayPalPaymentRequest.new # FinalizePayPalPaymentRequest | The request to finalize the payment
}

begin
  #Finalizes a payment after the user has completed checkout with PayPal
  api_instance.finalize_checkout_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsPayPalClassicApi->finalize_checkout_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FinalizePayPalPaymentRequest**](FinalizePayPalPaymentRequest.md)| The request to finalize the payment | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



