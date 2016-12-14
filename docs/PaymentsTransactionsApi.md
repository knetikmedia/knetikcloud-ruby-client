# SwaggerClient::PaymentsTransactionsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transaction_using_get**](PaymentsTransactionsApi.md#get_transaction_using_get) | **GET** /transactions/{id} | Get the details for a single transaction
[**get_transactions_using_get**](PaymentsTransactionsApi.md#get_transactions_using_get) | **GET** /transactions | List and search transactions
[**refund_transaction_using_post**](PaymentsTransactionsApi.md#refund_transaction_using_post) | **POST** /transactions/{id}/refunds | Refund a payment transaction, in full or in part


# **get_transaction_using_get**
> TransactionResource get_transaction_using_get(id)

Get the details for a single transaction

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsTransactionsApi.new

id = 56 # Integer | id


begin
  #Get the details for a single transaction
  result = api_instance.get_transaction_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsTransactionsApi->get_transaction_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id | 

### Return type

[**TransactionResource**](TransactionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_transactions_using_get**
> PageTransactionResource get_transactions_using_get(opts)

List and search transactions

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsTransactionsApi.new

opts = { 
  filter_invoice: 56, # Integer | Filter for transactions from a specific invoice
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search transactions
  result = api_instance.get_transactions_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsTransactionsApi->get_transactions_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_invoice** | **Integer**| Filter for transactions from a specific invoice | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageTransactionResource**](PageTransactionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **refund_transaction_using_post**
> RefundResource refund_transaction_using_post(id, opts)

Refund a payment transaction, in full or in part

Will not allow for refunding more than the full amount even with multiple partial refunds. Money is refunded to the payment method used to make the original payment. Payment method must support refunds.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsTransactionsApi.new

id = 56 # Integer | The id of the transaction to refund

opts = { 
  request: SwaggerClient::RefundRequest.new # RefundRequest | Request containing refund details
}

begin
  #Refund a payment transaction, in full or in part
  result = api_instance.refund_transaction_using_post(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsTransactionsApi->refund_transaction_using_post: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



