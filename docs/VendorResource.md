# SwaggerClient::VendorResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | Whether the vendor is active.  Default &#x3D; true | [optional] 
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template | [optional] 
**create_date** | **Integer** | The date the vendor was added. Unix timestamp in seconds | [optional] 
**description** | **String** | A description of the vendor | [optional] 
**id** | **Integer** | The id of the vendor | [optional] 
**image_url** | **String** | The url of an image for the vendor | [optional] 
**manual_approval** | **BOOLEAN** | Whether the vendor needs to manually approve invoices before they are paid.  A separate checkout flow is required in this case.  Default: false | [optional] 
**name** | **String** | The name of the vendor | 
**primary_contact_email** | **String** | The primary email address for the vendor | [optional] 
**primary_contact_name** | **String** | The name of the primary contact for the vendor | [optional] 
**primary_contact_phone** | **String** | The primary phone number for the vendor | [optional] 
**sales_email** | **String** | The email address for sale inquiries for the vendor | [optional] 
**support_email** | **String** | The email address for support inquiries for the vendor | [optional] 
**template** | **String** | A user template this user is validated against (private). May be null and no validation of properties will be done | [optional] 
**update_date** | **Integer** | The date the vendor was last updated. Unix timestamp in seconds | [optional] 
**url** | **String** | The url for the vendor&#39;s site | [optional] 


