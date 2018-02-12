# KnetikCloudClient::LocationsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_countries**](LocationsApi.md#get_countries) | **GET** /location/countries | Get a list of countries
[**get_country_by_geo_location**](LocationsApi.md#get_country_by_geo_location) | **GET** /location/geolocation/country | Get the iso3 code of your country
[**get_country_states**](LocationsApi.md#get_country_states) | **GET** /location/countries/{country_code_iso3}/states | Get a list of a country&#39;s states
[**get_currency_by_geo_location**](LocationsApi.md#get_currency_by_geo_location) | **GET** /location/geolocation/currency | Get the currency information of your country


# **get_countries**
> Array&lt;CountryResource&gt; get_countries

Get a list of countries

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::LocationsApi.new

begin
  #Get a list of countries
  result = api_instance.get_countries
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LocationsApi->get_countries: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;CountryResource&gt;**](CountryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_country_by_geo_location**
> String get_country_by_geo_location

Get the iso3 code of your country

Determined by geo ip location. <br><br><b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::LocationsApi.new

begin
  #Get the iso3 code of your country
  result = api_instance.get_country_by_geo_location
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LocationsApi->get_country_by_geo_location: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_country_states**
> Array&lt;StateResource&gt; get_country_states(country_code_iso3)

Get a list of a country's states

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::LocationsApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country


begin
  #Get a list of a country's states
  result = api_instance.get_country_states(country_code_iso3)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LocationsApi->get_country_states: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 

### Return type

[**Array&lt;StateResource&gt;**](StateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_currency_by_geo_location**
> CurrencyResource get_currency_by_geo_location

Get the currency information of your country

Determined by geo ip location, currency to country mapping and a fallback setting. <br><br><b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::LocationsApi.new

begin
  #Get the currency information of your country
  result = api_instance.get_currency_by_geo_location
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LocationsApi->get_currency_by_geo_location: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurrencyResource**](CurrencyResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



