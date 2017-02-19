# SwaggerClient::StoreApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_item_template**](StoreApi.md#create_item_template) | **POST** /store/items/templates | Create an item template
[**create_store_item**](StoreApi.md#create_store_item) | **POST** /store/items | Create a store item
[**delete_item_template**](StoreApi.md#delete_item_template) | **DELETE** /store/items/templates/{id} | Delete an item template
[**delete_store_item**](StoreApi.md#delete_store_item) | **DELETE** /store/items/{id} | Delete a store item
[**get_item_template**](StoreApi.md#get_item_template) | **GET** /store/items/templates/{id} | Get a single item template
[**get_item_templates**](StoreApi.md#get_item_templates) | **GET** /store/items/templates | List and search item templates
[**get_store**](StoreApi.md#get_store) | **GET** /store | Get a listing of store items
[**get_store_item**](StoreApi.md#get_store_item) | **GET** /store/items/{id} | Get a single store item
[**get_store_items**](StoreApi.md#get_store_items) | **GET** /store/items | List and search store items
[**update_item_template**](StoreApi.md#update_item_template) | **PUT** /store/items/templates/{id} | Update an item template
[**update_store_item**](StoreApi.md#update_store_item) | **PUT** /store/items/{id} | Update a store item


# **create_item_template**
> StoreItemTemplateResource create_item_template(opts)

Create an item template

Item Templates define a type of item and the properties they have.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreApi.new

opts = { 
  item_template_resource: SwaggerClient::StoreItemTemplateResource.new # StoreItemTemplateResource | The new item template
}

begin
  #Create an item template
  result = api_instance.create_item_template(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->create_item_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_template_resource** | [**StoreItemTemplateResource**](StoreItemTemplateResource.md)| The new item template | [optional] 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_store_item**
> StoreItem create_store_item(opts)

Create a store item

SKUs have to be unique in the entire store. If a duplicate SKU is found, a 400 error is generated and the response will have a \"parameters\" field that is a list of duplicates. A duplicate is an object like {item_id, offending_sku_list}. Ex:<br /> {..., parameters: [[{item: 1, skus: [\"SKU-1\"]}]]}<br /> If an item is brand new and has duplicate SKUs within itself, the item ID will be 0.  Item subclasses are not allowed here, you will have to use their respective endpoints.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreApi.new

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  store_item: SwaggerClient::StoreItem.new # StoreItem | The store item object
}

begin
  #Create a store item
  result = api_instance.create_store_item(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->create_store_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **store_item** | [**StoreItem**](StoreItem.md)| The store item object | [optional] 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_item_template**
> delete_item_template(id, opts)

Delete an item template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | force deleting the template if it's attached to other objects, cascade = detach
}

begin
  #Delete an item template
  api_instance.delete_item_template(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->delete_item_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_store_item**
> delete_store_item(id)

Delete a store item

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreApi.new

id = 56 # Integer | The id of the item


begin
  #Delete a store item
  api_instance.delete_store_item(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->delete_store_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the item | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_item_template**
> StoreItemTemplateResource get_item_template(id)

Get a single item template

Item Templates define a type of item and the properties they have.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single item template
  result = api_instance.get_item_template(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->get_item_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_item_templates**
> PageResourceStoreItemTemplateResource get_item_templates(opts)

List and search item templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search item templates
  result = api_instance.get_item_templates(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->get_item_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceStoreItemTemplateResource**](PageResourceStoreItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_store**
> PageResourceStoreItem get_store(opts)

Get a listing of store items

The exact structure of each items may differ to include fields specific to the type. The same is true for behaviors.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreApi.new

opts = { 
  limit: 56, # Integer | The amount of items returned
  page: 56, # Integer | The page of the request
  use_catalog: true, # BOOLEAN | Whether to remove items that are not intended for display or not in date
  ignore_location: true, # BOOLEAN | Whether to ignore country restrictions based on the caller's location
  in_stock_only: false # BOOLEAN | Whether only in-stock items should be returned.  Default value is false
}

begin
  #Get a listing of store items
  result = api_instance.get_store(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->get_store: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The amount of items returned | [optional] 
 **page** | **Integer**| The page of the request | [optional] 
 **use_catalog** | **BOOLEAN**| Whether to remove items that are not intended for display or not in date | [optional] 
 **ignore_location** | **BOOLEAN**| Whether to ignore country restrictions based on the caller&#39;s location | [optional] 
 **in_stock_only** | **BOOLEAN**| Whether only in-stock items should be returned.  Default value is false | [optional] [default to false]

### Return type

[**PageResourceStoreItem**](PageResourceStoreItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_store_item**
> StoreItem get_store_item(id)

Get a single store item

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreApi.new

id = 56 # Integer | The id of the item


begin
  #Get a single store item
  result = api_instance.get_store_item(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->get_store_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the item | 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_store_items**
> PageResourceStoreItem get_store_items(opts)

List and search store items

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreApi.new

opts = { 
  filter_name_search: "filter_name_search_example", # String | Filter for items whose name starts with a given string.
  filter_unique_key: "filter_unique_key_example", # String | Filter for items whose unique_key is a given string.
  filter_published: true, # BOOLEAN | Filter for skus that have been published.
  filter_displayable: true, # BOOLEAN | Filter for items that are displayable.
  filter_start: "filter_start_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
  filter_end: "filter_end_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
  filter_start_date: "filter_start_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
  filter_stop_date: "filter_stop_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
  filter_sku: "filter_sku_example", # String | Filter for skus whose name starts with a given string.
  filter_price: "filter_price_example", # String | A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ).
  filter_tag: "filter_tag_example", # String | A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags.
  filter_items_by_type: "filter_items_by_type_example", # String | Filter for item type based on its type hint.
  filter_bundled_skus: "filter_bundled_skus_example", # String | Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is 'bundle_item'
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search store items
  result = api_instance.get_store_items(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->get_store_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_name_search** | **String**| Filter for items whose name starts with a given string. | [optional] 
 **filter_unique_key** | **String**| Filter for items whose unique_key is a given string. | [optional] 
 **filter_published** | **BOOLEAN**| Filter for skus that have been published. | [optional] 
 **filter_displayable** | **BOOLEAN**| Filter for items that are displayable. | [optional] 
 **filter_start** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filter_end** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filter_start_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filter_stop_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filter_sku** | **String**| Filter for skus whose name starts with a given string. | [optional] 
 **filter_price** | **String**| A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ). | [optional] 
 **filter_tag** | **String**| A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags. | [optional] 
 **filter_items_by_type** | **String**| Filter for item type based on its type hint. | [optional] 
 **filter_bundled_skus** | **String**| Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is &#39;bundle_item&#39; | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceStoreItem**](PageResourceStoreItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_item_template**
> StoreItemTemplateResource update_item_template(id, opts)

Update an item template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreApi.new

id = "id_example" # String | The id of the template

opts = { 
  item_template_resource: SwaggerClient::StoreItemTemplateResource.new # StoreItemTemplateResource | The item template resource object
}

begin
  #Update an item template
  result = api_instance.update_item_template(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->update_item_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **item_template_resource** | [**StoreItemTemplateResource**](StoreItemTemplateResource.md)| The item template resource object | [optional] 

### Return type

[**StoreItemTemplateResource**](StoreItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_store_item**
> StoreItem update_store_item(id, opts)

Update a store item

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreApi.new

id = 56 # Integer | The id of the item

opts = { 
  cascade: false, # BOOLEAN | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  store_item: SwaggerClient::StoreItem.new # StoreItem | The store item object
}

begin
  #Update a store item
  result = api_instance.update_store_item(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreApi->update_store_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the item | 
 **cascade** | **BOOLEAN**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **store_item** | [**StoreItem**](StoreItem.md)| The store item object | [optional] 

### Return type

[**StoreItem**](StoreItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



