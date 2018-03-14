# KnetikCloudClient::RuleEngineRulesApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bre_rule**](RuleEngineRulesApi.md#create_bre_rule) | **POST** /bre/rules | Create a rule
[**delete_bre_rule**](RuleEngineRulesApi.md#delete_bre_rule) | **DELETE** /bre/rules/{id} | Delete a rule
[**get_bre_expression_as_string**](RuleEngineRulesApi.md#get_bre_expression_as_string) | **POST** /bre/rules/expression-as-string | Returns a string representation of the provided expression
[**get_bre_rule**](RuleEngineRulesApi.md#get_bre_rule) | **GET** /bre/rules/{id} | Get a single rule
[**get_bre_rules**](RuleEngineRulesApi.md#get_bre_rules) | **GET** /bre/rules | List rules
[**set_bre_rule**](RuleEngineRulesApi.md#set_bre_rule) | **PUT** /bre/rules/{id}/enabled | Enable or disable a rule
[**update_bre_rule**](RuleEngineRulesApi.md#update_bre_rule) | **PUT** /bre/rules/{id} | Update a rule


# **create_bre_rule**
> BreRule create_bre_rule(opts)

Create a rule

Rules define which actions to run when a given event verifies the specified condition. Full list of predicates and other type of expressions can be found at GET /bre/expressions/. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN

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

api_instance = KnetikCloudClient::RuleEngineRulesApi.new

opts = { 
  bre_rule: KnetikCloudClient::BreRule.new # BreRule | The BRE rule object
}

begin
  #Create a rule
  result = api_instance.create_bre_rule(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineRulesApi->create_bre_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_rule** | [**BreRule**](BreRule.md)| The BRE rule object | [optional] 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_bre_rule**
> delete_bre_rule(id)

Delete a rule

May fail if there are existing rules against it. Cannot delete core rules. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN

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

api_instance = KnetikCloudClient::RuleEngineRulesApi.new

id = "id_example" # String | The id of the rule


begin
  #Delete a rule
  api_instance.delete_bre_rule(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineRulesApi->delete_bre_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bre_expression_as_string**
> String get_bre_expression_as_string(opts)

Returns a string representation of the provided expression

<b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN

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

api_instance = KnetikCloudClient::RuleEngineRulesApi.new

opts = { 
  expression: KnetikCloudClient::Expressionobject.new # Expressionobject | The expression
}

begin
  #Returns a string representation of the provided expression
  result = api_instance.get_bre_expression_as_string(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineRulesApi->get_bre_expression_as_string: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expression** | [**Expressionobject**](Expressionobject.md)| The expression | [optional] 

### Return type

**String**

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bre_rule**
> BreRule get_bre_rule(id)

Get a single rule

<b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN

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

api_instance = KnetikCloudClient::RuleEngineRulesApi.new

id = "id_example" # String | The id of the rule


begin
  #Get a single rule
  result = api_instance.get_bre_rule(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineRulesApi->get_bre_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bre_rules**
> PageResourceBreRule get_bre_rules(opts)

List rules

<b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN

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

api_instance = KnetikCloudClient::RuleEngineRulesApi.new

opts = { 
  filter_name: "filter_name_example", # String | Filter for rules containing the given name
  filter_enabled: null, # BOOLEAN | Filter for rules by active status, null for both
  filter_system: true, # BOOLEAN | Filter for rules that are system rules when true, or not when false. Leave off for both mixed
  filter_trigger: "filter_trigger_example", # String | Filter for rules that are for the trigger with the given name
  filter_action: "filter_action_example", # String | Filter for rules that use the action with the given name
  filter_condition: "filter_condition_example", # String | Filter for rules that have a condition containing the given string
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List rules
  result = api_instance.get_bre_rules(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineRulesApi->get_bre_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_name** | **String**| Filter for rules containing the given name | [optional] 
 **filter_enabled** | **BOOLEAN**| Filter for rules by active status, null for both | [optional] [default to null]
 **filter_system** | **BOOLEAN**| Filter for rules that are system rules when true, or not when false. Leave off for both mixed | [optional] 
 **filter_trigger** | **String**| Filter for rules that are for the trigger with the given name | [optional] 
 **filter_action** | **String**| Filter for rules that use the action with the given name | [optional] 
 **filter_condition** | **String**| Filter for rules that have a condition containing the given string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceBreRule**](PageResourceBreRule.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_bre_rule**
> set_bre_rule(id, opts)

Enable or disable a rule

This is helpful for turning off systems rules which cannot be deleted or modified otherwise. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN

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

api_instance = KnetikCloudClient::RuleEngineRulesApi.new

id = "id_example" # String | The id of the rule

opts = { 
  enabled: KnetikCloudClient::BooleanResource.new # BooleanResource | The boolean value
}

begin
  #Enable or disable a rule
  api_instance.set_bre_rule(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineRulesApi->set_bre_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 
 **enabled** | [**BooleanResource**](BooleanResource.md)| The boolean value | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_bre_rule**
> BreRule update_bre_rule(id, opts)

Update a rule

Cannot update system rules. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN

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

api_instance = KnetikCloudClient::RuleEngineRulesApi.new

id = "id_example" # String | The id of the rule

opts = { 
  bre_rule: KnetikCloudClient::BreRule.new # BreRule | The BRE rule object
}

begin
  #Update a rule
  result = api_instance.update_bre_rule(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling RuleEngineRulesApi->update_bre_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 
 **bre_rule** | [**BreRule**](BreRule.md)| The BRE rule object | [optional] 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



