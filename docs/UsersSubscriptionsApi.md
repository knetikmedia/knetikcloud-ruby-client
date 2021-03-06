# KnetikCloudClient::UsersSubscriptionsApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_subscription_details**](UsersSubscriptionsApi.md#get_user_subscription_details) | **GET** /users/{user_id}/subscriptions/{inventory_id} | Get details about a user&#39;s subscription
[**get_users_subscription_details**](UsersSubscriptionsApi.md#get_users_subscription_details) | **GET** /users/{user_id}/subscriptions | Get details about a user&#39;s subscriptions
[**reactivate_user_subscription**](UsersSubscriptionsApi.md#reactivate_user_subscription) | **POST** /users/{user_id}/subscriptions/{inventory_id}/reactivate | Reactivate a subscription and charge fee
[**set_subscription_bill_date**](UsersSubscriptionsApi.md#set_subscription_bill_date) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/bill-date | Set a new date to bill a subscription on
[**set_subscription_payment_method**](UsersSubscriptionsApi.md#set_subscription_payment_method) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/payment-method | Set the payment method to use for a subscription
[**set_subscription_status**](UsersSubscriptionsApi.md#set_subscription_status) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/status | Set the status of a subscription
[**set_user_subscription_plan**](UsersSubscriptionsApi.md#set_user_subscription_plan) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/plan | Set a new subscription plan for a user
[**set_user_subscription_price**](UsersSubscriptionsApi.md#set_user_subscription_price) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/price-override | Set a new subscription price for a user


# **get_user_subscription_details**
> InventorySubscriptionResource get_user_subscription_details(user_id, inventory_id)

Get details about a user's subscription

<b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN or owner

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

api_instance = KnetikCloudClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory


begin
  #Get details about a user's subscription
  result = api_instance.get_user_subscription_details(user_id, inventory_id)
  p result
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users_subscription_details**
> Array&lt;InventorySubscriptionResource&gt; get_users_subscription_details(user_id)

Get details about a user's subscriptions

<b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN or owner

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

api_instance = KnetikCloudClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user


begin
  #Get details about a user's subscriptions
  result = api_instance.get_users_subscription_details(user_id)
  p result
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reactivate_user_subscription**
> InvoiceResource reactivate_user_subscription(user_id, inventory_id, opts)

Reactivate a subscription and charge fee

<b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN

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

api_instance = KnetikCloudClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

opts = { 
  reactivate_subscription_request: KnetikCloudClient::ReactivateSubscriptionRequest.new # ReactivateSubscriptionRequest | The reactivate subscription request object inventory
}

begin
  #Reactivate a subscription and charge fee
  result = api_instance.reactivate_user_subscription(user_id, inventory_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_subscription_bill_date**
> set_subscription_bill_date(user_id, inventory_id, bill_date)

Set a new date to bill a subscription on

<b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN

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

api_instance = KnetikCloudClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

bill_date = 789 # Integer | The new bill date. Unix timestamp in seconds


begin
  #Set a new date to bill a subscription on
  api_instance.set_subscription_bill_date(user_id, inventory_id, bill_date)
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_subscription_payment_method**
> set_subscription_payment_method(user_id, inventory_id, opts)

Set the payment method to use for a subscription

May send null to use floating default. <br><br><b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN or owner

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

api_instance = KnetikCloudClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

opts = { 
  payment_method_id: KnetikCloudClient::IntWrapper.new # IntWrapper | The id of the payment method
}

begin
  #Set the payment method to use for a subscription
  api_instance.set_subscription_payment_method(user_id, inventory_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->set_subscription_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **inventory_id** | **Integer**| The id of the user&#39;s inventory | 
 **payment_method_id** | [**IntWrapper**](IntWrapper.md)| The id of the payment method | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_subscription_status**
> set_subscription_status(user_id, inventory_id, status)

Set the status of a subscription

Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases. <br><br><b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN or owner

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

api_instance = KnetikCloudClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

status = KnetikCloudClient::SubscriptionStatusWrapper.new # SubscriptionStatusWrapper | The new status for the subscription


begin
  #Set the status of a subscription
  api_instance.set_subscription_status(user_id, inventory_id, status)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->set_subscription_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **inventory_id** | **Integer**| The id of the user&#39;s inventory | 
 **status** | [**SubscriptionStatusWrapper**](SubscriptionStatusWrapper.md)| The new status for the subscription | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_user_subscription_plan**
> set_user_subscription_plan(user_id, inventory_id, opts)

Set a new subscription plan for a user

<b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN

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

api_instance = KnetikCloudClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

opts = { 
  plan_id: KnetikCloudClient::StringWrapper.new # StringWrapper | The id of the new plan. Must be from the same subscription
}

begin
  #Set a new subscription plan for a user
  api_instance.set_user_subscription_plan(user_id, inventory_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->set_user_subscription_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **inventory_id** | **Integer**| The id of the user&#39;s inventory | 
 **plan_id** | [**StringWrapper**](StringWrapper.md)| The id of the new plan. Must be from the same subscription | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_user_subscription_price**
> set_user_subscription_price(user_id, inventory_id, opts)

Set a new subscription price for a user

This new price will be what the user is charged at the begining of each new period. This override is specific to the current subscription and will not carry over if they end and later re-subscribe. It will persist if the plan is changed using the setUserSubscriptionPlan endpoint. <br><br><b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN

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

api_instance = KnetikCloudClient::UsersSubscriptionsApi.new

user_id = 56 # Integer | The id of the user

inventory_id = 56 # Integer | The id of the user's inventory

opts = { 
  the_override_details: KnetikCloudClient::SubscriptionPriceOverrideRequest.new # SubscriptionPriceOverrideRequest | override
}

begin
  #Set a new subscription price for a user
  api_instance.set_user_subscription_price(user_id, inventory_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersSubscriptionsApi->set_user_subscription_price: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **inventory_id** | **Integer**| The id of the user&#39;s inventory | 
 **the_override_details** | [**SubscriptionPriceOverrideRequest**](SubscriptionPriceOverrideRequest.md)| override | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



