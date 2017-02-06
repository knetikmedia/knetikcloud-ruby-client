# SwaggerClient::ReportingRevenueApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_item_revenue**](ReportingRevenueApi.md#get_item_revenue) | **GET** /reporting/revenue/item-sales/{currency_code} | Get item revenue info
[**get_refund_revenue**](ReportingRevenueApi.md#get_refund_revenue) | **GET** /reporting/revenue/refunds/{currency_code} | Get refund revenue info
[**get_revenue_by_country**](ReportingRevenueApi.md#get_revenue_by_country) | **GET** /reporting/revenue/countries/{currency_code} | Get revenue info by country
[**get_revenue_by_item**](ReportingRevenueApi.md#get_revenue_by_item) | **GET** /reporting/revenue/products/{currency_code} | Get revenue info by item
[**get_subscription_revenue**](ReportingRevenueApi.md#get_subscription_revenue) | **GET** /reporting/revenue/subscription-sales/{currency_code} | Get subscription revenue info


# **get_item_revenue**
> RevenueReportResource get_item_revenue(currency_code, opts)

Get item revenue info

Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
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
  result = api_instance.get_item_revenue(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingRevenueApi->get_item_revenue: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_refund_revenue**
> RevenueReportResource get_refund_revenue(currency_code, opts)

Get refund revenue info

Get basic info about revenue loss from refunds (for all item types), summed up within a time range.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
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
  result = api_instance.get_refund_revenue(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingRevenueApi->get_refund_revenue: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_revenue_by_country**
> PageResourceRevenueCountryReportResource get_revenue_by_country(currency_code, opts)

Get revenue info by country

Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
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
  result = api_instance.get_revenue_by_country(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingRevenueApi->get_revenue_by_country: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_revenue_by_item**
> PageResourceRevenueProductReportResource get_revenue_by_item(currency_code, opts)

Get revenue info by item

Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
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
  result = api_instance.get_revenue_by_item(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingRevenueApi->get_revenue_by_item: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_subscription_revenue**
> RevenueReportResource get_subscription_revenue(currency_code, opts)

Get subscription revenue info

Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
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
  result = api_instance.get_subscription_revenue(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingRevenueApi->get_subscription_revenue: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



