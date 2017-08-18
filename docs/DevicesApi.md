# KnetikCloudClient::DevicesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_device_users**](DevicesApi.md#add_device_users) | **POST** /devices/{id}/users | Add device users
[**create_device**](DevicesApi.md#create_device) | **POST** /devices | Create a device
[**delete_device**](DevicesApi.md#delete_device) | **DELETE** /devices/{id} | Delete a device
[**delete_device_user**](DevicesApi.md#delete_device_user) | **DELETE** /devices/{id}/users/{user_id} | Delete a device user
[**delete_device_users**](DevicesApi.md#delete_device_users) | **DELETE** /devices/{id}/users | Delete all device users
[**get_device**](DevicesApi.md#get_device) | **GET** /devices/{id} | Get a single device
[**get_devices**](DevicesApi.md#get_devices) | **GET** /devices | List and search devices
[**update_device**](DevicesApi.md#update_device) | **PUT** /devices/{id} | Update a device


# **add_device_users**
> DeviceResource add_device_users(user_resources, id)

Add device users

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

api_instance = KnetikCloudClient::DevicesApi.new

user_resources = [KnetikCloudClient::SimpleUserResource.new] # Array<SimpleUserResource> | userResources

id = 56 # Integer | id


begin
  #Add device users
  result = api_instance.add_device_users(user_resources, id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DevicesApi->add_device_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_resources** | [**Array&lt;SimpleUserResource&gt;**](SimpleUserResource.md)| userResources | 
 **id** | **Integer**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_device**
> DeviceResource create_device(device)

Create a device

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

api_instance = KnetikCloudClient::DevicesApi.new

device = KnetikCloudClient::DeviceResource.new # DeviceResource | device


begin
  #Create a device
  result = api_instance.create_device(device)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DevicesApi->create_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_device**
> delete_device(id)

Delete a device

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

api_instance = KnetikCloudClient::DevicesApi.new

id = 56 # Integer | id


begin
  #Delete a device
  api_instance.delete_device(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DevicesApi->delete_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_device_user**
> delete_device_user(id, user_id)

Delete a device user

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

api_instance = KnetikCloudClient::DevicesApi.new

id = 56 # Integer | The id of the device

user_id = 56 # Integer | The user id of the device user


begin
  #Delete a device user
  api_instance.delete_device_user(id, user_id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DevicesApi->delete_device_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the device | 
 **user_id** | **Integer**| The user id of the device user | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_device_users**
> delete_device_users(id, opts)

Delete all device users

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

api_instance = KnetikCloudClient::DevicesApi.new

id = 56 # Integer | The id of the device

opts = { 
  filter_id: "filter_id_example" # String | Filter for device users to delete with a user id in a given comma separated list of ids
}

begin
  #Delete all device users
  api_instance.delete_device_users(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DevicesApi->delete_device_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the device | 
 **filter_id** | **String**| Filter for device users to delete with a user id in a given comma separated list of ids | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_device**
> DeviceResource get_device(id)

Get a single device

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

api_instance = KnetikCloudClient::DevicesApi.new

id = 56 # Integer | id


begin
  #Get a single device
  result = api_instance.get_device(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DevicesApi->get_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_devices**
> PageResourceDeviceResource get_devices(opts)

List and search devices

Get a list of devices with optional filtering

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

api_instance = KnetikCloudClient::DevicesApi.new

opts = { 
  filter_make: "filter_make_example", # String | Filter for devices with specified make
  filter_model: "filter_model_example", # String | Filter for devices with specified model
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search devices
  result = api_instance.get_devices(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DevicesApi->get_devices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_make** | **String**| Filter for devices with specified make | [optional] 
 **filter_model** | **String**| Filter for devices with specified model | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceDeviceResource**](PageResourceDeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_device**
> DeviceResource update_device(device, id)

Update a device

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

api_instance = KnetikCloudClient::DevicesApi.new

device = KnetikCloudClient::DeviceResource.new # DeviceResource | device

id = 56 # Integer | id


begin
  #Update a device
  result = api_instance.update_device(device, id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling DevicesApi->update_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 
 **id** | **Integer**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



