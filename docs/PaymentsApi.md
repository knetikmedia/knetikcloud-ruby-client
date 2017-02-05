# SwaggerClient::PaymentsApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment_method_using_post**](PaymentsApi.md#create_payment_method_using_post) | **POST** /users/{user_id}/payment-methods | Create a new payment method for a user
[**delete_payment_method_using_delete**](PaymentsApi.md#delete_payment_method_using_delete) | **DELETE** /users/{user_id}/payment-methods/{id} | Delete an existing payment method for a user
[**get_payment_method_using_get**](PaymentsApi.md#get_payment_method_using_get) | **GET** /users/{user_id}/payment-methods/{id} | Get a single payment method for a user
[**get_payment_methods_using_get**](PaymentsApi.md#get_payment_methods_using_get) | **GET** /users/{user_id}/payment-methods | Get all payment methods for a user
[**payment_authorization_using_post**](PaymentsApi.md#payment_authorization_using_post) | **POST** /payment/authorizations | Authorize payment of an invoice for later capture
[**payment_capture_using_post**](PaymentsApi.md#payment_capture_using_post) | **POST** /payment/authorizations/{id}/capture | Capture an existing invoice payment authorization
[**update_payment_method_using_put**](PaymentsApi.md#update_payment_method_using_put) | **PUT** /users/{user_id}/payment-methods/{id} | Update an existing payment method for a user


# **create_payment_method_using_post**
> PaymentMethodResource create_payment_method_using_post(user_id, opts)

Create a new payment method for a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsApi.new

user_id = 56 # Integer | ID of the user for whom the payment method is being created

opts = { 
  payment_method: SwaggerClient::PaymentMethodResource.new # PaymentMethodResource | Payment method being created
}

begin
  #Create a new payment method for a user
  result = api_instance.create_payment_method_using_post(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->create_payment_method_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| ID of the user for whom the payment method is being created | 
 **payment_method** | [**PaymentMethodResource**](PaymentMethodResource.md)| Payment method being created | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_payment_method_using_delete**
> delete_payment_method_using_delete(user_id, id)

Delete an existing payment method for a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsApi.new

user_id = 56 # Integer | ID of the user for whom the payment method is being updated

id = 56 # Integer | ID of the payment method being deleted


begin
  #Delete an existing payment method for a user
  api_instance.delete_payment_method_using_delete(user_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->delete_payment_method_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| ID of the user for whom the payment method is being updated | 
 **id** | **Integer**| ID of the payment method being deleted | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payment_method_using_get**
> PaymentMethodResource get_payment_method_using_get(user_id, id)

Get a single payment method for a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsApi.new

user_id = 56 # Integer | ID of the user for whom the payment method is being retrieved

id = 56 # Integer | ID of the payment method being retrieved


begin
  #Get a single payment method for a user
  result = api_instance.get_payment_method_using_get(user_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_method_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| ID of the user for whom the payment method is being retrieved | 
 **id** | **Integer**| ID of the payment method being retrieved | 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payment_methods_using_get**
> Array&lt;PaymentMethodResource&gt; get_payment_methods_using_get(user_id, opts)

Get all payment methods for a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsApi.new

user_id = 56 # Integer | ID of the user for whom the payment methods are being retrieved

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get all payment methods for a user
  result = api_instance.get_payment_methods_using_get(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_methods_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| ID of the user for whom the payment methods are being retrieved | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Array&lt;PaymentMethodResource&gt;**](PaymentMethodResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **payment_authorization_using_post**
> PaymentAuthorizationResource payment_authorization_using_post(opts)

Authorize payment of an invoice for later capture

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  request: SwaggerClient::PaymentAuthorizationResource.new # PaymentAuthorizationResource | Payment authorization request
}

begin
  #Authorize payment of an invoice for later capture
  result = api_instance.payment_authorization_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->payment_authorization_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**PaymentAuthorizationResource**](PaymentAuthorizationResource.md)| Payment authorization request | [optional] 

### Return type

[**PaymentAuthorizationResource**](PaymentAuthorizationResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **payment_capture_using_post**
> payment_capture_using_post(id)

Capture an existing invoice payment authorization

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsApi.new

id = 56 # Integer | ID of the payment authorization to capture


begin
  #Capture an existing invoice payment authorization
  api_instance.payment_capture_using_post(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->payment_capture_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the payment authorization to capture | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_payment_method_using_put**
> update_payment_method_using_put(user_id, id, opts)

Update an existing payment method for a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PaymentsApi.new

user_id = 56 # Integer | ID of the user for whom the payment method is being updated

id = 56 # Integer | ID of the payment method being updated

opts = { 
  payment_method: SwaggerClient::PaymentMethodResource.new # PaymentMethodResource | The updated payment method data
}

begin
  #Update an existing payment method for a user
  api_instance.update_payment_method_using_put(user_id, id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->update_payment_method_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| ID of the user for whom the payment method is being updated | 
 **id** | **Integer**| ID of the payment method being updated | 
 **payment_method** | [**PaymentMethodResource**](PaymentMethodResource.md)| The updated payment method data | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



