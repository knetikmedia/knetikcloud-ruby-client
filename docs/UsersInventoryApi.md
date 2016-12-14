# SwaggerClient::UsersInventoryApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_item_using_post1**](UsersInventoryApi.md#add_item_using_post1) | **POST** /users/{id}/inventory | Adds an item to the user inventory
[**create_item_using_post**](UsersInventoryApi.md#create_item_using_post) | **POST** /entitlements | Create an entitlement item
[**delete_item_using_delete**](UsersInventoryApi.md#delete_item_using_delete) | **DELETE** /entitlements/{entitlement_id} | Delete an entitlement item
[**entitlement_check_using_get**](UsersInventoryApi.md#entitlement_check_using_get) | **GET** /users/{user_id}/entitlements/{item_id}/check | Check for access to an item without consuming
[**entitlement_use_using_post**](UsersInventoryApi.md#entitlement_use_using_post) | **POST** /users/{user_id}/entitlements/{item_id}/use | Use an item
[**get_currencies_using_get1**](UsersInventoryApi.md#get_currencies_using_get1) | **GET** /entitlements | List and search entitlement items
[**get_inventory_list_using_get**](UsersInventoryApi.md#get_inventory_list_using_get) | **GET** /inventories | List the user inventory entries for all users
[**get_inventory_using_get**](UsersInventoryApi.md#get_inventory_using_get) | **GET** /users/{user_id}/inventory/{id} | Get an inventory entry
[**get_item_using_get**](UsersInventoryApi.md#get_item_using_get) | **GET** /entitlements/{entitlement_id} | Get a single entitlement item
[**get_user_inventory_list_using_get**](UsersInventoryApi.md#get_user_inventory_list_using_get) | **GET** /users/{id}/inventory | List the user inventory entries for a given user
[**get_user_inventory_log_using_get**](UsersInventoryApi.md#get_user_inventory_log_using_get) | **GET** /users/{user_id}/inventory/{id}/log | List the log entries for this inventory entry.
[**update_item_using_put1**](UsersInventoryApi.md#update_item_using_put1) | **PUT** /entitlements/{entitlement_id} | Update an entitlement item
[**update_user_inventory_behavior_data_using_put**](UsersInventoryApi.md#update_user_inventory_behavior_data_using_put) | **PUT** /users/{user_id}/inventory/{id}/behavior-data | Set the behavior data for an inventory entry
[**update_user_inventory_expires_using_put**](UsersInventoryApi.md#update_user_inventory_expires_using_put) | **PUT** /users/{user_id}/inventory/{id}/expires | Set the expiration date
[**update_user_inventory_status_using_put**](UsersInventoryApi.md#update_user_inventory_status_using_put) | **PUT** /users/{user_id}/inventory/{id}/status | Set the status for an inventory entry


# **add_item_using_post1**
> InvoiceResource add_item_using_post1(id, opts)

Adds an item to the user inventory

The inventory is fulfilled asynchronously UNLESS the invoice is explicitely skipped. Depending on the use case, it might require the client to verify that the entitlement was added after the fact or configure a BRE rule to get a notification in real time

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

id = 56 # Integer | The id of the user

opts = { 
  user_inventory_add_request: SwaggerClient::UserInventoryAddRequest.new # UserInventoryAddRequest | The user inventory add request object
}

begin
  #Adds an item to the user inventory
  result = api_instance.add_item_using_post1(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->add_item_using_post1: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create_item_using_post**
> EntitlementItem create_item_using_post(opts)

Create an entitlement item

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

opts = { 
  entitlement_item: SwaggerClient::EntitlementItem.new # EntitlementItem | The entitlement item object
}

begin
  #Create an entitlement item
  result = api_instance.create_item_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->create_item_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_item** | [**EntitlementItem**](EntitlementItem.md)| The entitlement item object | [optional] 

### Return type

[**EntitlementItem**](EntitlementItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_item_using_delete**
> delete_item_using_delete(entitlement_id)

Delete an entitlement item

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

entitlement_id = 56 # Integer | The id of the entitlement


begin
  #Delete an entitlement item
  api_instance.delete_item_using_delete(entitlement_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->delete_item_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_id** | **Integer**| The id of the entitlement | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **entitlement_check_using_get**
> entitlement_check_using_get(user_id, item_id, opts)

Check for access to an item without consuming

Useful for pre-check and accounts for all various buisness rules

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

user_id = "user_id_example" # String | The id of the user to check for or 'me' for logged in user

item_id = 56 # Integer | The id of the item

opts = { 
  sku: "sku_example" # String | The specific sku of an entitlement list addition to check entitlement for. This is of very limited and specific use and should generally be left out
}

begin
  #Check for access to an item without consuming
  api_instance.entitlement_check_using_get(user_id, item_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->entitlement_check_using_get: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **entitlement_use_using_post**
> entitlement_use_using_post(user_id, item_id, opts)

Use an item

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

user_id = "user_id_example" # String | The id of the user to check for or 'me' for logged in user

item_id = 56 # Integer | The id of the item

opts = { 
  sku: "sku_example", # String | The specific sku of an entitlement_list addition to check entitlement for. This is of very limited and specific use and should generally be left out
  info: "info_example" # String | Any additional info to add to the log about this use
}

begin
  #Use an item
  api_instance.entitlement_use_using_post(user_id, item_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->entitlement_use_using_post: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_currencies_using_get1**
> PageEntitlementItem get_currencies_using_get1(opts)

List and search entitlement items

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search entitlement items
  result = api_instance.get_currencies_using_get1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_currencies_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageEntitlementItem**](PageEntitlementItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_inventory_list_using_get**
> PageUserInventoryResource get_inventory_list_using_get(opts)

List the user inventory entries for all users

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

opts = { 
  inactive: false, # BOOLEAN | If true, accepts inactive user inventories
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  filter_item_name: "filter_item_name_example", # String | Filter by items whose name starts with a string
  filter_min_date: 789, # Integer | Filter for inventory added after the specified date, unix timestamp in seconds
  filter_max_date: 789 # Integer | Filter for inventory added before the specified date, unix timestamp in seconds
}

begin
  #List the user inventory entries for all users
  result = api_instance.get_inventory_list_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_inventory_list_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inactive** | **BOOLEAN**| If true, accepts inactive user inventories | [optional] [default to false]
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **filter_item_name** | **String**| Filter by items whose name starts with a string | [optional] 
 **filter_min_date** | **Integer**| Filter for inventory added after the specified date, unix timestamp in seconds | [optional] 
 **filter_max_date** | **Integer**| Filter for inventory added before the specified date, unix timestamp in seconds | [optional] 

### Return type

[**PageUserInventoryResource**](PageUserInventoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_inventory_using_get**
> UserInventoryResource get_inventory_using_get(user_id, id)

Get an inventory entry

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

user_id = 56 # Integer | The id of the inventory owner or 'me' for the logged in user

id = 56 # Integer | The id of the user inventory


begin
  #Get an inventory entry
  result = api_instance.get_inventory_using_get(user_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_inventory_using_get: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_item_using_get**
> EntitlementItem get_item_using_get(entitlement_id)

Get a single entitlement item

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

entitlement_id = 56 # Integer | The id of the entitlement


begin
  #Get a single entitlement item
  result = api_instance.get_item_using_get(entitlement_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_item_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_id** | **Integer**| The id of the entitlement | 

### Return type

[**EntitlementItem**](EntitlementItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_user_inventory_list_using_get**
> PageUserInventoryResource get_user_inventory_list_using_get(id, opts)

List the user inventory entries for a given user

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

id = 56 # Integer | The id of the user

opts = { 
  inactive: false, # BOOLEAN | If true, accepts inactive user inventories
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  filter_item_name: "filter_item_name_example", # String | Filter by items whose name starts with a string
  filter_min_date: 789, # Integer | Filter for inventory added after the specified date, unix timestamp in seconds
  filter_max_date: 789 # Integer | Filter for inventory added before the specified date, unix timestamp in seconds
}

begin
  #List the user inventory entries for a given user
  result = api_instance.get_user_inventory_list_using_get(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_user_inventory_list_using_get: #{e}"
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
 **filter_min_date** | **Integer**| Filter for inventory added after the specified date, unix timestamp in seconds | [optional] 
 **filter_max_date** | **Integer**| Filter for inventory added before the specified date, unix timestamp in seconds | [optional] 

### Return type

[**PageUserInventoryResource**](PageUserInventoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_user_inventory_log_using_get**
> PageUserItemLogResource get_user_inventory_log_using_get(user_id, id, opts)

List the log entries for this inventory entry.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

user_id = "user_id_example" # String | The id of the inventory owner or 'me' for the logged in user

id = 56 # Integer | The id of the user inventory

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List the log entries for this inventory entry.
  result = api_instance.get_user_inventory_log_using_get(user_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->get_user_inventory_log_using_get: #{e}"
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

[**PageUserItemLogResource**](PageUserItemLogResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_item_using_put1**
> update_item_using_put1(entitlement_id, opts)

Update an entitlement item

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

entitlement_id = 56 # Integer | The id of the entitlement

opts = { 
  entitlement_item: SwaggerClient::EntitlementItem.new # EntitlementItem | The entitlement item object
}

begin
  #Update an entitlement item
  api_instance.update_item_using_put1(entitlement_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->update_item_using_put1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitlement_id** | **Integer**| The id of the entitlement | 
 **entitlement_item** | [**EntitlementItem**](EntitlementItem.md)| The entitlement item object | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_user_inventory_behavior_data_using_put**
> update_user_inventory_behavior_data_using_put(user_id, id, opts)

Set the behavior data for an inventory entry

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

user_id = 56 # Integer | The id of the user

id = 56 # Integer | The id of the user inventory

opts = { 
  data: nil # Object | The data map
}

begin
  #Set the behavior data for an inventory entry
  api_instance.update_user_inventory_behavior_data_using_put(user_id, id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->update_user_inventory_behavior_data_using_put: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_user_inventory_expires_using_put**
> update_user_inventory_expires_using_put(user_id, id, opts)

Set the expiration date

Will change the current grace period for a subscription but not the bill date (possibly even ending before having the chance to re-bill)

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

user_id = 56 # Integer | user_id

id = 56 # Integer | The id of the user inventory

opts = { 
  timestamp: 789 # Integer | The new expiration date as a unix timestamp in seconds. May be null (no body).
}

begin
  #Set the expiration date
  api_instance.update_user_inventory_expires_using_put(user_id, id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->update_user_inventory_expires_using_put: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_user_inventory_status_using_put**
> update_user_inventory_status_using_put(user_id, id, opts)

Set the status for an inventory entry

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersInventoryApi.new

user_id = 56 # Integer | The id of the user

id = 56 # Integer | The id of the user inventory

opts = { 
  inventory_status: "inventory_status_example" # String | The inventory status object
}

begin
  #Set the status for an inventory entry
  api_instance.update_user_inventory_status_using_put(user_id, id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersInventoryApi->update_user_inventory_status_using_put: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



