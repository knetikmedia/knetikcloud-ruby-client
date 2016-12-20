# SwaggerClient::UsersGroupsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_group_using_post**](UsersGroupsApi.md#add_group_using_post) | **POST** /users/groups | Adds a new group in the system
[**add_member_using_post**](UsersGroupsApi.md#add_member_using_post) | **POST** /users/groups/{unique_name}/members | Adds a new member to the group
[**create_group_template_using_post**](UsersGroupsApi.md#create_group_template_using_post) | **POST** /users/groups/templates | Create a group template
[**delete_group_template_using_delete**](UsersGroupsApi.md#delete_group_template_using_delete) | **DELETE** /users/groups/templates/{id} | Delete a group template
[**delete_group_using_delete**](UsersGroupsApi.md#delete_group_using_delete) | **DELETE** /users/groups/{unique_name}/members/{user_id} | Removes a user from a group
[**delete_group_using_delete1**](UsersGroupsApi.md#delete_group_using_delete1) | **DELETE** /users/groups/{unique_name} | Removes a group from the system IF no resources are attached to it
[**get_group_template_using_get**](UsersGroupsApi.md#get_group_template_using_get) | **GET** /users/groups/templates/{id} | Get a single group template
[**get_group_templates_using_get**](UsersGroupsApi.md#get_group_templates_using_get) | **GET** /users/groups/templates | List and search group templates
[**get_group_using_get**](UsersGroupsApi.md#get_group_using_get) | **GET** /users/groups/{unique_name} | Loads a specific group&#39;s details
[**search_groups_using_get**](UsersGroupsApi.md#search_groups_using_get) | **GET** /users/groups/{unique_name}/members | Lists members of the group
[**search_groups_using_get1**](UsersGroupsApi.md#search_groups_using_get1) | **GET** /users/groups | List and search groups
[**update_group_template_using_put**](UsersGroupsApi.md#update_group_template_using_put) | **PUT** /users/groups/templates/{id} | Update a group template
[**update_group_using_put**](UsersGroupsApi.md#update_group_using_put) | **PUT** /users/groups/{unique_name} | Modifies a group&#39;s details
[**update_member_status_using_put**](UsersGroupsApi.md#update_member_status_using_put) | **PUT** /users/groups/{unique_name}/members/{user_id}/status | Change a user&#39;s status


# **add_group_using_post**
> GroupResource add_group_using_post(opts)

Adds a new group in the system

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersGroupsApi.new

opts = { 
  group_resource: SwaggerClient::GroupResource.new # GroupResource | The new group
}

begin
  #Adds a new group in the system
  result = api_instance.add_group_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->add_group_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_resource** | [**GroupResource**](GroupResource.md)| The new group | [optional] 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_member_using_post**
> GroupMemberResource add_member_using_post(unique_name, username)

Adds a new member to the group

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

username = SwaggerClient::GroupMemberResource.new # GroupMemberResource | The username of a user to add to the group


begin
  #Adds a new member to the group
  result = api_instance.add_member_using_post(unique_name, username)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->add_member_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **username** | [**GroupMemberResource**](GroupMemberResource.md)| The username of a user to add to the group | 

### Return type

[**GroupMemberResource**](GroupMemberResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_group_template_using_post**
> TemplateResource create_group_template_using_post(opts)

Create a group template

Group Templates define a type of group and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersGroupsApi.new

opts = { 
  group_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The group template resource object
}

begin
  #Create a group template
  result = api_instance.create_group_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->create_group_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_template_resource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_group_template_using_delete**
> delete_group_template_using_delete(id, opts)

Delete a group template

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

api_instance = SwaggerClient::UsersGroupsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a group template
  api_instance.delete_group_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->delete_group_template_using_delete: #{e}"
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



# **delete_group_using_delete**
> delete_group_using_delete(unique_name, user_id)

Removes a user from a group

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

user_id = 56 # Integer | The id of the user to remove


begin
  #Removes a user from a group
  api_instance.delete_group_using_delete(unique_name, user_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->delete_group_using_delete: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_group_using_delete1**
> delete_group_using_delete1(unique_name)

Removes a group from the system IF no resources are attached to it

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name


begin
  #Removes a group from the system IF no resources are attached to it
  api_instance.delete_group_using_delete1(unique_name)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->delete_group_using_delete1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_group_template_using_get**
> TemplateResource get_group_template_using_get(id)

Get a single group template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersGroupsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single group template
  result = api_instance.get_group_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_template_using_get: #{e}"
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



# **get_group_templates_using_get**
> PageResourceTemplateResource get_group_templates_using_get(opts)

List and search group templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersGroupsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search group templates
  result = api_instance.get_group_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_templates_using_get: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_group_using_get**
> GroupResource get_group_using_get(unique_name)

Loads a specific group's details

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name


begin
  #Loads a specific group's details
  result = api_instance.get_group_using_get(unique_name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->get_group_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_groups_using_get**
> PageResourceGroupMemberResource search_groups_using_get(unique_name, opts)

Lists members of the group

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Lists members of the group
  result = api_instance.search_groups_using_get(unique_name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->search_groups_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceGroupMemberResource**](PageResourceGroupMemberResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_groups_using_get1**
> PageResourceGroupResource search_groups_using_get1(opts)

List and search groups

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsersGroupsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search groups
  result = api_instance.search_groups_using_get1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->search_groups_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceGroupResource**](PageResourceGroupResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_group_template_using_put**
> update_group_template_using_put(id, opts)

Update a group template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersGroupsApi.new

id = "id_example" # String | The id of the template

opts = { 
  group_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The group template resource object
}

begin
  #Update a group template
  api_instance.update_group_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->update_group_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **group_template_resource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_group_using_put**
> update_group_using_put(unique_name, opts)

Modifies a group's details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

opts = { 
  group_resource: SwaggerClient::GroupResource.new # GroupResource | The updated group
}

begin
  #Modifies a group's details
  api_instance.update_group_using_put(unique_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->update_group_using_put: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_member_status_using_put**
> update_member_status_using_put(unique_name, user_id, status)

Change a user's status

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersGroupsApi.new

unique_name = "unique_name_example" # String | The group unique name

user_id = 56 # Integer | The user id of the member to modify

status = "status_example" # String | The new status for the user


begin
  #Change a user's status
  api_instance.update_member_status_using_put(unique_name, user_id, status)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersGroupsApi->update_member_status_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **String**| The group unique name | 
 **user_id** | **Integer**| The user id of the member to modify | 
 **status** | **String**| The new status for the user | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



