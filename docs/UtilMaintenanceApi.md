# KnetikCloudClient::UtilMaintenanceApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_maintenance**](UtilMaintenanceApi.md#delete_maintenance) | **DELETE** /maintenance | Delete maintenance info
[**get_maintenance**](UtilMaintenanceApi.md#get_maintenance) | **GET** /maintenance | Get current maintenance info
[**set_maintenance**](UtilMaintenanceApi.md#set_maintenance) | **POST** /maintenance | Set current maintenance info
[**update_maintenance**](UtilMaintenanceApi.md#update_maintenance) | **PUT** /maintenance | Update current maintenance info


# **delete_maintenance**
> delete_maintenance

Delete maintenance info

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

api_instance = KnetikCloudClient::UtilMaintenanceApi.new

begin
  #Delete maintenance info
  api_instance.delete_maintenance
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UtilMaintenanceApi->delete_maintenance: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_maintenance**
> Maintenance get_maintenance

Get current maintenance info

Get current maintenance info. 404 if no maintenance.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::UtilMaintenanceApi.new

begin
  #Get current maintenance info
  result = api_instance.get_maintenance
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UtilMaintenanceApi->get_maintenance: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Maintenance**](Maintenance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_maintenance**
> set_maintenance(opts)

Set current maintenance info

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

api_instance = KnetikCloudClient::UtilMaintenanceApi.new

opts = { 
  maintenance: KnetikCloudClient::Maintenance.new # Maintenance | The maintenance object
}

begin
  #Set current maintenance info
  api_instance.set_maintenance(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UtilMaintenanceApi->set_maintenance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The maintenance object | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_maintenance**
> update_maintenance(opts)

Update current maintenance info

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

api_instance = KnetikCloudClient::UtilMaintenanceApi.new

opts = { 
  maintenance: KnetikCloudClient::Maintenance.new # Maintenance | The maintenance object
}

begin
  #Update current maintenance info
  api_instance.update_maintenance(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UtilMaintenanceApi->update_maintenance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The maintenance object | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



