# KnetikCloudClient::PaymentsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment_method**](PaymentsApi.md#create_payment_method) | **POST** /users/{user_id}/payment-methods | Create a new payment method for a user
[**delete_payment_method**](PaymentsApi.md#delete_payment_method) | **DELETE** /users/{user_id}/payment-methods/{id} | Delete an existing payment method for a user
[**get_payment_method**](PaymentsApi.md#get_payment_method) | **GET** /users/{user_id}/payment-methods/{id} | Get a single payment method for a user
[**get_payment_methods**](PaymentsApi.md#get_payment_methods) | **GET** /users/{user_id}/payment-methods | Get all payment methods for a user
[**payment_authorization**](PaymentsApi.md#payment_authorization) | **POST** /payment/authorizations | Authorize payment of an invoice for later capture
[**payment_capture**](PaymentsApi.md#payment_capture) | **POST** /payment/authorizations/{id}/capture | Capture an existing invoice payment authorization
[**update_payment_method**](PaymentsApi.md#update_payment_method) | **PUT** /users/{user_id}/payment-methods/{id} | Update an existing payment method for a user


# **create_payment_method**
> PaymentMethodResource create_payment_method(user_id, opts)

Create a new payment method for a user

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsApi.new

user_id = 56 # Integer | ID of the user for whom the payment method is being created

opts = { 
  payment_method: KnetikCloudClient::PaymentMethodResource.new # PaymentMethodResource | Payment method being created
}

begin
  #Create a new payment method for a user
  result = api_instance.create_payment_method(user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsApi->create_payment_method: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_payment_method**
> delete_payment_method(user_id, id)

Delete an existing payment method for a user

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsApi.new

user_id = 56 # Integer | ID of the user for whom the payment method is being updated

id = 56 # Integer | ID of the payment method being deleted


begin
  #Delete an existing payment method for a user
  api_instance.delete_payment_method(user_id, id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsApi->delete_payment_method: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payment_method**
> PaymentMethodResource get_payment_method(user_id, id)

Get a single payment method for a user

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsApi.new

user_id = 56 # Integer | ID of the user for whom the payment method is being retrieved

id = 56 # Integer | ID of the payment method being retrieved


begin
  #Get a single payment method for a user
  result = api_instance.get_payment_method(user_id, id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_method: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payment_methods**
> Array&lt;PaymentMethodResource&gt; get_payment_methods(user_id, opts)

Get all payment methods for a user

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsApi.new

user_id = 56 # Integer | ID of the user for whom the payment methods are being retrieved

opts = { 
  filter_name: "filter_name_example", # String | Filter for payment methods whose name starts with a given string
  filter_payment_type: "filter_payment_type_example", # String | Filter for payment methods with a specific payment type
  filter_payment_method_type_id: 56, # Integer | Filter for payment methods with a specific payment method type by id
  filter_payment_method_type_name: "filter_payment_method_type_name_example", # String | Filter for payment methods whose payment method type name starts with a given string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get all payment methods for a user
  result = api_instance.get_payment_methods(user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| ID of the user for whom the payment methods are being retrieved | 
 **filter_name** | **String**| Filter for payment methods whose name starts with a given string | [optional] 
 **filter_payment_type** | **String**| Filter for payment methods with a specific payment type | [optional] 
 **filter_payment_method_type_id** | **Integer**| Filter for payment methods with a specific payment method type by id | [optional] 
 **filter_payment_method_type_name** | **String**| Filter for payment methods whose payment method type name starts with a given string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**Array&lt;PaymentMethodResource&gt;**](PaymentMethodResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **payment_authorization**
> PaymentAuthorizationResource payment_authorization(opts)

Authorize payment of an invoice for later capture

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsApi.new

opts = { 
  request: KnetikCloudClient::PaymentAuthorizationResource.new # PaymentAuthorizationResource | Payment authorization request
}

begin
  #Authorize payment of an invoice for later capture
  result = api_instance.payment_authorization(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsApi->payment_authorization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**PaymentAuthorizationResource**](PaymentAuthorizationResource.md)| Payment authorization request | [optional] 

### Return type

[**PaymentAuthorizationResource**](PaymentAuthorizationResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **payment_capture**
> payment_capture(id)

Capture an existing invoice payment authorization

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsApi.new

id = 56 # Integer | ID of the payment authorization to capture


begin
  #Capture an existing invoice payment authorization
  api_instance.payment_capture(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsApi->payment_capture: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the payment authorization to capture | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_payment_method**
> PaymentMethodResource update_payment_method(user_id, id, opts)

Update an existing payment method for a user

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::PaymentsApi.new

user_id = 56 # Integer | ID of the user for whom the payment method is being updated

id = 56 # Integer | ID of the payment method being updated

opts = { 
  payment_method: KnetikCloudClient::PaymentMethodResource.new # PaymentMethodResource | The updated payment method data
}

begin
  #Update an existing payment method for a user
  result = api_instance.update_payment_method(user_id, id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling PaymentsApi->update_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| ID of the user for whom the payment method is being updated | 
 **id** | **Integer**| ID of the payment method being updated | 
 **payment_method** | [**PaymentMethodResource**](PaymentMethodResource.md)| The updated payment method data | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



