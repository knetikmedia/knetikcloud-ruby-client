# KnetikCloudClient::PaymentsGoogleApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**handle_google_payment**](PaymentsGoogleApi.md#handle_google_payment) | **POST** /payment/provider/google/payments | Mark an invoice paid with Google


# **handle_google_payment**
> Integer handle_google_payment(opts)

Mark an invoice paid with Google

Mark an invoice paid with Google. Verifies signature from Google and treats the developerPayload field inside the json payload as the id of the invoice to pay. Returns the transaction ID if successful.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsGoogleApi.new

opts = { 
  request: KnetikCloudClient::GooglePaymentRequest.new # GooglePaymentRequest | The request for paying an invoice through a Google in-app payment
}

begin
  #Mark an invoice paid with Google
  result = api_instance.handle_google_payment(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsGoogleApi->handle_google_payment: #{e}"
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
 - **Accept**: application/json



