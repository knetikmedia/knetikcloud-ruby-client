# KnetikCloudClient::TaxesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_country_tax**](TaxesApi.md#create_country_tax) | **POST** /tax/countries | Create a country tax
[**create_state_tax**](TaxesApi.md#create_state_tax) | **POST** /tax/countries/{country_code_iso3}/states | Create a state tax
[**delete_country_tax**](TaxesApi.md#delete_country_tax) | **DELETE** /tax/countries/{country_code_iso3} | Delete an existing tax
[**delete_state_tax**](TaxesApi.md#delete_state_tax) | **DELETE** /tax/countries/{country_code_iso3}/states/{state_code} | Delete an existing state tax
[**get_country_tax**](TaxesApi.md#get_country_tax) | **GET** /tax/countries/{country_code_iso3} | Get a single tax
[**get_country_taxes**](TaxesApi.md#get_country_taxes) | **GET** /tax/countries | List and search taxes
[**get_state_tax**](TaxesApi.md#get_state_tax) | **GET** /tax/countries/{country_code_iso3}/states/{state_code} | Get a single state tax
[**get_state_taxes_for_countries**](TaxesApi.md#get_state_taxes_for_countries) | **GET** /tax/states | List and search taxes across all countries
[**get_state_taxes_for_country**](TaxesApi.md#get_state_taxes_for_country) | **GET** /tax/countries/{country_code_iso3}/states | List and search taxes within a country
[**update_country_tax**](TaxesApi.md#update_country_tax) | **PUT** /tax/countries/{country_code_iso3} | Create or update a tax
[**update_state_tax**](TaxesApi.md#update_state_tax) | **PUT** /tax/countries/{country_code_iso3}/states/{state_code} | Create or update a state tax


# **create_country_tax**
> CountryTaxResource create_country_tax(opts)

Create a country tax

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

api_instance = KnetikCloudClient::TaxesApi.new

opts = { 
  tax_resource: KnetikCloudClient::CountryTaxResource.new # CountryTaxResource | The tax object
}

begin
  #Create a country tax
  result = api_instance.create_country_tax(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->create_country_tax: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_resource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

[**CountryTaxResource**](CountryTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_state_tax**
> StateTaxResource create_state_tax(country_code_iso3, opts)

Create a state tax

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

api_instance = KnetikCloudClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

opts = { 
  tax_resource: KnetikCloudClient::StateTaxResource.new # StateTaxResource | The tax object
}

begin
  #Create a state tax
  result = api_instance.create_state_tax(country_code_iso3, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->create_state_tax: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **tax_resource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

[**StateTaxResource**](StateTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_country_tax**
> delete_country_tax(country_code_iso3)

Delete an existing tax

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

api_instance = KnetikCloudClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country


begin
  #Delete an existing tax
  api_instance.delete_country_tax(country_code_iso3)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->delete_country_tax: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_state_tax**
> delete_state_tax(country_code_iso3, state_code)

Delete an existing state tax

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

api_instance = KnetikCloudClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

state_code = "state_code_example" # String | The code of the state


begin
  #Delete an existing state tax
  api_instance.delete_state_tax(country_code_iso3, state_code)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->delete_state_tax: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **state_code** | **String**| The code of the state | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_country_tax**
> CountryTaxResource get_country_tax(country_code_iso3)

Get a single tax

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country


begin
  #Get a single tax
  result = api_instance.get_country_tax(country_code_iso3)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->get_country_tax: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 

### Return type

[**CountryTaxResource**](CountryTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_country_taxes**
> PageResourceCountryTaxResource get_country_taxes(opts)

List and search taxes

Get a list of taxes

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::TaxesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search taxes
  result = api_instance.get_country_taxes(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->get_country_taxes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceCountryTaxResource**](PageResourceCountryTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_state_tax**
> StateTaxResource get_state_tax(country_code_iso3, state_code)

Get a single state tax

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

state_code = "state_code_example" # String | The code of the state


begin
  #Get a single state tax
  result = api_instance.get_state_tax(country_code_iso3, state_code)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->get_state_tax: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **state_code** | **String**| The code of the state | 

### Return type

[**StateTaxResource**](StateTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_state_taxes_for_countries**
> PageResourceStateTaxResource get_state_taxes_for_countries(opts)

List and search taxes across all countries

Get a list of taxes

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::TaxesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search taxes across all countries
  result = api_instance.get_state_taxes_for_countries(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->get_state_taxes_for_countries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceStateTaxResource**](PageResourceStateTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_state_taxes_for_country**
> PageResourceStateTaxResource get_state_taxes_for_country(country_code_iso3, opts)

List and search taxes within a country

Get a list of taxes

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search taxes within a country
  result = api_instance.get_state_taxes_for_country(country_code_iso3, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->get_state_taxes_for_country: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceStateTaxResource**](PageResourceStateTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_country_tax**
> CountryTaxResource update_country_tax(country_code_iso3, opts)

Create or update a tax

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

api_instance = KnetikCloudClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

opts = { 
  tax_resource: KnetikCloudClient::CountryTaxResource.new # CountryTaxResource | The tax object
}

begin
  #Create or update a tax
  result = api_instance.update_country_tax(country_code_iso3, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->update_country_tax: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **tax_resource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

[**CountryTaxResource**](CountryTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_state_tax**
> StateTaxResource update_state_tax(country_code_iso3, state_code, opts)

Create or update a state tax

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

api_instance = KnetikCloudClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

state_code = "state_code_example" # String | The code of the state

opts = { 
  tax_resource: KnetikCloudClient::StateTaxResource.new # StateTaxResource | The tax object
}

begin
  #Create or update a state tax
  result = api_instance.update_state_tax(country_code_iso3, state_code, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling TaxesApi->update_state_tax: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **state_code** | **String**| The code of the state | 
 **tax_resource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

[**StateTaxResource**](StateTaxResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



