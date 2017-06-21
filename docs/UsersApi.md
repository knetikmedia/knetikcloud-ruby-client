# KnetikCloudClient::UsersApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user_tag**](UsersApi.md#add_user_tag) | **POST** /users/{user_id}/tags | Add a tag to a user
[**create_user_template**](UsersApi.md#create_user_template) | **POST** /users/templates | Create a user template
[**delete_user_template**](UsersApi.md#delete_user_template) | **DELETE** /users/templates/{id} | Delete a user template
[**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | Get a single user
[**get_user_tags**](UsersApi.md#get_user_tags) | **GET** /users/{user_id}/tags | List tags for a user
[**get_user_template**](UsersApi.md#get_user_template) | **GET** /users/templates/{id} | Get a single user template
[**get_user_templates**](UsersApi.md#get_user_templates) | **GET** /users/templates | List and search user templates
[**get_users**](UsersApi.md#get_users) | **GET** /users | List and search users
[**password_reset**](UsersApi.md#password_reset) | **PUT** /users/{id}/password-reset | Choose a new password after a reset
[**register_user**](UsersApi.md#register_user) | **POST** /users | Register a new user
[**remove_user_tag**](UsersApi.md#remove_user_tag) | **DELETE** /users/{user_id}/tags/{tag} | Remove a tag from a user
[**set_password**](UsersApi.md#set_password) | **PUT** /users/{id}/password | Set a user&#39;s password
[**start_password_reset**](UsersApi.md#start_password_reset) | **POST** /users/{id}/password-reset | Reset a user&#39;s password
[**submit_password_reset**](UsersApi.md#submit_password_reset) | **POST** /users/password-reset | Reset a user&#39;s password without user id
[**update_user**](UsersApi.md#update_user) | **PUT** /users/{id} | Update a user
[**update_user_template**](UsersApi.md#update_user_template) | **PUT** /users/templates/{id} | Update a user template


# **add_user_tag**
> add_user_tag(user_id, tag)

Add a tag to a user

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

user_id = 56 # Integer | The id of the user

tag = "tag_example" # String | tag


begin
  #Add a tag to a user
  api_instance.add_user_tag(user_id, tag)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->add_user_tag: #{e}"
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
 - **Accept**: application/json



# **create_user_template**
> TemplateResource create_user_template(opts)

Create a user template

User Templates define a type of user and the properties they have

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

opts = { 
  user_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The user template resource object
}

begin
  #Create a user template
  result = api_instance.create_user_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->create_user_template: #{e}"
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
 - **Accept**: application/json



# **delete_user_template**
> delete_user_template(id, opts)

Delete a user template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a user template
  api_instance.delete_user_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->delete_user_template: #{e}"
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
 - **Accept**: application/json



# **get_user**
> UserResource get_user(id)

Get a single user

Additional private info is included as USERS_ADMIN

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

id = "id_example" # String | The id of the user or 'me'


begin
  #Get a single user
  result = api_instance.get_user(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the user or &#39;me&#39; | 

### Return type

[**UserResource**](UserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_tags**
> Array&lt;String&gt; get_user_tags(user_id)

List tags for a user

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

user_id = 56 # Integer | The id of the user


begin
  #List tags for a user
  result = api_instance.get_user_tags(user_id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_tags: #{e}"
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
 - **Accept**: application/json



# **get_user_template**
> TemplateResource get_user_template(id)

Get a single user template

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single user template
  result = api_instance.get_user_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_template: #{e}"
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
 - **Accept**: application/json



# **get_user_templates**
> PageResourceTemplateResource get_user_templates(opts)

List and search user templates

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search user templates
  result = api_instance.get_user_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTemplateResource**](PageResourceTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_users**
> PageResourceUserBaseResource get_users(opts)

List and search users

Additional private info is included as USERS_ADMIN

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

opts = { 
  filter_displayname: "filter_displayname_example", # String | Filter for users whose display name starts with provided string.
  filter_email: "filter_email_example", # String | Filter for users whose email starts with provided string. Requires USERS_ADMIN permission
  filter_firstname: "filter_firstname_example", # String | Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission
  filter_fullname: "filter_fullname_example", # String | Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission
  filter_lastname: "filter_lastname_example", # String | Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission
  filter_username: "filter_username_example", # String | Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission
  filter_tag: "filter_tag_example", # String | Filter for users who have a given tag
  filter_group: "filter_group_example", # String | Filter for users in a given group, by unique name
  filter_role: "filter_role_example", # String | Filter for users with a given role
  filter_search: "filter_search_example", # String | Filter for users whose display_name starts with the provided string, or username if display_name is null
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search users
  result = api_instance.get_users(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_displayname** | **String**| Filter for users whose display name starts with provided string. | [optional] 
 **filter_email** | **String**| Filter for users whose email starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_firstname** | **String**| Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_fullname** | **String**| Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_lastname** | **String**| Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_username** | **String**| Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_tag** | **String**| Filter for users who have a given tag | [optional] 
 **filter_group** | **String**| Filter for users in a given group, by unique name | [optional] 
 **filter_role** | **String**| Filter for users with a given role | [optional] 
 **filter_search** | **String**| Filter for users whose display_name starts with the provided string, or username if display_name is null | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceUserBaseResource**](PageResourceUserBaseResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **password_reset**
> password_reset(id, opts)

Choose a new password after a reset

Finish resetting a user's password using the secret provided from the password-reset endpoint.  Password should be in plain text and will be encrypted on receipt. Use SSL for security.

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::UsersApi.new

id = 56 # Integer | The id of the user

opts = { 
  new_password_request: KnetikCloudClient::NewPasswordRequest.new # NewPasswordRequest | The new password request object
}

begin
  #Choose a new password after a reset
  api_instance.password_reset(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->password_reset: #{e}"
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
 - **Accept**: application/json



# **register_user**
> UserResource register_user(opts)

Register a new user

Password should be in plain text and will be encrypted on receipt. Use SSL for security

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::UsersApi.new

opts = { 
  user_resource: KnetikCloudClient::UserResource.new # UserResource | The user resource object
}

begin
  #Register a new user
  result = api_instance.register_user(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->register_user: #{e}"
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
 - **Accept**: application/json



# **remove_user_tag**
> remove_user_tag(user_id, tag)

Remove a tag from a user

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

user_id = 56 # Integer | The id of the user

tag = "tag_example" # String | The tag to remove


begin
  #Remove a tag from a user
  api_instance.remove_user_tag(user_id, tag)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->remove_user_tag: #{e}"
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
 - **Accept**: application/json



# **set_password**
> set_password(id, opts)

Set a user's password

Password should be in plain text and will be encrypted on receipt. Use SSL for security.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

id = 56 # Integer | The id of the user

opts = { 
  password: "password_example" # String | The new plain text password
}

begin
  #Set a user's password
  api_instance.set_password(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->set_password: #{e}"
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
 - **Accept**: application/json



# **start_password_reset**
> start_password_reset(id)

Reset a user's password

A reset code will be generated and a 'forgot_password' BRE event will be fired with that code.  The default system rule will send an email to the selected user if an email service has been setup. You can modify that rule in BRE to send an SMS instead or any other type of notification as you see fit

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::UsersApi.new

id = 56 # Integer | The id of the user


begin
  #Reset a user's password
  api_instance.start_password_reset(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->start_password_reset: #{e}"
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
 - **Accept**: application/json



# **submit_password_reset**
> submit_password_reset(opts)

Reset a user's password without user id

A reset code will be generated and a 'forgot_password' BRE event will be fired with that code.  The default system rule will send an email to the selected user if an email service has been setup. You can modify that rule in BRE to send an SMS instead or any other type of notification as you see fit.  Must submit their email, username, or mobile phone number

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::UsersApi.new

opts = { 
  password_reset: KnetikCloudClient::ARequestToResetAUsersPasswordByUsingAKnownUserProperty.new # ARequestToResetAUsersPasswordByUsingAKnownUserProperty | An object containing one of three methods to look up a user
}

begin
  #Reset a user's password without user id
  api_instance.submit_password_reset(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->submit_password_reset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_reset** | [**ARequestToResetAUsersPasswordByUsingAKnownUserProperty**](ARequestToResetAUsersPasswordByUsingAKnownUserProperty.md)| An object containing one of three methods to look up a user | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user**
> update_user(id, opts)

Update a user

Password will not be edited on this endpoint, use password specific endpoints.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

id = "id_example" # String | The id of the user or 'me'

opts = { 
  user_resource: KnetikCloudClient::UserResource.new # UserResource | The user resource object
}

begin
  #Update a user
  api_instance.update_user(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
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
 - **Accept**: application/json



# **update_user_template**
> TemplateResource update_user_template(id, opts)

Update a user template

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersApi.new

id = "id_example" # String | The id of the template

opts = { 
  user_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The user template resource object
}

begin
  #Update a user template
  result = api_instance.update_user_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersApi->update_user_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **user_template_resource** | [**TemplateResource**](TemplateResource.md)| The user template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



