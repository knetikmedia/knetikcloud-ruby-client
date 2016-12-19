# SwaggerClient::UsersApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_tag_using_post1**](UsersApi.md#add_tag_using_post1) | **POST** /users/{user_id}/tags | Add a tag to a user
[**create_user_template_using_post**](UsersApi.md#create_user_template_using_post) | **POST** /users/templates | Create a user template
[**delete_user_template_using_delete**](UsersApi.md#delete_user_template_using_delete) | **DELETE** /users/templates/{id} | Delete a user template
[**do_password_reset_using_put**](UsersApi.md#do_password_reset_using_put) | **PUT** /users/{id}/password-reset | Choose a new password after a reset
[**get_tags_using_get3**](UsersApi.md#get_tags_using_get3) | **GET** /users/{user_id}/tags | List tags for a user
[**get_user_template_using_get**](UsersApi.md#get_user_template_using_get) | **GET** /users/templates/{id} | Get a single user template
[**get_user_templates_using_get**](UsersApi.md#get_user_templates_using_get) | **GET** /users/templates | List and search user templates
[**get_user_using_get**](UsersApi.md#get_user_using_get) | **GET** /users/{id} | Get a single user
[**get_users_using_get**](UsersApi.md#get_users_using_get) | **GET** /users | List and search users
[**initiate_password_reset_using_post**](UsersApi.md#initiate_password_reset_using_post) | **POST** /users/{id}/password-reset | Reset a user&#39;s password
[**register_user_using_post**](UsersApi.md#register_user_using_post) | **POST** /users | Register a new user
[**remove_tag_using_delete1**](UsersApi.md#remove_tag_using_delete1) | **DELETE** /users/{user_id}/tags/{tag} | Remove a tag from a user
[**set_password_using_put**](UsersApi.md#set_password_using_put) | **PUT** /users/{id}/password | Set a user&#39;s password
[**update_user_template_using_put**](UsersApi.md#update_user_template_using_put) | **PUT** /users/templates/{id} | Update a user template
[**update_user_using_put**](UsersApi.md#update_user_using_put) | **PUT** /users/{id} | Update a user&#39;s info


# **add_tag_using_post1**
> add_tag_using_post1(user_id, tag)

Add a tag to a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersApi.new

user_id = 56 # Integer | The id of the user

tag = "tag_example" # String | tag


begin
  #Add a tag to a user
  api_instance.add_tag_using_post1(user_id, tag)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->add_tag_using_post1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **tag** | **String**| tag | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create_user_template_using_post**
> TemplateResource create_user_template_using_post(opts)

Create a user template

User Templates define a type of user and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersApi.new

opts = { 
  user_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The user template resource object
}

begin
  #Create a user template
  result = api_instance.create_user_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->create_user_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_template_resource** | [**TemplateResource**](TemplateResource.md)| The user template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_user_template_using_delete**
> delete_user_template_using_delete(id, opts)

Delete a user template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a user template
  api_instance.delete_user_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->delete_user_template_using_delete: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **do_password_reset_using_put**
> do_password_reset_using_put(id, opts)

Choose a new password after a reset

Finish resetting a user's password using the secret provided from the password-reset endpoint.  Password should be in plain text and will be encrypted on receipt. Use SSL for security.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

id = 56 # Integer | The id of the user

opts = { 
  new_password_request: SwaggerClient::NewPasswordRequest.new # NewPasswordRequest | The new password request object
}

begin
  #Choose a new password after a reset
  api_instance.do_password_reset_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->do_password_reset_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the user | 
 **new_password_request** | [**NewPasswordRequest**](NewPasswordRequest.md)| The new password request object | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_tags_using_get3**
> Array&lt;String&gt; get_tags_using_get3(user_id)

List tags for a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersApi.new

user_id = 56 # Integer | The id of the user


begin
  #List tags for a user
  result = api_instance.get_tags_using_get3(user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_tags_using_get3: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 

### Return type

**Array&lt;String&gt;**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_user_template_using_get**
> TemplateResource get_user_template_using_get(id)

Get a single user template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single user template
  result = api_instance.get_user_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_template_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_user_templates_using_get**
> PageTemplateResource get_user_templates_using_get(opts)

List and search user templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search user templates
  result = api_instance.get_user_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_templates_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageTemplateResource**](PageTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_user_using_get**
> UserResource get_user_using_get(id)

Get a single user

Additional private info is included as USERS_ADMIN

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

id = "id_example" # String | The id of the user or 'me'


begin
  #Get a single user
  result = api_instance.get_user_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user or &#39;me&#39; | 

### Return type

[**UserResource**](UserResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_users_using_get**
> PageUserBaseResource get_users_using_get(opts)

List and search users

Additional private info is included as USERS_ADMIN

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

opts = { 
  filter_role: "filter_role_example", # String | Filter for users whose roles has the provided role
  filter_displayname: "filter_displayname_example", # String | Filter for users whose display name starts with provided string.
  filter_email: "filter_email_example", # String | Filter for users whose email starts with provided string. Requires USERS_ADMIN permission
  filter_firstname: "filter_firstname_example", # String | Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission
  filter_fullname: "filter_fullname_example", # String | Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission
  filter_lastname: "filter_lastname_example", # String | Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission
  filter_username: "filter_username_example", # String | Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission
  filter_tag: "filter_tag_example", # String | Filter for users who have a given tag
  filter_group: "filter_group_example", # String | Filter for users in a given group, by unique name
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search users
  result = api_instance.get_users_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_users_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_role** | **String**| Filter for users whose roles has the provided role | [optional] 
 **filter_displayname** | **String**| Filter for users whose display name starts with provided string. | [optional] 
 **filter_email** | **String**| Filter for users whose email starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_firstname** | **String**| Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_fullname** | **String**| Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_lastname** | **String**| Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_username** | **String**| Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_tag** | **String**| Filter for users who have a given tag | [optional] 
 **filter_group** | **String**| Filter for users in a given group, by unique name | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageUserBaseResource**](PageUserBaseResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **initiate_password_reset_using_post**
> initiate_password_reset_using_post(id)

Reset a user's password

A reset code will be generated and a 'forgot_password' BRE event will be fired with that code; this can be routed to the user as needed and submitted to the 'choose a new password' endpoint.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

id = 56 # Integer | The id of the user


begin
  #Reset a user's password
  api_instance.initiate_password_reset_using_post(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->initiate_password_reset_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **register_user_using_post**
> UserResource register_user_using_post(opts)

Register a new user

Password should be in plain text and will be encrypted on receipt. Use SSL for security

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersApi.new

opts = { 
  user_resource: SwaggerClient::UserResource.new # UserResource | The user resource object
}

begin
  #Register a new user
  result = api_instance.register_user_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->register_user_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_resource** | [**UserResource**](UserResource.md)| The user resource object | [optional] 

### Return type

[**UserResource**](UserResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **remove_tag_using_delete1**
> remove_tag_using_delete1(user_id, tag)

Remove a tag from a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersApi.new

user_id = 56 # Integer | The id of the user

tag = "tag_example" # String | The tag to remove


begin
  #Remove a tag from a user
  api_instance.remove_tag_using_delete1(user_id, tag)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->remove_tag_using_delete1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **tag** | **String**| The tag to remove | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **set_password_using_put**
> set_password_using_put(id, opts)

Set a user's password

Password should be in plain text and will be encrypted on receipt. Use SSL for security.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersApi.new

id = 56 # Integer | The id of the user

opts = { 
  password: "password_example" # String | The new plain text password
}

begin
  #Set a user's password
  api_instance.set_password_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->set_password_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the user | 
 **password** | **String**| The new plain text password | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_user_template_using_put**
> update_user_template_using_put(id, opts)

Update a user template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersApi.new

id = "id_example" # String | The id of the template

opts = { 
  user_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The user template resource object
}

begin
  #Update a user template
  api_instance.update_user_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->update_user_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **user_template_resource** | [**TemplateResource**](TemplateResource.md)| The user template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_user_using_put**
> update_user_using_put(id, opts)

Update a user's info

Password will not be edited on this endpoint, use password specific endpoints.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersApi.new

id = "id_example" # String | The id of the user or 'me'

opts = { 
  user_resource: SwaggerClient::UserResource.new # UserResource | The user resource object
}

begin
  #Update a user's info
  api_instance.update_user_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->update_user_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user or &#39;me&#39; | 
 **user_resource** | [**UserResource**](UserResource.md)| The user resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



