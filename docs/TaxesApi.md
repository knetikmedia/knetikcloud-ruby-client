# SwaggerClient::TaxesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tax_using_post**](TaxesApi.md#create_tax_using_post) | **POST** /tax/countries/{country_code_iso3}/states | Create a tax
[**delete_tax_using_delete**](TaxesApi.md#delete_tax_using_delete) | **DELETE** /tax/countries/{country_code_iso3} | Delete an existing tax
[**delete_tax_using_delete1**](TaxesApi.md#delete_tax_using_delete1) | **DELETE** /tax/countries/{country_code_iso3}/states/{state_code} | Delete an existing tax
[**get_all_taxes_using_get**](TaxesApi.md#get_all_taxes_using_get) | **GET** /tax/states | List and search taxes across all countries
[**get_tax_using_get**](TaxesApi.md#get_tax_using_get) | **GET** /tax/countries/{country_code_iso3} | Get a single tax
[**get_tax_using_get1**](TaxesApi.md#get_tax_using_get1) | **GET** /tax/countries/{country_code_iso3}/states/{state_code} | Get a single tax
[**get_taxes_using_get**](TaxesApi.md#get_taxes_using_get) | **GET** /tax/countries | List and search taxes
[**get_taxes_using_get1**](TaxesApi.md#get_taxes_using_get1) | **GET** /tax/countries/{country_code_iso3}/states | List and search taxes within a country
[**update_tax_using_post**](TaxesApi.md#update_tax_using_post) | **POST** /tax/countries | Create a tax
[**update_tax_using_put**](TaxesApi.md#update_tax_using_put) | **PUT** /tax/countries/{country_code_iso3} | Create or update a tax
[**update_tax_using_put1**](TaxesApi.md#update_tax_using_put1) | **PUT** /tax/countries/{country_code_iso3}/states/{state_code} | Create or update a tax


# **create_tax_using_post**
> create_tax_using_post(country_code_iso3, opts)

Create a tax

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

opts = { 
  tax_resource: SwaggerClient::StateTaxResource.new # StateTaxResource | The tax object
}

begin
  #Create a tax
  api_instance.create_tax_using_post(country_code_iso3, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->create_tax_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **tax_resource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_tax_using_delete**
> delete_tax_using_delete(country_code_iso3)

Delete an existing tax

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country


begin
  #Delete an existing tax
  api_instance.delete_tax_using_delete(country_code_iso3)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->delete_tax_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_tax_using_delete1**
> delete_tax_using_delete1(country_code_iso3, state_code)

Delete an existing tax

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

state_code = "state_code_example" # String | The code of the state


begin
  #Delete an existing tax
  api_instance.delete_tax_using_delete1(country_code_iso3, state_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->delete_tax_using_delete1: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_taxes_using_get**
> PageResourceStateTaxResource get_all_taxes_using_get(opts)

List and search taxes across all countries

Get a list of taxes

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TaxesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search taxes across all countries
  result = api_instance.get_all_taxes_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->get_all_taxes_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceStateTaxResource**](PageResourceStateTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_tax_using_get**
> CountryTaxResource get_tax_using_get(country_code_iso3)

Get a single tax

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country


begin
  #Get a single tax
  result = api_instance.get_tax_using_get(country_code_iso3)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->get_tax_using_get: #{e}"
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



# **get_tax_using_get1**
> StateTaxResource get_tax_using_get1(country_code_iso3, state_code)

Get a single tax

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

state_code = "state_code_example" # String | The code of the state


begin
  #Get a single tax
  result = api_instance.get_tax_using_get1(country_code_iso3, state_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->get_tax_using_get1: #{e}"
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



# **get_taxes_using_get**
> PageResourceCountryTaxResource get_taxes_using_get(opts)

List and search taxes

Get a list of taxes

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TaxesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search taxes
  result = api_instance.get_taxes_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->get_taxes_using_get: #{e}"
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



# **get_taxes_using_get1**
> PageResourceStateTaxResource get_taxes_using_get1(country_code_iso3, opts)

List and search taxes within a country

Get a list of taxes

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search taxes within a country
  result = api_instance.get_taxes_using_get1(country_code_iso3, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->get_taxes_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceStateTaxResource**](PageResourceStateTaxResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_tax_using_post**
> update_tax_using_post(opts)

Create a tax

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::TaxesApi.new

opts = { 
  tax_resource: SwaggerClient::CountryTaxResource.new # CountryTaxResource | The tax object
}

begin
  #Create a tax
  api_instance.update_tax_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->update_tax_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_resource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_tax_using_put**
> update_tax_using_put(country_code_iso3, opts)

Create or update a tax

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

opts = { 
  tax_resource: SwaggerClient::CountryTaxResource.new # CountryTaxResource | The tax object
}

begin
  #Create or update a tax
  api_instance.update_tax_using_put(country_code_iso3, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->update_tax_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **tax_resource** | [**CountryTaxResource**](CountryTaxResource.md)| The tax object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_tax_using_put1**
> update_tax_using_put1(country_code_iso3, state_code, opts)

Create or update a tax

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::TaxesApi.new

country_code_iso3 = "country_code_iso3_example" # String | The iso3 code of the country

state_code = "state_code_example" # String | The code of the state

opts = { 
  tax_resource: SwaggerClient::StateTaxResource.new # StateTaxResource | The tax object
}

begin
  #Create or update a tax
  api_instance.update_tax_using_put1(country_code_iso3, state_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->update_tax_using_put1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code_iso3** | **String**| The iso3 code of the country | 
 **state_code** | **String**| The code of the state | 
 **tax_resource** | [**StateTaxResource**](StateTaxResource.md)| The tax object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



