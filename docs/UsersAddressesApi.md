# KnetikCloudClient::UsersAddressesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_address**](UsersAddressesApi.md#create_address) | **POST** /users/{user_id}/addresses | Create a new address
[**delete_address**](UsersAddressesApi.md#delete_address) | **DELETE** /users/{user_id}/addresses/{id} | Delete an address
[**get_address**](UsersAddressesApi.md#get_address) | **GET** /users/{user_id}/addresses/{id} | Get a single address
[**get_addresses**](UsersAddressesApi.md#get_addresses) | **GET** /users/{user_id}/addresses | List and search addresses
[**update_address**](UsersAddressesApi.md#update_address) | **PUT** /users/{user_id}/addresses/{id} | Update an address


# **create_address**
> SavedAddressResource create_address(user_id, opts)

Create a new address

<b>Permissions Needed:</b> USERS_ADMIN or owner

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

api_instance = KnetikCloudClient::UsersAddressesApi.new

user_id = "user_id_example" # String | The id of the user

opts = { 
  saved_address_resource: KnetikCloudClient::SavedAddressResource.new # SavedAddressResource | The new address
}

begin
  #Create a new address
  result = api_instance.create_address(user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersAddressesApi->create_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user | 
 **saved_address_resource** | [**SavedAddressResource**](SavedAddressResource.md)| The new address | [optional] 

### Return type

[**SavedAddressResource**](SavedAddressResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_address**
> delete_address(user_id, id)

Delete an address

<b>Permissions Needed:</b> USERS_ADMIN or owner

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

api_instance = KnetikCloudClient::UsersAddressesApi.new

user_id = "user_id_example" # String | The id of the user

id = 56 # Integer | The id of the address


begin
  #Delete an address
  api_instance.delete_address(user_id, id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersAddressesApi->delete_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user | 
 **id** | **Integer**| The id of the address | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_address**
> SavedAddressResource get_address(user_id, id)

Get a single address

<b>Permissions Needed:</b> USERS_ADMIN or owner

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

api_instance = KnetikCloudClient::UsersAddressesApi.new

user_id = "user_id_example" # String | The id of the user

id = 56 # Integer | The id of the address


begin
  #Get a single address
  result = api_instance.get_address(user_id, id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersAddressesApi->get_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user | 
 **id** | **Integer**| The id of the address | 

### Return type

[**SavedAddressResource**](SavedAddressResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_addresses**
> PageResourceSavedAddressResource get_addresses(user_id, opts)

List and search addresses

<b>Permissions Needed:</b> USERS_ADMIN or owner

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

api_instance = KnetikCloudClient::UsersAddressesApi.new

user_id = "user_id_example" # String | The id of the user

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search addresses
  result = api_instance.get_addresses(user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersAddressesApi->get_addresses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceSavedAddressResource**](PageResourceSavedAddressResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_address**
> SavedAddressResource update_address(user_id, id, opts)

Update an address

<b>Permissions Needed:</b> USERS_ADMIN or owner

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

api_instance = KnetikCloudClient::UsersAddressesApi.new

user_id = "user_id_example" # String | The id of the user

id = 56 # Integer | The id of the address

opts = { 
  saved_address_resource: KnetikCloudClient::SavedAddressResource.new # SavedAddressResource | The saved address resource object
}

begin
  #Update an address
  result = api_instance.update_address(user_id, id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersAddressesApi->update_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user | 
 **id** | **Integer**| The id of the address | 
 **saved_address_resource** | [**SavedAddressResource**](SavedAddressResource.md)| The saved address resource object | [optional] 

### Return type

[**SavedAddressResource**](SavedAddressResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



