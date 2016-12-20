# SwaggerClient::BRERuleEngineRulesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convert_expression_to_string_using_post**](BRERuleEngineRulesApi.md#convert_expression_to_string_using_post) | **POST** /bre/rules/expression-as-string | Returns a string representation of the provided expression
[**create_rule_using_post**](BRERuleEngineRulesApi.md#create_rule_using_post) | **POST** /bre/rules | Create a rule
[**delete_rule_using_delete**](BRERuleEngineRulesApi.md#delete_rule_using_delete) | **DELETE** /bre/rules/{id} | Delete a rule
[**enable_rule_using_put**](BRERuleEngineRulesApi.md#enable_rule_using_put) | **PUT** /bre/rules/{id}/enabled | Enable or disable a rule
[**get_rule_using_get**](BRERuleEngineRulesApi.md#get_rule_using_get) | **GET** /bre/rules/{id} | Get a single rule
[**get_rules_using_get**](BRERuleEngineRulesApi.md#get_rules_using_get) | **GET** /bre/rules | List rules
[**update_rule_using_put**](BRERuleEngineRulesApi.md#update_rule_using_put) | **PUT** /bre/rules/{id} | Update a rule


# **convert_expression_to_string_using_post**
> String convert_expression_to_string_using_post(opts)

Returns a string representation of the provided expression

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineRulesApi.new

opts = { 
  expression: SwaggerClient::Expressionobject.new # Expressionobject | The expression
}

begin
  #Returns a string representation of the provided expression
  result = api_instance.convert_expression_to_string_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineRulesApi->convert_expression_to_string_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expression** | [**Expressionobject**](Expressionobject.md)| The expression | [optional] 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_rule_using_post**
> BreRule create_rule_using_post(opts)

Create a rule

Rules define which actions to run when a given event verifies the specified conditions. Conditions and actions are defined by binding event or context parameters to arguments. Conditions also known as Predicates are logical expressions that result in a boolean. Operators are used to describe rules between arguments to form that condition. There are 3 families of operators: Boolean, Math and String. Math and String operators are functions that transform arguments into numbers or strings...<h1>Boolean Operators</h1><br /><br />1 arg:<br />======<br /><br /><ul> <li>IS_NULL</li> <li>IS_NOT_NULL</li> <li>STRING_IS_EMPTY</li> <li>NOT </li> <li>MAP_IS_EMPTY</li></ul><br />2 args:<br />=======<br /><br /><ul> <li>EQ</li> <li>NE (Not Equals)</li> <li>GT (Greater Than)</li> <li>GOE (Greater Or Equals)</li> <li>LT (Lesser Than)</li> <li>LOE (Lesser Or Equals)</li> <li>OR</li> <li>AND</li> <li>XNOR</li> <li>XOR</li> <li>CONTAINS_KEY (for maps only)</li> <li>CONTAINS_VALUE (for maps only)</li> <li>MATCHES (regex)</li> <li>MATCHES_IC (regex ignore case)</li> <li>STARTS_WITH</li> <li>STARTS_WITH_IC</li> <li>EQ_IGNORE_CASE</li> <li>ENDS_WITH</li> <li>ENDS_WITH_IC</li> <li>STRING_CONTAINS</li> <li>STRING_CONTAINS_IC</li> <li>LIKE (SQL like)</li></ul><br />3 args exceptions:<br />=================<br /><br /><ul> <li>BETWEEN</li></ul><br />n args:<br />=======<br /><br /><ul> <li>IN</li> <li>NOT_INT</li></ul><h1>Math Operators</h1>1 arg:<br />=====<br /><br /><ul> <li>NEGATE</li> <li>MAP_SIZE</li> <li>STRING_LENGTH</li> <li>CEIL</li> <li>ABS</li> <li>FLOOR</li> <li>ROUND</li> <li>RANDOM (no arg)</li> <li>RANDOM2 (seed arg)</li> <li>NUMCAST</li> <li>HOUR</li> <li>MINUTE</li> <li>SECOND</li> <li>MILLISECOND</li> <li>YEAR</li> <li>WEEK</li> <li>YEAR_MONTH</li> <li>YEAR_WEEK</li> <li>DAY_OF_WEEK</li> <li>DAY_OF_MONTH</li> <li>DAY_OF_YEAR</li> <li>WEEK</li> <li>WEEK</li> <li>WEEK</li></ul><br /><br />2 args:<br />======<br /><br /><ul> <li>ADD</li> <li>DIV</li> <li>MULT</li> <li>SUB</li> <li>POWER</li> <li>MOD</li> <li>LOCATE (index of (string, char))</li> <li>DIFF_YEARS</li> <li>DIFF_MONTHS</li> <li>DIFF_WEEKS</li> <li>DIFF_DAYS</li> <li>DIFF_HOURS</li> <li>DIFF_MINUTES</li> <li>DIFF_SECONDS</li></ul><br /><br />2 args:<br />======<br /><br /><ul> <li>MIN</li> <li>MAX</li></ul><h1>String Operators</h1>0 arg:<br />=====<br /><br /><ul> <li>CURRENT_TIME</li></ul><br /><br />1 arg:<br />=====<br /><br /><ul> <li>CURRENT_TIME</li> <li>LOWER</li> <li>UPPER</li> <li>TRIM</li> <li>STRING_CAST</li></ul><br /><br />2 args:<br />=====<br /><br /><ul> <li>CHAR_AT</li> <li>SUBSTR_1ARG (substr(string, start))</li> <li>CONCAT</li> <li>TRIM</li> <li>STRING_CAST</li></ul><br /><br />3 args:<br />=====<br /><br /><ul> <li>SUBSTR_2ARGS (substr(string, start, length))</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineRulesApi.new

opts = { 
  bre_rule: SwaggerClient::BreRule.new # BreRule | The BRE rule object
}

begin
  #Create a rule
  result = api_instance.create_rule_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineRulesApi->create_rule_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_rule** | [**BreRule**](BreRule.md)| The BRE rule object | [optional] 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_rule_using_delete**
> delete_rule_using_delete(id)

Delete a rule

May fail if there are existing rules against it. Cannot delete core rules

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineRulesApi.new

id = "id_example" # String | The id of the rule


begin
  #Delete a rule
  api_instance.delete_rule_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineRulesApi->delete_rule_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **enable_rule_using_put**
> enable_rule_using_put(id, opts)

Enable or disable a rule

This is helpful for turning off systems rules which cannot be deleted or modified otherwise

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineRulesApi.new

id = "id_example" # String | The id of the rule

opts = { 
  enabled: SwaggerClient::BooleanResource.new # BooleanResource | The boolean value
}

begin
  #Enable or disable a rule
  api_instance.enable_rule_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineRulesApi->enable_rule_using_put: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_rule_using_get**
> BreRule get_rule_using_get(id)

Get a single rule

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineRulesApi.new

id = "id_example" # String | The id of the rule


begin
  #Get a single rule
  result = api_instance.get_rule_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineRulesApi->get_rule_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_rules_using_get**
> PageBreRule get_rules_using_get(opts)

List rules

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineRulesApi.new

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
  result = api_instance.get_rules_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineRulesApi->get_rules_using_get: #{e}"
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

[**PageBreRule**](PageBreRule.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_rule_using_put**
> update_rule_using_put(id, opts)

Update a rule

Cannot update system rules

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineRulesApi.new

id = "id_example" # String | The id of the rule

opts = { 
  bre_rule: SwaggerClient::BreRule.new # BreRule | The BRE rule object
}

begin
  #Update a rule
  api_instance.update_rule_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineRulesApi->update_rule_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the rule | 
 **bre_rule** | [**BreRule**](BreRule.md)| The BRE rule object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



