# SwaggerClient::UsersAddressesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_address_using_post**](UsersAddressesApi.md#create_address_using_post) | **POST** /users/{user_id}/addresses | Save a new address
[**delete_address_using_delete**](UsersAddressesApi.md#delete_address_using_delete) | **DELETE** /users/{user_id}/addresses/{id} | Delete an address
[**get_address_using_get**](UsersAddressesApi.md#get_address_using_get) | **GET** /users/{user_id}/addresses/{id} | Get a single address
[**get_addresses_using_get**](UsersAddressesApi.md#get_addresses_using_get) | **GET** /users/{user_id}/addresses | List and search addresses
[**update_address_using_put**](UsersAddressesApi.md#update_address_using_put) | **PUT** /users/{user_id}/addresses/{id} | Update an address


# **create_address_using_post**
> SavedAddressResource create_address_using_post(user_id, opts)

Save a new address

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersAddressesApi.new

user_id = "user_id_example" # String | The id of the user

opts = { 
  saved_address_resource: SwaggerClient::SavedAddressResource.new # SavedAddressResource | The new address
}

begin
  #Save a new address
  result = api_instance.create_address_using_post(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersAddressesApi->create_address_using_post: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_address_using_delete**
> delete_address_using_delete(user_id, id)

Delete an address

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersAddressesApi.new

user_id = "user_id_example" # String | The id of the user

id = 56 # Integer | The id of the address


begin
  #Delete an address
  api_instance.delete_address_using_delete(user_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersAddressesApi->delete_address_using_delete: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_address_using_get**
> SavedAddressResource get_address_using_get(user_id, id)

Get a single address

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersAddressesApi.new

user_id = "user_id_example" # String | The id of the user

id = 56 # Integer | The id of the address


begin
  #Get a single address
  result = api_instance.get_address_using_get(user_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersAddressesApi->get_address_using_get: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_addresses_using_get**
> PageResourceSavedAddressResource get_addresses_using_get(user_id, opts)

List and search addresses

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersAddressesApi.new

user_id = "user_id_example" # String | The id of the user

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search addresses
  result = api_instance.get_addresses_using_get(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersAddressesApi->get_addresses_using_get: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_address_using_put**
> update_address_using_put(user_id, id, opts)

Update an address

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersAddressesApi.new

user_id = "user_id_example" # String | The id of the user

id = 56 # Integer | The id of the address

opts = { 
  saved_address_resource: SwaggerClient::SavedAddressResource.new # SavedAddressResource | The saved address resource object
}

begin
  #Update an address
  api_instance.update_address_using_put(user_id, id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersAddressesApi->update_address_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user | 
 **id** | **Integer**| The id of the address | 
 **saved_address_resource** | [**SavedAddressResource**](SavedAddressResource.md)| The saved address resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



