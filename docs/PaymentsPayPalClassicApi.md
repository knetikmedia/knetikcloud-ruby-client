# KnetikCloudClient::PaymentsPayPalClassicApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pay_pal_billing_agreement_url**](PaymentsPayPalClassicApi.md#create_pay_pal_billing_agreement_url) | **POST** /payment/provider/paypal/classic/agreements/start | Create a PayPal Classic billing agreement for the user
[**create_pay_pal_express_checkout**](PaymentsPayPalClassicApi.md#create_pay_pal_express_checkout) | **POST** /payment/provider/paypal/classic/checkout/start | Create a payment token for PayPal express checkout
[**finalize_pay_pal_billing_agreement**](PaymentsPayPalClassicApi.md#finalize_pay_pal_billing_agreement) | **POST** /payment/provider/paypal/classic/agreements/finish | Finalizes a billing agreement after the user has accepted through PayPal
[**finalize_pay_pal_checkout**](PaymentsPayPalClassicApi.md#finalize_pay_pal_checkout) | **POST** /payment/provider/paypal/classic/checkout/finish | Finalizes a payment after the user has completed checkout with PayPal


# **create_pay_pal_billing_agreement_url**
> String create_pay_pal_billing_agreement_url(opts)

Create a PayPal Classic billing agreement for the user

Returns the token that should be used to forward the user to PayPal so they can accept the agreement. <br><br><b>Permissions Needed:</b> PAYPAL_CLASSIC_ADMIN or owner

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

api_instance = KnetikCloudClient::PaymentsPayPalClassicApi.new

opts = { 
  request: KnetikCloudClient::CreateBillingAgreementRequest.new # CreateBillingAgreementRequest | The request to create a PayPal billing agreement
}

begin
  #Create a PayPal Classic billing agreement for the user
  result = api_instance.create_pay_pal_billing_agreement_url(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsPayPalClassicApi->create_pay_pal_billing_agreement_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateBillingAgreementRequest**](CreateBillingAgreementRequest.md)| The request to create a PayPal billing agreement | [optional] 

### Return type

**String**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_pay_pal_express_checkout**
> String create_pay_pal_express_checkout(opts)

Create a payment token for PayPal express checkout

Returns the token that should be used to forward the user to PayPal so they can complete the checkout. <br><br><b>Permissions Needed:</b> PAYPAL_CLASSIC_ADMIN or owner

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

api_instance = KnetikCloudClient::PaymentsPayPalClassicApi.new

opts = { 
  request: KnetikCloudClient::CreatePayPalPaymentRequest.new # CreatePayPalPaymentRequest | The request to create a PayPal payment token
}

begin
  #Create a payment token for PayPal express checkout
  result = api_instance.create_pay_pal_express_checkout(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsPayPalClassicApi->create_pay_pal_express_checkout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreatePayPalPaymentRequest**](CreatePayPalPaymentRequest.md)| The request to create a PayPal payment token | [optional] 

### Return type

**String**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finalize_pay_pal_billing_agreement**
> Integer finalize_pay_pal_billing_agreement(opts)

Finalizes a billing agreement after the user has accepted through PayPal

Returns the ID of the new payment method created for the user for the billing agreement. <br><br><b>Permissions Needed:</b> PAYPAL_CLASSIC_ADMIN or owner

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

api_instance = KnetikCloudClient::PaymentsPayPalClassicApi.new

opts = { 
  request: KnetikCloudClient::FinalizeBillingAgreementRequest.new # FinalizeBillingAgreementRequest | The request to finalize a PayPal billing agreement
}

begin
  #Finalizes a billing agreement after the user has accepted through PayPal
  result = api_instance.finalize_pay_pal_billing_agreement(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsPayPalClassicApi->finalize_pay_pal_billing_agreement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FinalizeBillingAgreementRequest**](FinalizeBillingAgreementRequest.md)| The request to finalize a PayPal billing agreement | [optional] 

### Return type

**Integer**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finalize_pay_pal_checkout**
> finalize_pay_pal_checkout(opts)

Finalizes a payment after the user has completed checkout with PayPal

The invoice will be marked paid/failed by asynchronous IPN callback. <br><br><b>Permissions Needed:</b> PAYPAL_CLASSIC_ADMIN or owner

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

api_instance = KnetikCloudClient::PaymentsPayPalClassicApi.new

opts = { 
  request: KnetikCloudClient::FinalizePayPalPaymentRequest.new # FinalizePayPalPaymentRequest | The request to finalize the payment
}

begin
  #Finalizes a payment after the user has completed checkout with PayPal
  api_instance.finalize_pay_pal_checkout(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsPayPalClassicApi->finalize_pay_pal_checkout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FinalizePayPalPaymentRequest**](FinalizePayPalPaymentRequest.md)| The request to finalize the payment | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



