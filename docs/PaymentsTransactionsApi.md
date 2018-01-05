# KnetikCloudClient::PaymentsTransactionsApi

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transaction**](PaymentsTransactionsApi.md#get_transaction) | **GET** /transactions/{id} | Get the details for a single transaction
[**get_transactions**](PaymentsTransactionsApi.md#get_transactions) | **GET** /transactions | List and search transactions
[**refund_transaction**](PaymentsTransactionsApi.md#refund_transaction) | **POST** /transactions/{id}/refunds | Refund a payment transaction, in full or in part


# **get_transaction**
> TransactionResource get_transaction(id)

Get the details for a single transaction

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

api_instance = KnetikCloudClient::PaymentsTransactionsApi.new

id = 56 # Integer | id


begin
  #Get the details for a single transaction
  result = api_instance.get_transaction(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsTransactionsApi->get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id | 

### Return type

[**TransactionResource**](TransactionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transactions**
> PageResourceTransactionResource get_transactions(opts)

List and search transactions

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

api_instance = KnetikCloudClient::PaymentsTransactionsApi.new

opts = { 
  filter_invoice: 56, # Integer | Filter for transactions from a specific invoice
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search transactions
  result = api_instance.get_transactions(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsTransactionsApi->get_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_invoice** | **Integer**| Filter for transactions from a specific invoice | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTransactionResource**](PageResourceTransactionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **refund_transaction**
> RefundResource refund_transaction(id, opts)

Refund a payment transaction, in full or in part

Will not allow for refunding more than the full amount even with multiple partial refunds. Money is refunded to the payment method used to make the original payment. Payment method must support refunds.

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

api_instance = KnetikCloudClient::PaymentsTransactionsApi.new

id = 56 # Integer | The id of the transaction to refund

opts = { 
  request: KnetikCloudClient::RefundRequest.new # RefundRequest | Request containing refund details
}

begin
  #Refund a payment transaction, in full or in part
  result = api_instance.refund_transaction(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsTransactionsApi->refund_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the transaction to refund | 
 **request** | [**RefundRequest**](RefundRequest.md)| Request containing refund details | [optional] 

### Return type

[**RefundResource**](RefundResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



