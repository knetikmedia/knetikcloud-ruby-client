# KnetikCloudClient::UsersGroupsApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_member_to_group**](UsersGroupsApi.md#add_member_to_group) | **POST** /users/groups/{unique_name}/members | Adds a new member to the group
[**add_members_to_group**](UsersGroupsApi.md#add_members_to_group) | **POST** /users/groups/{unique_name}/members/batch-add | Adds multiple members to the group
[**create_group**](UsersGroupsApi.md#create_group) | **POST** /users/groups | Create a group
[**create_group_member_template**](UsersGroupsApi.md#create_group_member_template) | **POST** /users/groups/members/templates | Create an group member template
[**create_group_template**](UsersGroupsApi.md#create_group_template) | **POST** /users/groups/templates | Create a group template
[**delete_group**](UsersGroupsApi.md#delete_group) | **DELETE** /users/groups/{unique_name} | Removes a group from the system
[**delete_group_member_template**](UsersGroupsApi.md#delete_group_member_template) | **DELETE** /users/groups/members/templates/{id} | Delete an group member template
[**delete_group_template**](UsersGroupsApi.md#delete_group_template) | **DELETE** /users/groups/templates/{id} | Delete a group template
[**disable_group_notification**](UsersGroupsApi.md#disable_group_notification) | **PUT** /users/groups/{unique_name}/members/{user_id}/messages/disabled | Enable or disable notification of group messages
[**get_group**](UsersGroupsApi.md#get_group) | **GET** /users/groups/{unique_name} | Loads a specific group&#39;s details
[**get_group_ancestors**](UsersGroupsApi.md#get_group_ancestors) | **GET** /users/groups/{unique_name}/ancestors | Get group ancestors
[**get_group_member**](UsersGroupsApi.md#get_group_member) | **GET** /users/groups/{unique_name}/members/{user_id} | Get a user from a group
[**get_group_member_template**](UsersGroupsApi.md#get_group_member_template) | **GET** /users/groups/members/templates/{id} | Get a single group member template
[**get_group_member_templates**](UsersGroupsApi.md#get_group_member_templates) | **GET** /users/groups/members/templates | List and search group member templates
[**get_group_members**](UsersGroupsApi.md#get_group_members) | **GET** /users/groups/{unique_name}/members | Lists members of the group
[**get_group_messages**](UsersGroupsApi.md#get_group_messages) | **GET** /users/groups/{unique_name}/messages | Get a list of group messages
[**get_group_template**](UsersGroupsApi.md#get_group_template) | **GET** /users/groups/templates/{id} | Get a single group template
[**get_group_templates**](UsersGroupsApi.md#get_group_templates) | **GET** /users/groups/templates | List and search group templates
[**get_groups_for_user**](UsersGroupsApi.md#get_groups_for_user) | **GET** /users/{user_id}/groups | List groups a user is in
[**list_groups**](UsersGroupsApi.md#list_groups) | **GET** /users/groups | List and search groups
[**post_group_message**](UsersGroupsApi.md#post_group_message) | **POST** /users/groups/{unique_name}/messages | Send a group message
[**remove_group_member**](UsersGroupsApi.md#remove_group_member) | **DELETE** /users/groups/{unique_name}/members/{user_id} | Removes a user from a group
[**update_group**](UsersGroupsApi.md#update_group) | **PUT** /users/groups/{unique_name} | Update a group
[**update_group_member_properties**](UsersGroupsApi.md#update_group_member_properties) | **PUT** /users/groups/{unique_name}/members/{user_id}/order | Change a user&#39;s order
[**update_group_member_properties1**](UsersGroupsApi.md#update_group_member_properties1) | **PUT** /users/groups/{unique_name}/members/{user_id}/properties | Change a user&#39;s membership properties
[**update_group_member_status**](UsersGroupsApi.md#update_group_member_status) | **PUT** /users/groups/{unique_name}/members/{user_id}/status | Change a user&#39;s status
[**update_group_member_template**](UsersGroupsApi.md#update_group_member_template) | **PUT** /users/groups/members/templates/{id} | Update an group member template
[**update_group_template**](UsersGroupsApi.md#update_group_template) | **PUT** /users/groups/templates/{id} | Update a group template


# **add_member_to_group**
> GroupMemberResource add_member_to_group(unique_name, user)

Adds a new member to the group

<b>Permissions Needed:</b> GROUP_ADMIN or self if open

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

user = KnetikCloudClient::GroupMemberResource.new # GroupMemberResource | The id and status for a user to add to the group


begin
  #Adds a new member to the group
  result = api_instance.add_member_to_group(unique_name, user)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->add_member_to_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **user** | [**GroupMemberResource**](GroupMemberResource.md)| The id and status for a user to add to the group | 

### Return type

[**GroupMemberResource**](GroupMemberResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_members_to_group**
> Array&lt;GroupMemberResource&gt; add_members_to_group(unique_name, users)

Adds multiple members to the group

<b>Permissions Needed:</b> GROUP_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

users = [KnetikCloudClient::GroupMemberResource.new] # Array<GroupMemberResource> | The id and status for a list of users to add to the group


begin
  #Adds multiple members to the group
  result = api_instance.add_members_to_group(unique_name, users)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->add_members_to_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **users** | [**Array&lt;GroupMemberResource&gt;**](GroupMemberResource.md)| The id and status for a list of users to add to the group | 

### Return type

[**Array&lt;GroupMemberResource&gt;**](GroupMemberResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_group**
> GroupResource create_group(opts)

Create a group

<b>Permissions Needed:</b> GROUP_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

opts = { 
  group_resource: KnetikCloudClient::GroupResource.new # GroupResource | The new group
}

begin
  #Create a group
  result = api_instance.create_group(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->create_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_resource** | [**GroupResource**](GroupResource.md)| The new group | [optional] 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_group_member_template**
> TemplateResource create_group_member_template(opts)

Create an group member template

GroupMember Templates define a type of group member and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

opts = { 
  group_member_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The group member template resource object
}

begin
  #Create an group member template
  result = api_instance.create_group_member_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->create_group_member_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_member_template_resource** | [**TemplateResource**](TemplateResource.md)| The group member template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_group_template**
> TemplateResource create_group_template(opts)

Create a group template

Group Templates define a type of group and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

opts = { 
  group_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The group template resource object
}

begin
  #Create a group template
  result = api_instance.create_group_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->create_group_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_template_resource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_group**
> delete_group(unique_name)

Removes a group from the system

All groups listing this as the parent are also removed and users are in turn removed from this and those groups. This may result in users no longer being in this group's parent if they were not added to it directly as well. <br><br><b>Permissions Needed:</b> GROUP_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name


begin
  #Removes a group from the system
  api_instance.delete_group(unique_name)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->delete_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_group_member_template**
> delete_group_member_template(id, opts)

Delete an group member template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete an group member template
  api_instance.delete_group_member_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->delete_group_member_template: #{e}"
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

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_group_template**
> delete_group_template(id, opts)

Delete a group template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a group template
  api_instance.delete_group_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->delete_group_template: #{e}"
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

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_group_notification**
> disable_group_notification(unique_name, user_id, disabled)

Enable or disable notification of group messages

<b>Permissions Needed:</b> TOPICS_ADMIN or self

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

user_id = "user_id_example" # String | The user id of the member or 'me'

disabled = KnetikCloudClient::ValueWrapperboolean.new # ValueWrapperboolean | disabled


begin
  #Enable or disable notification of group messages
  api_instance.disable_group_notification(unique_name, user_id, disabled)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->disable_group_notification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **user_id** | **String**| The user id of the member or &#39;me&#39; | 
 **disabled** | [**ValueWrapperboolean**](ValueWrapperboolean.md)| disabled | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_group**
> GroupResource get_group(unique_name)

Loads a specific group's details

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name


begin
  #Loads a specific group's details
  result = api_instance.get_group(unique_name)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_ancestors**
> Array&lt;GroupResource&gt; get_group_ancestors(unique_name)

Get group ancestors

Returns a list of ancestor groups in reverse order (parent, then grandparent, etc). <br><br><b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name


begin
  #Get group ancestors
  result = api_instance.get_group_ancestors(unique_name)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_ancestors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 

### Return type

[**Array&lt;GroupResource&gt;**](GroupResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_member**
> GroupMemberResource get_group_member(unique_name, user_id)

Get a user from a group

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

user_id = 56 # Integer | The id of the user


begin
  #Get a user from a group
  result = api_instance.get_group_member(unique_name, user_id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **user_id** | **Integer**| The id of the user | 

### Return type

[**GroupMemberResource**](GroupMemberResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_member_template**
> TemplateResource get_group_member_template(id)

Get a single group member template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or GROUP_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single group member template
  result = api_instance.get_group_member_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_member_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_member_templates**
> PageResourceTemplateResource get_group_member_templates(opts)

List and search group member templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or GROUP_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search group member templates
  result = api_instance.get_group_member_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_member_templates: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_members**
> PageResourceGroupMemberResource get_group_members(unique_name, opts)

Lists members of the group

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "order:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Lists members of the group
  result = api_instance.get_group_members(unique_name, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to order:ASC]

### Return type

[**PageResourceGroupMemberResource**](PageResourceGroupMemberResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_messages**
> PageResourceChatMessageResource get_group_messages(unique_name, opts)

Get a list of group messages

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Get a list of group messages
  result = api_instance.get_group_messages(unique_name, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceChatMessageResource**](PageResourceChatMessageResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_template**
> TemplateResource get_group_template(id)

Get a single group template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or GROUP_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single group template
  result = api_instance.get_group_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_templates**
> PageResourceTemplateResource get_group_templates(opts)

List and search group templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or GROUP_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search group templates
  result = api_instance.get_group_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTemplateResource**](PageResourceTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_groups_for_user**
> Array&lt;String&gt; get_groups_for_user(user_id, opts)

List groups a user is in

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

user_id = 56 # Integer | The id of the user

opts = { 
  filter_children: true # BOOLEAN | Whether to limit group list to children of groups only. If true, shows only groups with parents. If false, shows only groups with no parent.
}

begin
  #List groups a user is in
  result = api_instance.get_groups_for_user(user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_groups_for_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The id of the user | 
 **filter_children** | **BOOLEAN**| Whether to limit group list to children of groups only. If true, shows only groups with parents. If false, shows only groups with no parent. | [optional] 

### Return type

**Array&lt;String&gt;**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_groups**
> PageResourceGroupResource list_groups(opts)

List and search groups

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

opts = { 
  filter_template: "filter_template_example", # String | Filter for groups using a specific template, by id
  filter_member_count: "filter_member_count_example", # String | Filters groups by member count. Multiple values possible for range search. Format: filter_member_count=OP,ts&... where OP in (GT, LT, GOE, LOE, EQ). Ex: filter_member_count=GT,14,LT,17
  filter_name: "filter_name_example", # String | Filter for groups with names starting with the given string
  filter_unique_name: "filter_unique_name_example", # String | Filter for groups whose unique_name starts with provided string
  filter_parent: "filter_parent_example", # String | Filter for groups with a specific parent, by unique name
  filter_status: "filter_status_example", # String | Filter for groups with a certain status
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search groups
  result = api_instance.list_groups(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->list_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_template** | **String**| Filter for groups using a specific template, by id | [optional] 
 **filter_member_count** | **String**| Filters groups by member count. Multiple values possible for range search. Format: filter_member_count&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ). Ex: filter_member_count&#x3D;GT,14,LT,17 | [optional] 
 **filter_name** | **String**| Filter for groups with names starting with the given string | [optional] 
 **filter_unique_name** | **String**| Filter for groups whose unique_name starts with provided string | [optional] 
 **filter_parent** | **String**| Filter for groups with a specific parent, by unique name | [optional] 
 **filter_status** | **String**| Filter for groups with a certain status | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceGroupResource**](PageResourceGroupResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_group_message**
> ChatMessageResource post_group_message(unique_name, opts)

Send a group message

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

opts = { 
  chat_message_request: KnetikCloudClient::ChatMessageRequest.new # ChatMessageRequest | The chat message request
}

begin
  #Send a group message
  result = api_instance.post_group_message(unique_name, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->post_group_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **chat_message_request** | [**ChatMessageRequest**](ChatMessageRequest.md)| The chat message request | [optional] 

### Return type

[**ChatMessageResource**](ChatMessageResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_group_member**
> remove_group_member(unique_name, user_id)

Removes a user from a group

<b>Permissions Needed:</b> GROUP_ADMIN or self if open

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

user_id = 56 # Integer | The id of the user to remove


begin
  #Removes a user from a group
  api_instance.remove_group_member(unique_name, user_id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->remove_group_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **user_id** | **Integer**| The id of the user to remove | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_group**
> update_group(unique_name, opts)

Update a group

If adding/removing/changing parent, user membership in group/new parent groups may be modified. The parent being removed will remove members from this sub group unless they were added explicitly to the parent and the new parent will gain members unless they were already a part of it. <br><br><b>Permissions Needed:</b> GROUP_ADMIN or admin of the group

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

opts = { 
  group_resource: KnetikCloudClient::GroupResource.new # GroupResource | The updated group
}

begin
  #Update a group
  api_instance.update_group(unique_name, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->update_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **group_resource** | [**GroupResource**](GroupResource.md)| The updated group | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_group_member_properties**
> update_group_member_properties(unique_name, user_id, order)

Change a user's order

<b>Permissions Needed:</b> GROUP_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

user_id = 56 # Integer | The user id of the member to modify

order = KnetikCloudClient::StringWrapper.new # StringWrapper | The new order for the membership


begin
  #Change a user's order
  api_instance.update_group_member_properties(unique_name, user_id, order)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->update_group_member_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **user_id** | **Integer**| The user id of the member to modify | 
 **order** | [**StringWrapper**](StringWrapper.md)| The new order for the membership | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_group_member_properties1**
> update_group_member_properties1(unique_name, user_id, properties)

Change a user's membership properties

<b>Permissions Needed:</b> GROUP_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

user_id = 56 # Integer | The user id of the member to modify

properties = nil # Object | The new properties for the membership


begin
  #Change a user's membership properties
  api_instance.update_group_member_properties1(unique_name, user_id, properties)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->update_group_member_properties1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **user_id** | **Integer**| The user id of the member to modify | 
 **properties** | **Object**| The new properties for the membership | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_group_member_status**
> update_group_member_status(unique_name, user_id, status)

Change a user's status

<b>Permissions Needed:</b> GROUP_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

user_id = 56 # Integer | The user id of the member to modify

status = KnetikCloudClient::GroupMemberStatusWrapper.new # GroupMemberStatusWrapper | The new status for the user


begin
  #Change a user's status
  api_instance.update_group_member_status(unique_name, user_id, status)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->update_group_member_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **user_id** | **Integer**| The user id of the member to modify | 
 **status** | [**GroupMemberStatusWrapper**](GroupMemberStatusWrapper.md)| The new status for the user | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_group_member_template**
> TemplateResource update_group_member_template(id, opts)

Update an group member template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

id = "id_example" # String | The id of the template

opts = { 
  group_member_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The group member template resource object
}

begin
  #Update an group member template
  result = api_instance.update_group_member_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->update_group_member_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **group_member_template_resource** | [**TemplateResource**](TemplateResource.md)| The group member template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_group_template**
> TemplateResource update_group_template(id, opts)

Update a group template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::UsersGroupsApi.new

id = "id_example" # String | The id of the template

opts = { 
  group_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The group template resource object
}

begin
  #Update a group template
  result = api_instance.update_group_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->update_group_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **group_template_resource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



