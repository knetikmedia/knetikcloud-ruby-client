# SwaggerClient::LocationsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_cities**](LocationsApi.md#get_cities) | **GET** /location/countries/{country_code_iso3}/states/{state_code}/cities | Get a list of a state&#39;s cities
[**get_countries1**](LocationsApi.md#get_countries1) | **GET** /location/countries | Get a list of countries
[**get_countries2**](LocationsApi.md#get_countries2) | **GET** /location/countries/{country_code_iso3}/states | Get a list of a country&#39;s states
[**get_country_by_geo_location**](LocationsApi.md#get_country_by_geo_location) | **GET** /location/geolocation/country | Get the iso3 code of your country
[**get_currency_by_geo_location**](LocationsApi.md#get_currency_by_geo_location) | **GET** /location/geolocation/currency | Get the currency information of your country


# **get_cities**
> Array&lt;CityResource&gt; get_cities(country_code_iso3, state_code)

Get a list of a state's cities

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationsApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

state_code = "state_code_example" # String | The code of the state


begin
  #Get a list of a state's cities
  result = api_instance.get_cities(country_code_iso3, state_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationsApi->get_cities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **state_code** | **String**| The code of the state | 

### Return type

[**Array&lt;CityResource&gt;**](CityResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_countries1**
> Array&lt;CountryResource&gt; get_countries1

Get a list of countries

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationsApi.new

begin
  #Get a list of countries
  result = api_instance.get_countries1
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationsApi->get_countries1: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;CountryResource&gt;**](CountryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_countries2**
> Array&lt;StateResource&gt; get_countries2(country_code_iso3)

Get a list of a country's states

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationsApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country


begin
  #Get a list of a country's states
  result = api_instance.get_countries2(country_code_iso3)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationsApi->get_countries2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 

### Return type

[**Array&lt;StateResource&gt;**](StateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_country_by_geo_location**
> String get_country_by_geo_location

Get the iso3 code of your country

Determined by geo ip location

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationsApi.new

begin
  #Get the iso3 code of your country
  result = api_instance.get_country_by_geo_location
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationsApi->get_country_by_geo_location: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_currency_by_geo_location**
> CurrencyResource get_currency_by_geo_location

Get the currency information of your country

Determined by geo ip location, currency to country mapping and a fallback setting

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationsApi.new

begin
  #Get the currency information of your country
  result = api_instance.get_currency_by_geo_location
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationsApi->get_currency_by_geo_location: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



