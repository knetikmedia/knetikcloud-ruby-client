# KnetikCloudClient::UsersInventoryApi

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_item_to_user_inventory**](UsersInventoryApi.md#add_item_to_user_inventory) | **POST** /users/{id}/inventory | Adds an item to the user inventory
[**check_user_entitlement_item**](UsersInventoryApi.md#check_user_entitlement_item) | **GET** /users/{user_id}/entitlements/{item_id}/check | Check for access to an item without consuming
[**create_entitlement_item**](UsersInventoryApi.md#create_entitlement_item) | **POST** /entitlements | Create an entitlement item
[**create_entitlement_template**](UsersInventoryApi.md#create_entitlement_template) | **POST** /entitlements/templates | Create an entitlement template
[**delete_entitlement_item**](UsersInventoryApi.md#delete_entitlement_item) | **DELETE** /entitlements/{entitlement_id} | Delete an entitlement item
[**delete_entitlement_template**](UsersInventoryApi.md#delete_entitlement_template) | **DELETE** /entitlements/templates/{id} | Delete an entitlement template
[**get_entitlement_item**](UsersInventoryApi.md#get_entitlement_item) | **GET** /entitlements/{entitlement_id} | Get a single entitlement item
[**get_entitlement_items**](UsersInventoryApi.md#get_entitlement_items) | **GET** /entitlements | List and search entitlement items
[**get_entitlement_template**](UsersInventoryApi.md#get_entitlement_template) | **GET** /entitlements/templates/{id} | Get a single entitlement template
[**get_entitlement_templates**](UsersInventoryApi.md#get_entitlement_templates) | **GET** /entitlements/templates | List and search entitlement templates
[**get_user_inventories**](UsersInventoryApi.md#get_user_inventories) | **GET** /users/{id}/inventory | List the user inventory entries for a given user
[**get_user_inventory**](UsersInventoryApi.md#get_user_inventory) | **GET** /users/{user_id}/inventory/{id} | Get an inventory entry
[**get_user_inventory_log**](UsersInventoryApi.md#get_user_inventory_log) | **GET** /users/{user_id}/inventory/{id}/log | List the log entries for this inventory entry
[**get_users_inventory**](UsersInventoryApi.md#get_users_inventory) | **GET** /inventories | List the user inventory entries for all users
[**grant_user_entitlement**](UsersInventoryApi.md#grant_user_entitlement) | **POST** /users/{user_id}/entitlements | Grant an entitlement
[**update_entitlement_item**](UsersInventoryApi.md#update_entitlement_item) | **PUT** /entitlements/{entitlement_id} | Update an entitlement item
[**update_entitlement_template**](UsersInventoryApi.md#update_entitlement_template) | **PUT** /entitlements/templates/{id} | Update an entitlement template
[**update_user_inventory_behavior_data**](UsersInventoryApi.md#update_user_inventory_behavior_data) | **PUT** /users/{user_id}/inventory/{id}/behavior-data | Set the behavior data for an inventory entry
[**update_user_inventory_expires**](UsersInventoryApi.md#update_user_inventory_expires) | **PUT** /users/{user_id}/inventory/{id}/expires | Set the expiration date
[**update_user_inventory_status**](UsersInventoryApi.md#update_user_inventory_status) | **PUT** /users/{user_id}/inventory/{id}/status | Set the status for an inventory entry
[**use_user_entitlement_item**](UsersInventoryApi.md#use_user_entitlement_item) | **POST** /users/{user_id}/entitlements/{item_id}/use | Use an item


# **add_item_to_user_inventory**
> InvoiceResource add_item_to_user_inventory(id, opts)

Adds an item to the user inventory

The inventory is fulfilled asynchronously UNLESS the invoice is explicitely skipped. Depending on the use case, it might require the client to verify that the entitlement was added after the fact or configure a BRE rule to get a notification in real time

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

id = 56 # Integer | The id of the user

opts = { 
  user_inventory_add_request: KnetikCloudClient::UserInventoryAddRequest.new # UserInventoryAddRequest | The user inventory add request object
}

begin
  #Adds an item to the user inventory
  result = api_instance.add_item_to_user_inventory(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->add_item_to_user_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the user | 
 **user_inventory_add_request** | [**UserInventoryAddRequest**](UserInventoryAddRequest.md)| The user inventory add request object | [optional] 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check_user_entitlement_item**
> check_user_entitlement_item(user_id, item_id, opts)

Check for access to an item without consuming

Useful for pre-check and accounts for all various buisness rules

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

user_id = "user_id_example" # String | The id of the user to check for or 'me' for logged in user

item_id = 56 # Integer | The id of the item

opts = { 
  sku: "sku_example" # String | The specific sku of an entitlement list addition to check entitlement for. This is of very limited and specific use and should generally be left out
}

begin
  #Check for access to an item without consuming
  api_instance.check_user_entitlement_item(user_id, item_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->check_user_entitlement_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user to check for or &#39;me&#39; for logged in user | 
 **item_id** | **Integer**| The id of the item | 
 **sku** | **String**| The specific sku of an entitlement list addition to check entitlement for. This is of very limited and specific use and should generally be left out | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_entitlement_item**
> EntitlementItem create_entitlement_item(opts)

Create an entitlement item

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  entitlement_item: KnetikCloudClient::EntitlementItem.new # EntitlementItem | The entitlement item object
}

begin
  #Create an entitlement item
  result = api_instance.create_entitlement_item(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->create_entitlement_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **entitlement_item** | [**EntitlementItem**](EntitlementItem.md)| The entitlement item object | [optional] 

### Return type

[**EntitlementItem**](EntitlementItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_entitlement_template**
> ItemTemplateResource create_entitlement_template(opts)

Create an entitlement template

Entitlement templates define a type of entitlement and the properties they have

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

opts = { 
  template: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The entitlement template to be created
}

begin
  #Create an entitlement template
  result = api_instance.create_entitlement_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->create_entitlement_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**ItemTemplateResource**](ItemTemplateResource.md)| The entitlement template to be created | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_entitlement_item**
> delete_entitlement_item(entitlement_id)

Delete an entitlement item

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

entitlement_id = 56 # Integer | The id of the entitlement


begin
  #Delete an entitlement item
  api_instance.delete_entitlement_item(entitlement_id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->delete_entitlement_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_id** | **Integer**| The id of the entitlement | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_entitlement_template**
> delete_entitlement_template(id, opts)

Delete an entitlement template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete an entitlement template
  api_instance.delete_entitlement_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->delete_entitlement_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| The value needed to delete used templates | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_entitlement_item**
> EntitlementItem get_entitlement_item(entitlement_id)

Get a single entitlement item

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

entitlement_id = 56 # Integer | The id of the entitlement


begin
  #Get a single entitlement item
  result = api_instance.get_entitlement_item(entitlement_id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_entitlement_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_id** | **Integer**| The id of the entitlement | 

### Return type

[**EntitlementItem**](EntitlementItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_entitlement_items**
> PageResourceEntitlementItem get_entitlement_items(opts)

List and search entitlement items

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

opts = { 
  filter_template: "filter_template_example", # String | Filter for entitlements using a specified template
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search entitlement items
  result = api_instance.get_entitlement_items(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_entitlement_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_template** | **String**| Filter for entitlements using a specified template | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceEntitlementItem**](PageResourceEntitlementItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_entitlement_template**
> ItemTemplateResource get_entitlement_template(id)

Get a single entitlement template

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single entitlement template
  result = api_instance.get_entitlement_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_entitlement_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_entitlement_templates**
> PageResourceItemTemplateResource get_entitlement_templates(opts)

List and search entitlement templates

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search entitlement templates
  result = api_instance.get_entitlement_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_entitlement_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceItemTemplateResource**](PageResourceItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_inventories**
> PageResourceUserInventoryResource get_user_inventories(id, opts)

List the user inventory entries for a given user

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

id = 56 # Integer | The id of the user

opts = { 
  inactive: false, # BOOLEAN | If true, accepts inactive user inventories
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  filter_item_name: "filter_item_name_example", # String | Filter by items whose name starts with a string
  filter_item_id: 56, # Integer | Filter by item id
  filter_username: "filter_username_example", # String | Filter by entries owned by the user with the specified username
  filter_group: "filter_group_example", # String | Filter by entries owned by the users in a given group, by unique name
  filter_date: "filter_date_example" # String | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).
}

begin
  #List the user inventory entries for a given user
  result = api_instance.get_user_inventories(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_user_inventories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the user | 
 **inactive** | **BOOLEAN**| If true, accepts inactive user inventories | [optional] [default to false]
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **filter_item_name** | **String**| Filter by items whose name starts with a string | [optional] 
 **filter_item_id** | **Integer**| Filter by item id | [optional] 
 **filter_username** | **String**| Filter by entries owned by the user with the specified username | [optional] 
 **filter_group** | **String**| Filter by entries owned by the users in a given group, by unique name | [optional] 
 **filter_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 

### Return type

[**PageResourceUserInventoryResource**](PageResourceUserInventoryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_inventory**
> UserInventoryResource get_user_inventory(user_id, id)

Get an inventory entry

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

user_id = 56 # Integer | The id of the inventory owner or 'me' for the logged in user

id = 56 # Integer | The id of the user inventory


begin
  #Get an inventory entry
  result = api_instance.get_user_inventory(user_id, id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_user_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the inventory owner or &#39;me&#39; for the logged in user | 
 **id** | **Integer**| The id of the user inventory | 

### Return type

[**UserInventoryResource**](UserInventoryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_inventory_log**
> PageResourceUserItemLogResource get_user_inventory_log(user_id, id, opts)

List the log entries for this inventory entry

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

user_id = "user_id_example" # String | The id of the inventory owner or 'me' for the logged in user

id = 56 # Integer | The id of the user inventory

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List the log entries for this inventory entry
  result = api_instance.get_user_inventory_log(user_id, id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_user_inventory_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the inventory owner or &#39;me&#39; for the logged in user | 
 **id** | **Integer**| The id of the user inventory | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUserItemLogResource**](PageResourceUserItemLogResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_users_inventory**
> PageResourceUserInventoryResource get_users_inventory(opts)

List the user inventory entries for all users

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

opts = { 
  inactive: false, # BOOLEAN | If true, accepts inactive user inventories
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  filter_item_name: "filter_item_name_example", # String | Filter by items whose name starts with a string
  filter_item_id: 56, # Integer | Filter by item id
  filter_username: "filter_username_example", # String | Filter by entries owned by the user with the specified username
  filter_group: "filter_group_example", # String | Filter by entries owned by the users in a given group, by unique name
  filter_date: "filter_date_example" # String | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).
}

begin
  #List the user inventory entries for all users
  result = api_instance.get_users_inventory(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_users_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inactive** | **BOOLEAN**| If true, accepts inactive user inventories | [optional] [default to false]
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **filter_item_name** | **String**| Filter by items whose name starts with a string | [optional] 
 **filter_item_id** | **Integer**| Filter by item id | [optional] 
 **filter_username** | **String**| Filter by entries owned by the user with the specified username | [optional] 
 **filter_group** | **String**| Filter by entries owned by the users in a given group, by unique name | [optional] 
 **filter_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 

### Return type

[**PageResourceUserInventoryResource**](PageResourceUserInventoryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **grant_user_entitlement**
> grant_user_entitlement(user_id, grant_request)

Grant an entitlement

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

user_id = 56 # Integer | The id of the user to grant the entitlement to

grant_request = KnetikCloudClient::EntitlementGrantRequest.new # EntitlementGrantRequest | grantRequest


begin
  #Grant an entitlement
  api_instance.grant_user_entitlement(user_id, grant_request)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->grant_user_entitlement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user to grant the entitlement to | 
 **grant_request** | [**EntitlementGrantRequest**](EntitlementGrantRequest.md)| grantRequest | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_entitlement_item**
> update_entitlement_item(entitlement_id, opts)

Update an entitlement item

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

entitlement_id = 56 # Integer | The id of the entitlement

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  entitlement_item: KnetikCloudClient::EntitlementItem.new # EntitlementItem | The entitlement item object
}

begin
  #Update an entitlement item
  api_instance.update_entitlement_item(entitlement_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->update_entitlement_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_id** | **Integer**| The id of the entitlement | 
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **entitlement_item** | [**EntitlementItem**](EntitlementItem.md)| The entitlement item object | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_entitlement_template**
> ItemTemplateResource update_entitlement_template(id, opts)

Update an entitlement template

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

id = "id_example" # String | The id of the template

opts = { 
  template: KnetikCloudClient::ItemTemplateResource.new # ItemTemplateResource | The updated template
}

begin
  #Update an entitlement template
  result = api_instance.update_entitlement_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->update_entitlement_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **template** | [**ItemTemplateResource**](ItemTemplateResource.md)| The updated template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_inventory_behavior_data**
> update_user_inventory_behavior_data(user_id, id, opts)

Set the behavior data for an inventory entry

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

user_id = 56 # Integer | The id of the user

id = 56 # Integer | The id of the user inventory

opts = { 
  data: nil # Object | The data map
}

begin
  #Set the behavior data for an inventory entry
  api_instance.update_user_inventory_behavior_data(user_id, id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->update_user_inventory_behavior_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **id** | **Integer**| The id of the user inventory | 
 **data** | **Object**| The data map | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_inventory_expires**
> update_user_inventory_expires(user_id, id, opts)

Set the expiration date

Will change the current grace period for a subscription but not the bill date (possibly even ending before having the chance to re-bill)

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

user_id = 56 # Integer | user_id

id = 56 # Integer | The id of the user inventory

opts = { 
  timestamp: 789 # Integer | The new expiration date as a unix timestamp in seconds. May be null (no body).
}

begin
  #Set the expiration date
  api_instance.update_user_inventory_expires(user_id, id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->update_user_inventory_expires: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| user_id | 
 **id** | **Integer**| The id of the user inventory | 
 **timestamp** | **Integer**| The new expiration date as a unix timestamp in seconds. May be null (no body). | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_inventory_status**
> update_user_inventory_status(user_id, id, opts)

Set the status for an inventory entry

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

user_id = 56 # Integer | The id of the user

id = 56 # Integer | The id of the user inventory

opts = { 
  inventory_status: "inventory_status_example" # String | The inventory status object
}

begin
  #Set the status for an inventory entry
  api_instance.update_user_inventory_status(user_id, id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->update_user_inventory_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **id** | **Integer**| The id of the user inventory | 
 **inventory_status** | **String**| The inventory status object | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **use_user_entitlement_item**
> use_user_entitlement_item(user_id, item_id, opts)

Use an item

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

api_instance = KnetikCloudClient::UsersInventoryApi.new

user_id = "user_id_example" # String | The id of the user to check for or 'me' for logged in user

item_id = 56 # Integer | The id of the item

opts = { 
  sku: "sku_example", # String | The specific sku of an entitlement_list addition to check entitlement for. This is of very limited and specific use and should generally be left out
  info: "info_example" # String | Any additional info to add to the log about this use
}

begin
  #Use an item
  api_instance.use_user_entitlement_item(user_id, item_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->use_user_entitlement_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user to check for or &#39;me&#39; for logged in user | 
 **item_id** | **Integer**| The id of the item | 
 **sku** | **String**| The specific sku of an entitlement_list addition to check entitlement for. This is of very limited and specific use and should generally be left out | [optional] 
 **info** | **String**| Any additional info to add to the log about this use | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



