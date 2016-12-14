# SwaggerClient::PaymentsWalletsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_wallet_totals_using_get**](PaymentsWalletsApi.md#get_wallet_totals_using_get) | **GET** /wallets/totals | Retrieves a summation of wallet balances by currency code
[**get_wallet_using_get**](PaymentsWalletsApi.md#get_wallet_using_get) | **GET** /users/{user_id}/wallets/{currency_code} | Returns the user&#39;s wallet for the given currency code
[**get_wallets_using_get**](PaymentsWalletsApi.md#get_wallets_using_get) | **GET** /users/{user_id}/wallets | List all of a user&#39;s wallets
[**get_wallets_using_get1**](PaymentsWalletsApi.md#get_wallets_using_get1) | **GET** /wallets | Retrieve a list of wallets across the system
[**transaction_history_using_get**](PaymentsWalletsApi.md#transaction_history_using_get) | **GET** /wallets/transactions | Retrieve wallet transactions across the system
[**update_balance_using_put**](PaymentsWalletsApi.md#update_balance_using_put) | **PUT** /users/{user_id}/wallets/{currency_code}/balance | Updates the balance for a user&#39;s wallet
[**user_transaction_history_using_get**](PaymentsWalletsApi.md#user_transaction_history_using_get) | **GET** /users/{user_id}/wallets/{currency_code}/transactions | Retrieve a user&#39;s wallet transactions


# **get_wallet_totals_using_get**
> PageWalletTotalResponse get_wallet_totals_using_get

Retrieves a summation of wallet balances by currency code

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsWalletsApi.new

begin
  #Retrieves a summation of wallet balances by currency code
  result = api_instance.get_wallet_totals_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->get_wallet_totals_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageWalletTotalResponse**](PageWalletTotalResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_wallet_using_get**
> SimpleWallet get_wallet_using_get(user_id, currency_code)

Returns the user's wallet for the given currency code

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsWalletsApi.new

user_id = 56 # Integer | The ID of the user for whom wallet is being retrieved

currency_code = "currency_code_example" # String | Currency code of the user's wallet


begin
  #Returns the user's wallet for the given currency code
  result = api_instance.get_wallet_using_get(user_id, currency_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->get_wallet_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The ID of the user for whom wallet is being retrieved | 
 **currency_code** | **String**| Currency code of the user&#39;s wallet | 

### Return type

[**SimpleWallet**](SimpleWallet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_wallets_using_get**
> Array&lt;SimpleWallet&gt; get_wallets_using_get(user_id)

List all of a user's wallets

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsWalletsApi.new

user_id = 56 # Integer | The ID of the user for whom wallets are being retrieved


begin
  #List all of a user's wallets
  result = api_instance.get_wallets_using_get(user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->get_wallets_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The ID of the user for whom wallets are being retrieved | 

### Return type

[**Array&lt;SimpleWallet&gt;**](SimpleWallet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_wallets_using_get1**
> PageSimpleWallet get_wallets_using_get1(opts)

Retrieve a list of wallets across the system

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsWalletsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieve a list of wallets across the system
  result = api_instance.get_wallets_using_get1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->get_wallets_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageSimpleWallet**](PageSimpleWallet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **transaction_history_using_get**
> PageWalletTransactionResource transaction_history_using_get(opts)

Retrieve wallet transactions across the system

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsWalletsApi.new

opts = { 
  filter_invoice: 56, # Integer | Filter for transactions from a specific invoice
  filter_type: "filter_type_example", # String | Filter for transactions with specified type
  filter_max_date: 789, # Integer | Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
  filter_min_date: 789, # Integer | Filter for transactions from no later than the specified date as a unix timestamp in seconds
  filter_sign: "filter_sign_example", # String | Filter for transactions with amount with the given sign
  filter_user_id: 56, # Integer | Filter for transactions for specific userId
  filter_username: "filter_username_example", # String | Filter for transactions for specific username that start with the given string
  filter_details: "filter_details_example", # String | Filter for transactions for specific details that start with the given string
  filter_currency_code: "filter_currency_code_example", # String | Filter for transactions for specific currency code
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieve wallet transactions across the system
  result = api_instance.transaction_history_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->transaction_history_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_invoice** | **Integer**| Filter for transactions from a specific invoice | [optional] 
 **filter_type** | **String**| Filter for transactions with specified type | [optional] 
 **filter_max_date** | **Integer**| Filter for transactions from no earlier than the specified date as a unix timestamp in seconds | [optional] 
 **filter_min_date** | **Integer**| Filter for transactions from no later than the specified date as a unix timestamp in seconds | [optional] 
 **filter_sign** | **String**| Filter for transactions with amount with the given sign | [optional] 
 **filter_user_id** | **Integer**| Filter for transactions for specific userId | [optional] 
 **filter_username** | **String**| Filter for transactions for specific username that start with the given string | [optional] 
 **filter_details** | **String**| Filter for transactions for specific details that start with the given string | [optional] 
 **filter_currency_code** | **String**| Filter for transactions for specific currency code | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageWalletTransactionResource**](PageWalletTransactionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_balance_using_put**
> WalletTransactionResource update_balance_using_put(user_id, currency_code, opts)

Updates the balance for a user's wallet

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsWalletsApi.new

user_id = 56 # Integer | The ID of the user for whom wallet is being modified

currency_code = "currency_code_example" # String | Currency code of the user's wallet

opts = { 
  request: SwaggerClient::WalletAlterRequest.new # WalletAlterRequest | The requested balance modification to be made to the user's wallet
}

begin
  #Updates the balance for a user's wallet
  result = api_instance.update_balance_using_put(user_id, currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->update_balance_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The ID of the user for whom wallet is being modified | 
 **currency_code** | **String**| Currency code of the user&#39;s wallet | 
 **request** | [**WalletAlterRequest**](WalletAlterRequest.md)| The requested balance modification to be made to the user&#39;s wallet | [optional] 

### Return type

[**WalletTransactionResource**](WalletTransactionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **user_transaction_history_using_get**
> PageWalletTransactionResource user_transaction_history_using_get(user_id, currency_code, opts)

Retrieve a user's wallet transactions

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsWalletsApi.new

user_id = 56 # Integer | The ID of the user for whom wallet transactions are being retrieved

currency_code = "currency_code_example" # String | Currency code of the user's wallet

opts = { 
  filter_type: "filter_type_example", # String | Filter for transactions with specified type
  filter_max_date: 789, # Integer | Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
  filter_min_date: 789, # Integer | Filter for transactions from no later than the specified date as a unix timestamp in seconds
  filter_sign: "filter_sign_example", # String | Filter for transactions with amount with the given sign.  Allowable values: ('positive', 'negative')
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieve a user's wallet transactions
  result = api_instance.user_transaction_history_using_get(user_id, currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->user_transaction_history_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The ID of the user for whom wallet transactions are being retrieved | 
 **currency_code** | **String**| Currency code of the user&#39;s wallet | 
 **filter_type** | **String**| Filter for transactions with specified type | [optional] 
 **filter_max_date** | **Integer**| Filter for transactions from no earlier than the specified date as a unix timestamp in seconds | [optional] 
 **filter_min_date** | **Integer**| Filter for transactions from no later than the specified date as a unix timestamp in seconds | [optional] 
 **filter_sign** | **String**| Filter for transactions with amount with the given sign.  Allowable values: (&#39;positive&#39;, &#39;negative&#39;) | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageWalletTransactionResource**](PageWalletTransactionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



