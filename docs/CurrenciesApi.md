# SwaggerClient::CurrenciesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_currency**](CurrenciesApi.md#create_currency) | **POST** /currencies | Create a currency
[**delete_currency**](CurrenciesApi.md#delete_currency) | **DELETE** /currencies/{code} | Delete a currency
[**get_currencies**](CurrenciesApi.md#get_currencies) | **GET** /currencies | List and search currencies
[**get_currency**](CurrenciesApi.md#get_currency) | **GET** /currencies/{code} | Get a single currency
[**update_currency**](CurrenciesApi.md#update_currency) | **PUT** /currencies/{code} | Update a currency


# **create_currency**
> CurrencyResource create_currency(opts)

Create a currency

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CurrenciesApi.new

opts = { 
  currency: SwaggerClient::CurrencyResource.new # CurrencyResource | The currency object
}

begin
  #Create a currency
  result = api_instance.create_currency(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CurrenciesApi->create_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | [**CurrencyResource**](CurrencyResource.md)| The currency object | [optional] 

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_currency**
> delete_currency(code)

Delete a currency

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CurrenciesApi.new

code = "code_example" # String | The currency code


begin
  #Delete a currency
  api_instance.delete_currency(code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CurrenciesApi->delete_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The currency code | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_currencies**
> PageResourceCurrencyResource get_currencies(opts)

List and search currencies

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CurrenciesApi.new

opts = { 
  filter_enabled_currencies: true, # BOOLEAN | Filter for alternate currencies setup explicitely in system config
  filter_type: "filter_type_example", # String | Filter currencies by type.  Allowable values: ('virtual', 'real')
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search currencies
  result = api_instance.get_currencies(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CurrenciesApi->get_currencies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_enabled_currencies** | **BOOLEAN**| Filter for alternate currencies setup explicitely in system config | [optional] 
 **filter_type** | **String**| Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;) | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceCurrencyResource**](PageResourceCurrencyResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_currency**
> CurrencyResource get_currency(code)

Get a single currency

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CurrenciesApi.new

code = "code_example" # String | The currency code


begin
  #Get a single currency
  result = api_instance.get_currency(code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CurrenciesApi->get_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The currency code | 

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_currency**
> update_currency(code, opts)

Update a currency

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CurrenciesApi.new

code = "code_example" # String | The currency code

opts = { 
  currency: SwaggerClient::CurrencyResource.new # CurrencyResource | The currency object
}

begin
  #Update a currency
  api_instance.update_currency(code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CurrenciesApi->update_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The currency code | 
 **currency** | [**CurrencyResource**](CurrencyResource.md)| The currency object | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



