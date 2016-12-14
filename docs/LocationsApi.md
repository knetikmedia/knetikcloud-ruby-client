# SwaggerClient::LocationsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cities_using_get**](LocationsApi.md#cities_using_get) | **GET** /location/countries/{country_code_iso3}/states/{state_code}/cities | Get a list of a state&#39;s cities
[**countries_using_get**](LocationsApi.md#countries_using_get) | **GET** /location/countries | Get a list of countries
[**get_currency_by_geo_location_using_get**](LocationsApi.md#get_currency_by_geo_location_using_get) | **GET** /location/geolocation/currency | Get the currency information of your country
[**get_geo_location_country_using_get**](LocationsApi.md#get_geo_location_country_using_get) | **GET** /location/geolocation/country | Get the iso3 code of your country
[**states_using_get**](LocationsApi.md#states_using_get) | **GET** /location/countries/{country_code_iso3}/states | Get a list of a country&#39;s states


# **cities_using_get**
> Array&lt;CityResource&gt; cities_using_get(country_code_iso3, state_code)

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
  result = api_instance.cities_using_get(country_code_iso3, state_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationsApi->cities_using_get: #{e}"
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
 - **Accept**: */*



# **countries_using_get**
> Array&lt;CountryResource&gt; countries_using_get

Get a list of countries

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationsApi.new

begin
  #Get a list of countries
  result = api_instance.countries_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationsApi->countries_using_get: #{e}"
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
 - **Accept**: */*



# **get_currency_by_geo_location_using_get**
> CurrencyResource get_currency_by_geo_location_using_get

Get the currency information of your country

Determined by geo ip location, currency to country mapping and a fallback setting

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationsApi.new

begin
  #Get the currency information of your country
  result = api_instance.get_currency_by_geo_location_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationsApi->get_currency_by_geo_location_using_get: #{e}"
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
 - **Accept**: */*



# **get_geo_location_country_using_get**
> String get_geo_location_country_using_get

Get the iso3 code of your country

Determined by geo ip location

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationsApi.new

begin
  #Get the iso3 code of your country
  result = api_instance.get_geo_location_country_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationsApi->get_geo_location_country_using_get: #{e}"
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
 - **Accept**: */*



# **states_using_get**
> Array&lt;StateResource&gt; states_using_get(country_code_iso3)

Get a list of a country's states

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LocationsApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country


begin
  #Get a list of a country's states
  result = api_instance.states_using_get(country_code_iso3)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LocationsApi->states_using_get: #{e}"
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
 - **Accept**: */*



