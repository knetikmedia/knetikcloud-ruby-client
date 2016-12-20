# SwaggerClient::ReportingRevenueApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executive_revenue_country_sales_using_get**](ReportingRevenueApi.md#executive_revenue_country_sales_using_get) | **GET** /reporting/revenue/countries/{currency_code} | Get revenue info by country
[**executive_revenue_item_sales_using_get**](ReportingRevenueApi.md#executive_revenue_item_sales_using_get) | **GET** /reporting/revenue/item-sales/{currency_code} | Get item revenue info
[**executive_revenue_product_sales_using_get**](ReportingRevenueApi.md#executive_revenue_product_sales_using_get) | **GET** /reporting/revenue/products/{currency_code} | Get revenue info by item
[**executive_revenue_refunds_using_get**](ReportingRevenueApi.md#executive_revenue_refunds_using_get) | **GET** /reporting/revenue/refunds/{currency_code} | Get refund revenue info
[**executive_revenue_subscription_sales_using_get**](ReportingRevenueApi.md#executive_revenue_subscription_sales_using_get) | **GET** /reporting/revenue/subscription-sales/{currency_code} | Get subscription revenue info


# **executive_revenue_country_sales_using_get**
> PageResourceRevenueCountryReportResource executive_revenue_country_sales_using_get(currency_code, opts)

Get revenue info by country

Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingRevenueApi.new

currency_code = "currency_code_example" # String | The code for a currency to get sales data for

opts = { 
  start_date: 789, # Integer | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  end_date: 789, # Integer | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Get revenue info by country
  result = api_instance.executive_revenue_country_sales_using_get(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingRevenueApi->executive_revenue_country_sales_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency_code** | **String**| The code for a currency to get sales data for | 
 **start_date** | **Integer**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **end_date** | **Integer**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceRevenueCountryReportResource**](PageResourceRevenueCountryReportResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **executive_revenue_item_sales_using_get**
> RevenueReportResource executive_revenue_item_sales_using_get(currency_code, opts)

Get item revenue info

Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingRevenueApi.new

currency_code = "currency_code_example" # String | The code for a currency to get sales data for

opts = { 
  start_date: 789, # Integer | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  end_date: 789 # Integer | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
}

begin
  #Get item revenue info
  result = api_instance.executive_revenue_item_sales_using_get(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingRevenueApi->executive_revenue_item_sales_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency_code** | **String**| The code for a currency to get sales data for | 
 **start_date** | **Integer**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **end_date** | **Integer**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 

### Return type

[**RevenueReportResource**](RevenueReportResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **executive_revenue_product_sales_using_get**
> PageResourceRevenueProductReportResource executive_revenue_product_sales_using_get(currency_code, opts)

Get revenue info by item

Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingRevenueApi.new

currency_code = "currency_code_example" # String | The code for a currency to get sales data for

opts = { 
  start_date: 789, # Integer | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  end_date: 789, # Integer | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Get revenue info by item
  result = api_instance.executive_revenue_product_sales_using_get(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingRevenueApi->executive_revenue_product_sales_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency_code** | **String**| The code for a currency to get sales data for | 
 **start_date** | **Integer**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **end_date** | **Integer**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceRevenueProductReportResource**](PageResourceRevenueProductReportResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **executive_revenue_refunds_using_get**
> RevenueReportResource executive_revenue_refunds_using_get(currency_code, opts)

Get refund revenue info

Get basic info about revenue loss from refunds (for all item types), summed up within a time range.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingRevenueApi.new

currency_code = "currency_code_example" # String | The code for a currency to get refund data for

opts = { 
  start_date: 789, # Integer | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  end_date: 789 # Integer | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
}

begin
  #Get refund revenue info
  result = api_instance.executive_revenue_refunds_using_get(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingRevenueApi->executive_revenue_refunds_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency_code** | **String**| The code for a currency to get refund data for | 
 **start_date** | **Integer**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **end_date** | **Integer**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 

### Return type

[**RevenueReportResource**](RevenueReportResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **executive_revenue_subscription_sales_using_get**
> RevenueReportResource executive_revenue_subscription_sales_using_get(currency_code, opts)

Get subscription revenue info

Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingRevenueApi.new

currency_code = "currency_code_example" # String | The code for a currency to get sales data for

opts = { 
  start_date: 789, # Integer | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  end_date: 789 # Integer | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
}

begin
  #Get subscription revenue info
  result = api_instance.executive_revenue_subscription_sales_using_get(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingRevenueApi->executive_revenue_subscription_sales_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency_code** | **String**| The code for a currency to get sales data for | 
 **start_date** | **Integer**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **end_date** | **Integer**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 

### Return type

[**RevenueReportResource**](RevenueReportResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



