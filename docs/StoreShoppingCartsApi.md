# SwaggerClient::StoreShoppingCartsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_discount_using_post**](StoreShoppingCartsApi.md#add_discount_using_post) | **POST** /carts/{id}/discounts | Adds a coupon to the cart
[**add_item_using_post**](StoreShoppingCartsApi.md#add_item_using_post) | **POST** /carts/{id}/items | Add an item to the cart
[**assign_cart_using_put**](StoreShoppingCartsApi.md#assign_cart_using_put) | **PUT** /carts/{id}/owner | Sets the owner of a cart if none is set already
[**check_shippable_using_get**](StoreShoppingCartsApi.md#check_shippable_using_get) | **GET** /carts/{id}/shippable | Returns whether a cart requires shipping
[**create_cart_using_post**](StoreShoppingCartsApi.md#create_cart_using_post) | **POST** /carts | Creates a new cart from scratch
[**get_cart_using_get**](StoreShoppingCartsApi.md#get_cart_using_get) | **GET** /carts/{id} | Returns the cart with the given GUID
[**get_countries_using_get**](StoreShoppingCartsApi.md#get_countries_using_get) | **GET** /carts/{id}/countries | Get the list of available shipping countries per vendor
[**modify_shipping_address_using_put**](StoreShoppingCartsApi.md#modify_shipping_address_using_put) | **PUT** /carts/{id}/shipping-address | Modifies or sets the order shipping address
[**remove_discount_using_delete**](StoreShoppingCartsApi.md#remove_discount_using_delete) | **DELETE** /carts/{id}/discounts/{code} | Removes a coupon from the cart
[**search_carts_using_get**](StoreShoppingCartsApi.md#search_carts_using_get) | **GET** /carts | Get a list of carts
[**set_cart_currency_using_put**](StoreShoppingCartsApi.md#set_cart_currency_using_put) | **PUT** /carts/{id}/currency | Sets the currency to use for the cart
[**update_item_using_put**](StoreShoppingCartsApi.md#update_item_using_put) | **PUT** /carts/{id}/items | Changes the quantity of an item already in the cart


# **add_discount_using_post**
> add_discount_using_post(id, opts)

Adds a coupon to the cart

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  sku_request: SwaggerClient::SkuRequest.new # SkuRequest | The request of the sku
}

begin
  #Adds a coupon to the cart
  api_instance.add_discount_using_post(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->add_discount_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **sku_request** | [**SkuRequest**](SkuRequest.md)| The request of the sku | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **add_item_using_post**
> add_item_using_post(id, opts)

Add an item to the cart

Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  cart_item_request: SwaggerClient::CartItemRequest.new # CartItemRequest | The cart item request object
}

begin
  #Add an item to the cart
  api_instance.add_item_using_post(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->add_item_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **cart_item_request** | [**CartItemRequest**](CartItemRequest.md)| The cart item request object | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **assign_cart_using_put**
> assign_cart_using_put(id, opts)

Sets the owner of a cart if none is set already

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  user_id: 56 # Integer | The id of the user
}

begin
  #Sets the owner of a cart if none is set already
  api_instance.assign_cart_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->assign_cart_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **user_id** | **Integer**| The id of the user | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **check_shippable_using_get**
> CartShippableResponse check_shippable_using_get(id)

Returns whether a cart requires shipping

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart


begin
  #Returns whether a cart requires shipping
  result = api_instance.check_shippable_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->check_shippable_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**CartShippableResponse**](CartShippableResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create_cart_using_post**
> String create_cart_using_post(opts)

Creates a new cart from scratch

You don't have to have a user to create a cart but the API requires authentication to checkout

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

opts = { 
  owner: 56, # Integer | Set the owner of a cart. If not specified, defaults to the calling user's id. If specified and is not the calling user's id, SHOPPING_CARTS_ADMIN permission is required
  currency_code: "currency_code_example" # String | Set the currency for the cart, by currency code. May be disallowed by site settings.
}

begin
  #Creates a new cart from scratch
  result = api_instance.create_cart_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->create_cart_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **Integer**| Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required | [optional] 
 **currency_code** | **String**| Set the currency for the cart, by currency code. May be disallowed by site settings. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_cart_using_get**
> Cart get_cart_using_get(id)

Returns the cart with the given GUID

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart


begin
  #Returns the cart with the given GUID
  result = api_instance.get_cart_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->get_cart_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**Cart**](Cart.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_countries_using_get**
> SampleCountriesResponse get_countries_using_get(id)

Get the list of available shipping countries per vendor

Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart


begin
  #Get the list of available shipping countries per vendor
  result = api_instance.get_countries_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->get_countries_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**SampleCountriesResponse**](SampleCountriesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **modify_shipping_address_using_put**
> modify_shipping_address_using_put(id, opts)

Modifies or sets the order shipping address

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  cart_shipping_address_request: SwaggerClient::CartShippingAddressRequest.new # CartShippingAddressRequest | The cart shipping address request object
}

begin
  #Modifies or sets the order shipping address
  api_instance.modify_shipping_address_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->modify_shipping_address_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **cart_shipping_address_request** | [**CartShippingAddressRequest**](CartShippingAddressRequest.md)| The cart shipping address request object | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **remove_discount_using_delete**
> remove_discount_using_delete(id, code)

Removes a coupon from the cart

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

code = "code_example" # String | The SKU code of the coupon to remove


begin
  #Removes a coupon from the cart
  api_instance.remove_discount_using_delete(id, code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->remove_discount_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **code** | **String**| The SKU code of the coupon to remove | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **search_carts_using_get**
> PageCartSummary search_carts_using_get(opts)

Get a list of carts

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

opts = { 
  filter_owner_id: 56, # Integer | Filter by the id of the owner
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get a list of carts
  result = api_instance.search_carts_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->search_carts_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_owner_id** | **Integer**| Filter by the id of the owner | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageCartSummary**](PageCartSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **set_cart_currency_using_put**
> set_cart_currency_using_put(id, opts)

Sets the currency to use for the cart

May be disallowed by site settings.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  currency_code: "currency_code_example" # String | The code of the currency
}

begin
  #Sets the currency to use for the cart
  api_instance.set_cart_currency_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->set_cart_currency_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **currency_code** | **String**| The code of the currency | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_item_using_put**
> update_item_using_put(id, opts)

Changes the quantity of an item already in the cart

A quantity of zero will remove the item from the cart altogether.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  cart_item_request: SwaggerClient::CartItemRequest.new # CartItemRequest | The cart item request object
}

begin
  #Changes the quantity of an item already in the cart
  api_instance.update_item_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->update_item_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **cart_item_request** | [**CartItemRequest**](CartItemRequest.md)| The cart item request object | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



