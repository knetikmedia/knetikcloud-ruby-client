# SwaggerClient::InvoicesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_invoice**](InvoicesApi.md#create_invoice) | **POST** /invoices | Create an invoice
[**get_invoice**](InvoicesApi.md#get_invoice) | **GET** /invoices/{id} | Retrieve an invoice
[**get_invoice_logs**](InvoicesApi.md#get_invoice_logs) | **GET** /invoices/{id}/logs | List invoice logs
[**get_invoices**](InvoicesApi.md#get_invoices) | **GET** /invoices | Retrieve invoices
[**list_ful_fillment_statuses**](InvoicesApi.md#list_ful_fillment_statuses) | **GET** /invoices/fulfillment-statuses | Lists available fulfillment statuses
[**list_payment_statuses**](InvoicesApi.md#list_payment_statuses) | **GET** /invoices/payment-statuses | Lists available payment statuses
[**pay_invoice**](InvoicesApi.md#pay_invoice) | **POST** /invoices/{id}/payments | Trigger payment of an invoice
[**set_invoice_item_fulfillment_status**](InvoicesApi.md#set_invoice_item_fulfillment_status) | **PUT** /invoices/{id}/items/{sku}/fulfillment-status | Set the fulfillment status of an invoice item
[**set_order_notes**](InvoicesApi.md#set_order_notes) | **PUT** /invoices/{id}/order-notes | Set the order notes of an invoice
[**set_payment_status_using_put**](InvoicesApi.md#set_payment_status_using_put) | **PUT** /invoices/{id}/payment-status | Set the payment status of an invoice
[**update_billing_info**](InvoicesApi.md#update_billing_info) | **PUT** /invoices/{id}/billing-address | Set or update billing info


# **create_invoice**
> Array&lt;InvoiceResource&gt; create_invoice(opts)

Create an invoice

Create an invoice(s) by providing a cart GUID. Note that there may be multiple invoices created, one per vendor.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InvoicesApi.new

opts = { 
  req: SwaggerClient::InvoiceCreateRequest.new # InvoiceCreateRequest | Invoice to be created
}

begin
  #Create an invoice
  result = api_instance.create_invoice(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->create_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | [**InvoiceCreateRequest**](InvoiceCreateRequest.md)| Invoice to be created | [optional] 

### Return type

[**Array&lt;InvoiceResource&gt;**](InvoiceResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_invoice**
> InvoiceResource get_invoice(id)

Retrieve an invoice

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice


begin
  #Retrieve an invoice
  result = api_instance.get_invoice(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the invoice | 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_invoice_logs**
> PageResourceInvoiceLogEntry get_invoice_logs(id, opts)

List invoice logs

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List invoice logs
  result = api_instance.get_invoice_logs(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_logs: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_invoices**
> PageResourceInvoiceResource get_invoices(opts)

Retrieve invoices

Without INVOICES_ADMIN permission the results are automatically filtered for only the logged in user's invoices. It is recomended however that filter_user be added to avoid issues for admin users accidentally getting additional invoices.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

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
  result = api_instance.get_invoices(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_ful_fillment_statuses**
> Array&lt;String&gt; list_ful_fillment_statuses

Lists available fulfillment statuses

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

begin
  #Lists available fulfillment statuses
  result = api_instance.list_ful_fillment_statuses
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->list_ful_fillment_statuses: #{e}"
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



# **list_payment_statuses**
> Array&lt;String&gt; list_payment_statuses

Lists available payment statuses

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

begin
  #Lists available payment statuses
  result = api_instance.list_payment_statuses
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->list_payment_statuses: #{e}"
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



# **pay_invoice**
> pay_invoice(id, opts)

Trigger payment of an invoice

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

opts = { 
  request: SwaggerClient::PayBySavedMethodRequest.new # PayBySavedMethodRequest | Payment info
}

begin
  #Trigger payment of an invoice
  api_instance.pay_invoice(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->pay_invoice: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_invoice_item_fulfillment_status**
> set_invoice_item_fulfillment_status(id, sku, status)

Set the fulfillment status of an invoice item

This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

sku = "sku_example" # String | The sku of an item in the invoice

status = "status_example" # String | The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  'unfulfilled', 'fulfilled', 'not fulfillable', 'failed', 'processing', 'failed_permanent', 'delayed'


begin
  #Set the fulfillment status of an invoice item
  api_instance.set_invoice_item_fulfillment_status(id, sku, status)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->set_invoice_item_fulfillment_status: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_order_notes**
> set_order_notes(id, opts)

Set the order notes of an invoice

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

opts = { 
  order_notes: "order_notes_example" # String | Payment status info
}

begin
  #Set the order notes of an invoice
  api_instance.set_order_notes(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->set_order_notes: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

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
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_billing_info**
> update_billing_info(id, opts)

Set or update billing info

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InvoicesApi.new

id = 56 # Integer | The id of the invoice

opts = { 
  billing_info_request: SwaggerClient::AddressResource.new # AddressResource | Address info
}

begin
  #Set or update billing info
  api_instance.update_billing_info(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->update_billing_info: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



