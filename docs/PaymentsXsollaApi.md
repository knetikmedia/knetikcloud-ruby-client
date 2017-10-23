# KnetikCloudClient::PaymentsXsollaApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_xsolla_token_url**](PaymentsXsollaApi.md#create_xsolla_token_url) | **POST** /payment/provider/xsolla/payment | Create a payment token that should be used to forward the user to Xsolla so they can complete payment


# **create_xsolla_token_url**
> String create_xsolla_token_url(opts)

Create a payment token that should be used to forward the user to Xsolla so they can complete payment

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



