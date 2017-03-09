# SwaggerClient::StoreShoppingCartsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_custom_discount**](StoreShoppingCartsApi.md#add_custom_discount) | **POST** /carts/{id}/custom-discounts | Adds a custom discount to the cart
[**add_discount_to_cart**](StoreShoppingCartsApi.md#add_discount_to_cart) | **POST** /carts/{id}/discounts | Adds a discount coupon to the cart
[**add_item_to_cart**](StoreShoppingCartsApi.md#add_item_to_cart) | **POST** /carts/{id}/items | Add an item to the cart
[**create_cart**](StoreShoppingCartsApi.md#create_cart) | **POST** /carts | Create a cart
[**get_cart**](StoreShoppingCartsApi.md#get_cart) | **GET** /carts/{id} | Returns the cart with the given GUID
[**get_carts**](StoreShoppingCartsApi.md#get_carts) | **GET** /carts | Get a list of carts
[**get_shippable**](StoreShoppingCartsApi.md#get_shippable) | **GET** /carts/{id}/shippable | Returns whether a cart requires shipping
[**get_shipping_countries**](StoreShoppingCartsApi.md#get_shipping_countries) | **GET** /carts/{id}/countries | Get the list of available shipping countries per vendor
[**remove_discount_from_cart**](StoreShoppingCartsApi.md#remove_discount_from_cart) | **DELETE** /carts/{id}/discounts/{code} | Removes a discount coupon from the cart
[**set_cart_currency**](StoreShoppingCartsApi.md#set_cart_currency) | **PUT** /carts/{id}/currency | Sets the currency to use for the cart
[**set_cart_owner**](StoreShoppingCartsApi.md#set_cart_owner) | **PUT** /carts/{id}/owner | Sets the owner of a cart if none is set already
[**update_item_in_cart**](StoreShoppingCartsApi.md#update_item_in_cart) | **PUT** /carts/{id}/items | Changes the quantity of an item already in the cart
[**update_shipping_address**](StoreShoppingCartsApi.md#update_shipping_address) | **PUT** /carts/{id}/shipping-address | Modifies or sets the order shipping address


# **add_custom_discount**
> add_custom_discount(id, opts)

Adds a custom discount to the cart

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  custom_discount: SwaggerClient::CouponDefinition.new # CouponDefinition | The details of the discount to add
}

begin
  #Adds a custom discount to the cart
  api_instance.add_custom_discount(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->add_custom_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 
 **custom_discount** | [**CouponDefinition**](CouponDefinition.md)| The details of the discount to add | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_discount_to_cart**
> add_discount_to_cart(id, opts)

Adds a discount coupon to the cart

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  sku_request: SwaggerClient::SkuRequest.new # SkuRequest | The request of the sku
}

begin
  #Adds a discount coupon to the cart
  api_instance.add_discount_to_cart(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->add_discount_to_cart: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_item_to_cart**
> add_item_to_cart(id, opts)

Add an item to the cart

Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  cart_item_request: SwaggerClient::CartItemRequest.new # CartItemRequest | The cart item request object
}

begin
  #Add an item to the cart
  api_instance.add_item_to_cart(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->add_item_to_cart: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_cart**
> String create_cart(opts)

Create a cart

You don't have to have a user to create a cart but the API requires authentication to checkout

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

opts = { 
  owner: 56, # Integer | Set the owner of a cart. If not specified, defaults to the calling user's id. If specified and is not the calling user's id, SHOPPING_CARTS_ADMIN permission is required
  currency_code: "currency_code_example" # String | Set the currency for the cart, by currency code. May be disallowed by site settings.
}

begin
  #Create a cart
  result = api_instance.create_cart(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->create_cart: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_cart**
> Cart get_cart(id)

Returns the cart with the given GUID

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart


begin
  #Returns the cart with the given GUID
  result = api_instance.get_cart(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->get_cart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**Cart**](Cart.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_carts**
> PageResourceCartSummary get_carts(opts)

Get a list of carts

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

opts = { 
  filter_owner_id: 56, # Integer | Filter by the id of the owner
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get a list of carts
  result = api_instance.get_carts(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->get_carts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_owner_id** | **Integer**| Filter by the id of the owner | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceCartSummary**](PageResourceCartSummary.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shippable**
> CartShippableResponse get_shippable(id)

Returns whether a cart requires shipping

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart


begin
  #Returns whether a cart requires shipping
  result = api_instance.get_shippable(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->get_shippable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**CartShippableResponse**](CartShippableResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipping_countries**
> SampleCountriesResponse get_shipping_countries(id)

Get the list of available shipping countries per vendor

Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart


begin
  #Get the list of available shipping countries per vendor
  result = api_instance.get_shipping_countries(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->get_shipping_countries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the cart | 

### Return type

[**SampleCountriesResponse**](SampleCountriesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_discount_from_cart**
> remove_discount_from_cart(id, code)

Removes a discount coupon from the cart

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

code = "code_example" # String | The SKU code of the coupon to remove


begin
  #Removes a discount coupon from the cart
  api_instance.remove_discount_from_cart(id, code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->remove_discount_from_cart: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_cart_currency**
> set_cart_currency(id, opts)

Sets the currency to use for the cart

May be disallowed by site settings.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  currency_code: "currency_code_example" # String | The code of the currency
}

begin
  #Sets the currency to use for the cart
  api_instance.set_cart_currency(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->set_cart_currency: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_cart_owner**
> set_cart_owner(id, opts)

Sets the owner of a cart if none is set already

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  user_id: 56 # Integer | The id of the user
}

begin
  #Sets the owner of a cart if none is set already
  api_instance.set_cart_owner(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->set_cart_owner: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_item_in_cart**
> update_item_in_cart(id, opts)

Changes the quantity of an item already in the cart

A quantity of zero will remove the item from the cart altogether.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  cart_item_request: SwaggerClient::CartItemRequest.new # CartItemRequest | The cart item request object
}

begin
  #Changes the quantity of an item already in the cart
  api_instance.update_item_in_cart(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->update_item_in_cart: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shipping_address**
> update_shipping_address(id, opts)

Modifies or sets the order shipping address

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::StoreShoppingCartsApi.new

id = "id_example" # String | The id of the cart

opts = { 
  cart_shipping_address_request: SwaggerClient::CartShippingAddressRequest.new # CartShippingAddressRequest | The cart shipping address request object
}

begin
  #Modifies or sets the order shipping address
  api_instance.update_shipping_address(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StoreShoppingCartsApi->update_shipping_address: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



