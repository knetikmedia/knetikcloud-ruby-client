# SwaggerClient::UsersSubscriptionsApi

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_subscription_details**](UsersSubscriptionsApi.md#get_user_subscription_details) | **GET** /users/{user_id}/subscriptions/{inventory_id} | Get details about a user&#39;s subscription
[**get_users_subscription_details**](UsersSubscriptionsApi.md#get_users_subscription_details) | **GET** /users/{user_id}/subscriptions | Get details about a user&#39;s subscriptions
[**reactivate_user_subscription**](UsersSubscriptionsApi.md#reactivate_user_subscription) | **POST** /users/{user_id}/subscriptions/{inventory_id}/reactivate | Reactivate a subscription and charge fee
[**set_subscription_bill_date**](UsersSubscriptionsApi.md#set_subscription_bill_date) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/bill-date | Set a new date to bill a subscription on
[**set_subscription_payment_method**](UsersSubscriptionsApi.md#set_subscription_payment_method) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/payment-method | Set the payment method to use for a subscription
[**set_subscription_status**](UsersSubscriptionsApi.md#set_subscription_status) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/status | Set the status of a subscription
[**set_user_subscription_plan**](UsersSubscriptionsApi.md#set_user_subscription_plan) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/plan | Set a new subscription plan for a user


# **get_user_subscription_details**
> InventorySubscriptionResource get_user_subscription_details(user_id, inventory_id)

Get details about a user's subscription

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory


begin
  #Get details about a user's subscription
  result = api_instance.get_user_subscription_details(user_id, inventory_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->get_user_subscription_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **inventory_id** | **Integer**| The id of the user&#39;s inventory | 

### Return type

[**InventorySubscriptionResource**](InventorySubscriptionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_users_subscription_details**
> Array&lt;InventorySubscriptionResource&gt; get_users_subscription_details(user_id)

Get details about a user's subscriptions

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user


begin
  #Get details about a user's subscriptions
  result = api_instance.get_users_subscription_details(user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->get_users_subscription_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 

### Return type

[**Array&lt;InventorySubscriptionResource&gt;**](InventorySubscriptionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reactivate_user_subscription**
> InvoiceResource reactivate_user_subscription(user_id, inventory_id, opts)

Reactivate a subscription and charge fee

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

opts = { 
  reactivate_subscription_request: SwaggerClient::ReactivateSubscriptionRequest.new # ReactivateSubscriptionRequest | The reactivate subscription request object inventory
}

begin
  #Reactivate a subscription and charge fee
  result = api_instance.reactivate_user_subscription(user_id, inventory_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->reactivate_user_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **inventory_id** | **Integer**| The id of the user&#39;s inventory | 
 **reactivate_subscription_request** | [**ReactivateSubscriptionRequest**](ReactivateSubscriptionRequest.md)| The reactivate subscription request object inventory | [optional] 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_subscription_bill_date**
> set_subscription_bill_date(user_id, inventory_id, bill_date)

Set a new date to bill a subscription on

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

bill_date = 789 # Integer | The new bill date. Unix timestamp in seconds


begin
  #Set a new date to bill a subscription on
  api_instance.set_subscription_bill_date(user_id, inventory_id, bill_date)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->set_subscription_bill_date: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **inventory_id** | **Integer**| The id of the user&#39;s inventory | 
 **bill_date** | **Integer**| The new bill date. Unix timestamp in seconds | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_subscription_payment_method**
> set_subscription_payment_method(user_id, inventory_id, opts)

Set the payment method to use for a subscription

May send null to use floating default

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

opts = { 
  payment_method_id: 56 # Integer | The id of the payment method
}

begin
  #Set the payment method to use for a subscription
  api_instance.set_subscription_payment_method(user_id, inventory_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->set_subscription_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **inventory_id** | **Integer**| The id of the user&#39;s inventory | 
 **payment_method_id** | **Integer**| The id of the payment method | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_subscription_status**
> set_subscription_status(user_id, inventory_id, status)

Set the status of a subscription

The body is a json string (put in quotes) that should match a desired invoice status type. Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

status = "status_example" # String | The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: ('current', 'canceled', 'stopped', 'payment_failed', 'suspended')


begin
  #Set the status of a subscription
  api_instance.set_subscription_status(user_id, inventory_id, status)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->set_subscription_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **inventory_id** | **Integer**| The id of the user&#39;s inventory | 
 **status** | **String**| The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: (&#39;current&#39;, &#39;canceled&#39;, &#39;stopped&#39;, &#39;payment_failed&#39;, &#39;suspended&#39;) | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_user_subscription_plan**
> set_user_subscription_plan(user_id, inventory_id, opts)

Set a new subscription plan for a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

opts = { 
  plan_id: "plan_id_example" # String | The id of the new plan. Must be from the same subscription
}

begin
  #Set a new subscription plan for a user
  api_instance.set_user_subscription_plan(user_id, inventory_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->set_user_subscription_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **inventory_id** | **Integer**| The id of the user&#39;s inventory | 
 **plan_id** | **String**| The id of the new plan. Must be from the same subscription | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



