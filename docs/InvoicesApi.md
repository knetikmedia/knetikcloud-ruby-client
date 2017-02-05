# SwaggerClient::InvoicesApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_invoice_using_post**](InvoicesApi.md#create_invoice_using_post) | **POST** /invoices | Create an invoice
[**get_invoice_history_using_get**](InvoicesApi.md#get_invoice_history_using_get) | **GET** /invoices | Retrieve invoices
[**get_invoice_using_get**](InvoicesApi.md#get_invoice_using_get) | **GET** /invoices/{id} | Retrieve an invoice
[**get_logs_using_get**](InvoicesApi.md#get_logs_using_get) | **GET** /invoices/{id}/logs | List invoice logs
[**list_ful_fillment_statuses_using_get**](InvoicesApi.md#list_ful_fillment_statuses_using_get) | **GET** /invoices/fulfillment-statuses | Lists available fulfillment statuses
[**list_payment_statuses_using_get**](InvoicesApi.md#list_payment_statuses_using_get) | **GET** /invoices/payment-statuses | Lists available payment statuses
[**pay_invoice_using_post**](InvoicesApi.md#pay_invoice_using_post) | **POST** /invoices/{id}/payments | Trigger payment of an invoice
[**set_item_fulfillment_status_using_put**](InvoicesApi.md#set_item_fulfillment_status_using_put) | **PUT** /invoices/{id}/items/{sku}/fulfillment-status | Set the fulfillment status of an invoice item
[**set_order_notes_using_put**](InvoicesApi.md#set_order_notes_using_put) | **PUT** /invoices/{id}/order-notes | Set the order notes of an invoice
[**set_payment_status_using_put**](InvoicesApi.md#set_payment_status_using_put) | **PUT** /invoices/{id}/payment-status | Set the payment status of an invoice
[**update_billing_info_using_put**](InvoicesApi.md#update_billing_info_using_put) | **PUT** /invoices/{id}/billing-address | Set or update billing info


# **create_invoice_using_post**
> Array&lt;InvoiceResource&gt; create_invoice_using_post(opts)

Create an invoice

Create an invoice(s) by providing a cart GUID. Note that there may be multiple invoices created, one per vendor.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

opts = { 
  req: SwaggerClient::InvoiceCreateRequest.new # InvoiceCreateRequest | Invoice to be created
}

begin
  #Create an invoice
  result = api_instance.create_invoice_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->create_invoice_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | [**InvoiceCreateRequest**](InvoiceCreateRequest.md)| Invoice to be created | [optional] 

### Return type

[**Array&lt;InvoiceResource&gt;**](InvoiceResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_invoice_history_using_get**
> PageResourceInvoiceResource get_invoice_history_using_get(opts)

Retrieve invoices

Without INVOICES_ADMIN permission the results are automatically filtered for only the logged in user's invoices. It is recomended however that filter_user be added to avoid issues for admin users accidentally getting additional invoices.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

opts = { 
  filter_user: 56, # Integer | The id of a user to get invoices for. Automtically added if not being called with admin permissions.
  filter_email: "filter_email_example", # String | Filters invoices by customer's email. Admins only.
  filter_fulfillment_status: "filter_fulfillment_status_example", # String | Filters invoices by fulfillment status type. Can be a comma separated list of statuses
  filter_payment_status: "filter_payment_status_example", # String | Filters invoices by payment status type. Can be a comma separated list of statuses
  filter_item_name: "filter_item_name_example", # String | Filters invoices by item name containing the given string
  filter_created_date: "filter_created_date_example", # String | Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date=OP,ts&... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date=GT,1452154258,LT,1554254874
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieve invoices
  result = api_instance.get_invoice_history_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_history_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_user** | **Integer**| The id of a user to get invoices for. Automtically added if not being called with admin permissions. | [optional] 
 **filter_email** | **String**| Filters invoices by customer&#39;s email. Admins only. | [optional] 
 **filter_fulfillment_status** | **String**| Filters invoices by fulfillment status type. Can be a comma separated list of statuses | [optional] 
 **filter_payment_status** | **String**| Filters invoices by payment status type. Can be a comma separated list of statuses | [optional] 
 **filter_item_name** | **String**| Filters invoices by item name containing the given string | [optional] 
 **filter_created_date** | **String**| Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date&#x3D;GT,1452154258,LT,1554254874 | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageResourceInvoiceResource**](PageResourceInvoiceResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_invoice_using_get**
> InvoiceResource get_invoice_using_get(id)

Retrieve an invoice

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice


begin
  #Retrieve an invoice
  result = api_instance.get_invoice_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the invoice | 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_logs_using_get**
> PageResourceInvoiceLogEntry get_logs_using_get(id, opts)

List invoice logs

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List invoice logs
  result = api_instance.get_logs_using_get(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_logs_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the invoice | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceInvoiceLogEntry**](PageResourceInvoiceLogEntry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_ful_fillment_statuses_using_get**
> Array&lt;String&gt; list_ful_fillment_statuses_using_get

Lists available fulfillment statuses

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

begin
  #Lists available fulfillment statuses
  result = api_instance.list_ful_fillment_statuses_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->list_ful_fillment_statuses_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_payment_statuses_using_get**
> Array&lt;String&gt; list_payment_statuses_using_get

Lists available payment statuses

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

begin
  #Lists available payment statuses
  result = api_instance.list_payment_statuses_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->list_payment_statuses_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **pay_invoice_using_post**
> pay_invoice_using_post(id, opts)

Trigger payment of an invoice

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

opts = { 
  request: SwaggerClient::PayBySavedMethodRequest.new # PayBySavedMethodRequest | Payment info
}

begin
  #Trigger payment of an invoice
  api_instance.pay_invoice_using_post(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->pay_invoice_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the invoice | 
 **request** | [**PayBySavedMethodRequest**](PayBySavedMethodRequest.md)| Payment info | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_item_fulfillment_status_using_put**
> set_item_fulfillment_status_using_put(id, sku, status)

Set the fulfillment status of an invoice item

This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

sku = "sku_example" # String | The sku of an item in the invoice

status = "status_example" # String | The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  'unfulfilled', 'fulfilled', 'not fulfillable', 'failed', 'processing', 'failed_permanent', 'delayed'


begin
  #Set the fulfillment status of an invoice item
  api_instance.set_item_fulfillment_status_using_put(id, sku, status)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->set_item_fulfillment_status_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the invoice | 
 **sku** | **String**| The sku of an item in the invoice | 
 **status** | **String**| The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39; | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_order_notes_using_put**
> set_order_notes_using_put(id, opts)

Set the order notes of an invoice

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

opts = { 
  order_notes: "order_notes_example" # String | Payment status info
}

begin
  #Set the order notes of an invoice
  api_instance.set_order_notes_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->set_order_notes_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the invoice | 
 **order_notes** | **String**| Payment status info | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_payment_status_using_put**
> set_payment_status_using_put(id, opts)

Set the payment status of an invoice

This may trigger fulfillment if setting the status to 'paid'. This is mainly intended to support external payment systems that cannot be incorporated into the payment method system. Payment status changes are restricted by a specific flow determining which status can lead to which.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

opts = { 
  request: SwaggerClient::InvoicePaymentStatusRequest.new # InvoicePaymentStatusRequest | Payment status info
}

begin
  #Set the payment status of an invoice
  api_instance.set_payment_status_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->set_payment_status_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the invoice | 
 **request** | [**InvoicePaymentStatusRequest**](InvoicePaymentStatusRequest.md)| Payment status info | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_billing_info_using_put**
> update_billing_info_using_put(id, opts)

Set or update billing info

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

opts = { 
  billing_info_request: SwaggerClient::AddressResource.new # AddressResource | Address info
}

begin
  #Set or update billing info
  api_instance.update_billing_info_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->update_billing_info_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the invoice | 
 **billing_info_request** | [**AddressResource**](AddressResource.md)| Address info | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



