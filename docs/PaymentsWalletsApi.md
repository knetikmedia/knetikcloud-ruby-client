# KnetikCloudClient::PaymentsWalletsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_wallet**](PaymentsWalletsApi.md#get_user_wallet) | **GET** /users/{user_id}/wallets/{currency_code} | Returns the user&#39;s wallet for the given currency code
[**get_user_wallet_transactions**](PaymentsWalletsApi.md#get_user_wallet_transactions) | **GET** /users/{user_id}/wallets/{currency_code}/transactions | Retrieve a user&#39;s wallet transactions
[**get_user_wallets**](PaymentsWalletsApi.md#get_user_wallets) | **GET** /users/{user_id}/wallets | List all of a user&#39;s wallets
[**get_wallet_balances**](PaymentsWalletsApi.md#get_wallet_balances) | **GET** /wallets/totals | Retrieves a summation of wallet balances by currency code
[**get_wallet_transactions**](PaymentsWalletsApi.md#get_wallet_transactions) | **GET** /wallets/transactions | Retrieve wallet transactions across the system
[**get_wallets**](PaymentsWalletsApi.md#get_wallets) | **GET** /wallets | Retrieve a list of wallets across the system
[**update_wallet_balance**](PaymentsWalletsApi.md#update_wallet_balance) | **PUT** /users/{user_id}/wallets/{currency_code}/balance | Updates the balance for a user&#39;s wallet


# **get_user_wallet**
> SimpleWallet get_user_wallet(user_id, currency_code)

Returns the user's wallet for the given currency code

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::PaymentsWalletsApi.new

user_id = 56 # Integer | The ID of the user for whom wallet is being retrieved

currency_code = "currency_code_example" # String | Currency code of the user's wallet


begin
  #Returns the user's wallet for the given currency code
  result = api_instance.get_user_wallet(user_id, currency_code)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->get_user_wallet: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_wallet_transactions**
> PageResourceWalletTransactionResource get_user_wallet_transactions(user_id, currency_code, opts)

Retrieve a user's wallet transactions

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::PaymentsWalletsApi.new

user_id = 56 # Integer | The ID of the user for whom wallet transactions are being retrieved

currency_code = "currency_code_example" # String | Currency code of the user's wallet

opts = { 
  filter_type: "filter_type_example", # String | Filter for transactions with specified type
  filter_max_date: 789, # Integer | Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
  filter_min_date: 789, # Integer | Filter for transactions from no later than the specified date as a unix timestamp in seconds
  filter_sign: "filter_sign_example", # String | Filter for transactions with amount with the given sign.  Allowable values: ('positive', 'negative')
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieve a user's wallet transactions
  result = api_instance.get_user_wallet_transactions(user_id, currency_code, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->get_user_wallet_transactions: #{e}"
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
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceWalletTransactionResource**](PageResourceWalletTransactionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_wallets**
> Array&lt;SimpleWallet&gt; get_user_wallets(user_id)

List all of a user's wallets

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::PaymentsWalletsApi.new

user_id = 56 # Integer | The ID of the user for whom wallets are being retrieved


begin
  #List all of a user's wallets
  result = api_instance.get_user_wallets(user_id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->get_user_wallets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The ID of the user for whom wallets are being retrieved | 

### Return type

[**Array&lt;SimpleWallet&gt;**](SimpleWallet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_wallet_balances**
> PageResourceWalletTotalResponse get_wallet_balances

Retrieves a summation of wallet balances by currency code

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::PaymentsWalletsApi.new

begin
  #Retrieves a summation of wallet balances by currency code
  result = api_instance.get_wallet_balances
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->get_wallet_balances: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageResourceWalletTotalResponse**](PageResourceWalletTotalResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_wallet_transactions**
> PageResourceWalletTransactionResource get_wallet_transactions(opts)

Retrieve wallet transactions across the system

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::PaymentsWalletsApi.new

opts = { 
  filter_invoice: 56, # Integer | Filter for transactions from a specific invoice
  filter_type: "filter_type_example", # String | Filter for transactions with specified type
  filter_date: "filter_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).
  filter_sign: "filter_sign_example", # String | Filter for transactions with amount with the given sign
  filter_user_id: 56, # Integer | Filter for transactions for specific userId
  filter_username: "filter_username_example", # String | Filter for transactions for specific username that start with the given string
  filter_details: "filter_details_example", # String | Filter for transactions for specific details that start with the given string
  filter_currency_code: "filter_currency_code_example", # String | Filter for transactions for specific currency code
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieve wallet transactions across the system
  result = api_instance.get_wallet_transactions(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->get_wallet_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_invoice** | **Integer**| Filter for transactions from a specific invoice | [optional] 
 **filter_type** | **String**| Filter for transactions with specified type | [optional] 
 **filter_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_sign** | **String**| Filter for transactions with amount with the given sign | [optional] 
 **filter_user_id** | **Integer**| Filter for transactions for specific userId | [optional] 
 **filter_username** | **String**| Filter for transactions for specific username that start with the given string | [optional] 
 **filter_details** | **String**| Filter for transactions for specific details that start with the given string | [optional] 
 **filter_currency_code** | **String**| Filter for transactions for specific currency code | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceWalletTransactionResource**](PageResourceWalletTransactionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_wallets**
> PageResourceSimpleWallet get_wallets(opts)

Retrieve a list of wallets across the system

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::PaymentsWalletsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieve a list of wallets across the system
  result = api_instance.get_wallets(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->get_wallets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceSimpleWallet**](PageResourceSimpleWallet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_wallet_balance**
> WalletTransactionResource update_wallet_balance(user_id, currency_code, opts)

Updates the balance for a user's wallet

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::PaymentsWalletsApi.new

user_id = 56 # Integer | The ID of the user for whom wallet is being modified

currency_code = "currency_code_example" # String | Currency code of the user's wallet

opts = { 
  request: KnetikCloudClient::WalletAlterRequest.new # WalletAlterRequest | The requested balance modification to be made to the user's wallet
}

begin
  #Updates the balance for a user's wallet
  result = api_instance.update_wallet_balance(user_id, currency_code, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsWalletsApi->update_wallet_balance: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



