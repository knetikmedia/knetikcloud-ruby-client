# SwaggerClient::GamificationTriviaApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_answers_using_post**](GamificationTriviaApi.md#add_answers_using_post) | **POST** /trivia/questions/{question_id}/answers | Add an answer to a question
[**add_tag_using_post**](GamificationTriviaApi.md#add_tag_using_post) | **POST** /trivia/questions/{id}/tags | Add a tag to a question
[**batch_add_tag_using_post**](GamificationTriviaApi.md#batch_add_tag_using_post) | **POST** /trivia/questions/tags | Add a tag to a batch of questions
[**batch_remove_tag_using_delete**](GamificationTriviaApi.md#batch_remove_tag_using_delete) | **DELETE** /trivia/questions/tags/{tag} | Remove a tag from a batch of questions
[**bulk_update_using_put**](GamificationTriviaApi.md#bulk_update_using_put) | **PUT** /trivia/questions | Bulk update questions
[**count_questions_using_get**](GamificationTriviaApi.md#count_questions_using_get) | **GET** /trivia/questions/count | Count questions based on filters.
[**create_question_template_using_post**](GamificationTriviaApi.md#create_question_template_using_post) | **POST** /trivia/questions/templates | Create a question template
[**create_question_using_post**](GamificationTriviaApi.md#create_question_using_post) | **POST** /trivia/questions | Create a question
[**create_using_post**](GamificationTriviaApi.md#create_using_post) | **POST** /trivia/import | Create an import job
[**delete_question_template_using_delete**](GamificationTriviaApi.md#delete_question_template_using_delete) | **DELETE** /trivia/questions/templates/{id} | Delete a question template
[**delete_question_using_delete**](GamificationTriviaApi.md#delete_question_using_delete) | **DELETE** /trivia/questions/{id} | Delete a question
[**delete_using_delete**](GamificationTriviaApi.md#delete_using_delete) | **DELETE** /trivia/import/{id} | Delete an import job
[**get_answer_using_get**](GamificationTriviaApi.md#get_answer_using_get) | **GET** /trivia/questions/{question_id}/answers/{id} | Get an answer for a question
[**get_answers_using_get**](GamificationTriviaApi.md#get_answers_using_get) | **GET** /trivia/questions/{question_id}/answers | List the answers available for a question
[**get_list_using_get1**](GamificationTriviaApi.md#get_list_using_get1) | **GET** /trivia/import | Get a list of import job
[**get_question_template_using_get**](GamificationTriviaApi.md#get_question_template_using_get) | **GET** /trivia/questions/templates/{id} | Get a single question template
[**get_question_templates_using_get**](GamificationTriviaApi.md#get_question_templates_using_get) | **GET** /trivia/questions/templates | List and search question templates
[**get_question_using_get**](GamificationTriviaApi.md#get_question_using_get) | **GET** /trivia/questions/{id} | Get a single question
[**get_questions_delta_using_get**](GamificationTriviaApi.md#get_questions_delta_using_get) | **GET** /trivia/questions/delta | List question deltas in ascending order of updated date
[**get_questions_using_get**](GamificationTriviaApi.md#get_questions_using_get) | **GET** /trivia/questions | List and search questions
[**get_tags_using_get1**](GamificationTriviaApi.md#get_tags_using_get1) | **GET** /trivia/questions/{id}/tags | List the tags for a question
[**get_tags_using_get2**](GamificationTriviaApi.md#get_tags_using_get2) | **GET** /trivia/tags | List and search tags by the beginning of the string
[**get_using_get**](GamificationTriviaApi.md#get_using_get) | **GET** /trivia/import/{id} | Get an import job
[**remove_answers_using_delete**](GamificationTriviaApi.md#remove_answers_using_delete) | **DELETE** /trivia/questions/{question_id}/answers/{id} | Remove an answer from a question
[**remove_tag_using_delete**](GamificationTriviaApi.md#remove_tag_using_delete) | **DELETE** /trivia/questions/{id}/tags/{tag} | Remove a tag from a question
[**start_process_using_post**](GamificationTriviaApi.md#start_process_using_post) | **POST** /trivia/import/{id}/process | Start processing an import job
[**update_answer_using_put**](GamificationTriviaApi.md#update_answer_using_put) | **PUT** /trivia/questions/{question_id}/answers/{id} | Update an answer for a question
[**update_question_template_using_put**](GamificationTriviaApi.md#update_question_template_using_put) | **PUT** /trivia/questions/templates/{id} | Update a question template
[**update_question_using_put**](GamificationTriviaApi.md#update_question_using_put) | **PUT** /trivia/questions/{id} | Update a question
[**update_using_put**](GamificationTriviaApi.md#update_using_put) | **PUT** /trivia/import/{id} | Update an import job


# **add_answers_using_post**
> AnswerResource add_answers_using_post(question_id, opts)

Add an answer to a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

question_id = "question_id_example" # String | The id of the question

opts = { 
  answer: SwaggerClient::AnswerResource.new # AnswerResource | The new answer
}

begin
  #Add an answer to a question
  result = api_instance.add_answers_using_post(question_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->add_answers_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **String**| The id of the question | 
 **answer** | [**AnswerResource**](AnswerResource.md)| The new answer | [optional] 

### Return type

[**AnswerResource**](AnswerResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_tag_using_post**
> add_tag_using_post(id, opts)

Add a tag to a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question

opts = { 
  tag: "tag_example" # String | The new tag
}

begin
  #Add a tag to a question
  api_instance.add_tag_using_post(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->add_tag_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 
 **tag** | **String**| The new tag | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **batch_add_tag_using_post**
> Integer batch_add_tag_using_post(opts)

Add a tag to a batch of questions

All questions that dont't have the tag and match filters will have it added. The returned number is the number of questions updated.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  tag: "tag_example", # String | The tag to add
  filter_search: "filter_search_example", # String | Filter for documents whose question, answers or tags contains provided string
  filter_idset: "filter_idset_example", # String | Filter for documents whose id is in the comma separated list provided
  filter_category: "filter_category_example", # String | Filter for questions with specified category, by id
  filter_tag: "filter_tag_example", # String | Filter for questions with specified tag
  filter_tagset: "filter_tagset_example", # String | Filter for questions with specified tags (separated by comma)
  filter_type: "filter_type_example", # String | Filter for questions with specified type
  filter_published: true, # BOOLEAN | Filter for questions currenctly published or not
  filter_import_id: 789 # Integer | Filter for questions from a specific import job
}

begin
  #Add a tag to a batch of questions
  result = api_instance.batch_add_tag_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->batch_add_tag_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| The tag to add | [optional] 
 **filter_search** | **String**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filter_idset** | **String**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filter_category** | **String**| Filter for questions with specified category, by id | [optional] 
 **filter_tag** | **String**| Filter for questions with specified tag | [optional] 
 **filter_tagset** | **String**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filter_type** | **String**| Filter for questions with specified type | [optional] 
 **filter_published** | **BOOLEAN**| Filter for questions currenctly published or not | [optional] 
 **filter_import_id** | **Integer**| Filter for questions from a specific import job | [optional] 

### Return type

**Integer**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **batch_remove_tag_using_delete**
> Integer batch_remove_tag_using_delete(tag, opts)

Remove a tag from a batch of questions

ll questions that have the tag and match filters will have it removed. The returned number is the number of questions updated.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

tag = "tag_example" # String | The tag to remove

opts = { 
  filter_search: "filter_search_example", # String | Filter for documents whose question, answers or tags contains provided string
  filter_idset: "filter_idset_example", # String | Filter for documents whose id is in the comma separated list provided
  filter_category: "filter_category_example", # String | Filter for questions with specified category, by id
  filter_tag: "filter_tag_example", # String | Filter for questions with specified tag
  filter_tagset: "filter_tagset_example", # String | Filter for questions with specified tags (separated by comma)
  filter_type: "filter_type_example", # String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
  filter_published: true, # BOOLEAN | Filter for questions currenctly published or not
  filter_import_id: 789 # Integer | Filter for questions from a specific import job
}

begin
  #Remove a tag from a batch of questions
  result = api_instance.batch_remove_tag_using_delete(tag, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->batch_remove_tag_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| The tag to remove | 
 **filter_search** | **String**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filter_idset** | **String**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filter_category** | **String**| Filter for questions with specified category, by id | [optional] 
 **filter_tag** | **String**| Filter for questions with specified tag | [optional] 
 **filter_tagset** | **String**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filter_type** | **String**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filter_published** | **BOOLEAN**| Filter for questions currenctly published or not | [optional] 
 **filter_import_id** | **Integer**| Filter for questions from a specific import job | [optional] 

### Return type

**Integer**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bulk_update_using_put**
> Integer bulk_update_using_put(opts)

Bulk update questions

Will update all questions that match filters used (or all questions in system if no filters used). Body should match a question resource with only those properties you wish to set. Null values will be ignored. Returned number is how many were updated.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  question: SwaggerClient::QuestionResource.new, # QuestionResource | New values for a set of question fields
  filter_search: "filter_search_example", # String | Filter for documents whose question, answers or tags contains provided string
  filter_idset: "filter_idset_example", # String | Filter for documents whose id is in the comma separated list provided
  filter_category: "filter_category_example", # String | Filter for questions with specified category, by id
  filter_tagset: "filter_tagset_example", # String | Filter for questions with specified tags (separated by comma)
  filter_type: "filter_type_example", # String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
  filter_published: true, # BOOLEAN | Filter for questions currenctly published or not
  filter_import_id: 789 # Integer | Filter for questions from a specific import job
}

begin
  #Bulk update questions
  result = api_instance.bulk_update_using_put(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->bulk_update_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question** | [**QuestionResource**](QuestionResource.md)| New values for a set of question fields | [optional] 
 **filter_search** | **String**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filter_idset** | **String**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filter_category** | **String**| Filter for questions with specified category, by id | [optional] 
 **filter_tagset** | **String**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filter_type** | **String**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filter_published** | **BOOLEAN**| Filter for questions currenctly published or not | [optional] 
 **filter_import_id** | **Integer**| Filter for questions from a specific import job | [optional] 

### Return type

**Integer**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **count_questions_using_get**
> Integer count_questions_using_get(opts)

Count questions based on filters.

This is also provided by the list endpoint so you don't need to call this for pagination purposes

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  filter_search: "filter_search_example", # String | Filter for documents whose question, answers or tags contains provided string
  filter_idset: "filter_idset_example", # String | Filter for documents whose id is in the comma separated list provided
  filter_category: "filter_category_example", # String | Filter for questions with specified category, by id
  filter_tag: "filter_tag_example", # String | Filter for questions with specified tag
  filter_tagset: "filter_tagset_example", # String | Filter for questions with specified tags (separated by comma)
  filter_type: "filter_type_example", # String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
  filter_published: true # BOOLEAN | Filter for questions currenctly published or not
}

begin
  #Count questions based on filters.
  result = api_instance.count_questions_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->count_questions_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_search** | **String**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filter_idset** | **String**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filter_category** | **String**| Filter for questions with specified category, by id | [optional] 
 **filter_tag** | **String**| Filter for questions with specified tag | [optional] 
 **filter_tagset** | **String**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filter_type** | **String**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filter_published** | **BOOLEAN**| Filter for questions currenctly published or not | [optional] 

### Return type

**Integer**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_question_template_using_post**
> QuestionTemplateResource create_question_template_using_post(opts)

Create a question template

Question templates define a type of question and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  question_template_resource: SwaggerClient::QuestionTemplateResource.new # QuestionTemplateResource | The question template resource object
}

begin
  #Create a question template
  result = api_instance.create_question_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->create_question_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_template_resource** | [**QuestionTemplateResource**](QuestionTemplateResource.md)| The question template resource object | [optional] 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_question_using_post**
> QuestionResource create_question_using_post(opts)

Create a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  question: SwaggerClient::QuestionResource.new # QuestionResource | The new question
}

begin
  #Create a question
  result = api_instance.create_question_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->create_question_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question** | [**QuestionResource**](QuestionResource.md)| The new question | [optional] 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_using_post**
> ImportJobResource create_using_post(opts)

Create an import job

Set up a job to import a set of trivia questions from a cvs file at a remote url. the file will be validated asynchronously but will not be processed until started manually with the process endpoint.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  request: SwaggerClient::ImportJobResource.new # ImportJobResource | The new import job
}

begin
  #Create an import job
  result = api_instance.create_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->create_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ImportJobResource**](ImportJobResource.md)| The new import job | [optional] 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_question_template_using_delete**
> delete_question_template_using_delete(id, opts)

Delete a question template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a question template
  api_instance.delete_question_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->delete_question_template_using_delete: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_question_using_delete**
> delete_question_using_delete(id)

Delete a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question


begin
  #Delete a question
  api_instance.delete_question_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->delete_question_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_using_delete**
> delete_using_delete(id)

Delete an import job

Also deletes all questions that were imported by it

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = 789 # Integer | The id of the job


begin
  #Delete an import job
  api_instance.delete_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->delete_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the job | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_answer_using_get**
> AnswerResource get_answer_using_get(question_id, id)

Get an answer for a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

question_id = "question_id_example" # String | The id of the question

id = "id_example" # String | The id of the answer


begin
  #Get an answer for a question
  result = api_instance.get_answer_using_get(question_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_answer_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **String**| The id of the question | 
 **id** | **String**| The id of the answer | 

### Return type

[**AnswerResource**](AnswerResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_answers_using_get**
> Array&lt;AnswerResource&gt; get_answers_using_get(question_id)

List the answers available for a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

question_id = "question_id_example" # String | The id of the question


begin
  #List the answers available for a question
  result = api_instance.get_answers_using_get(question_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_answers_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **String**| The id of the question | 

### Return type

[**Array&lt;AnswerResource&gt;**](AnswerResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_list_using_get1**
> PageResourceImportJobResource get_list_using_get1(opts)

Get a list of import job

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  filter_vendor: "filter_vendor_example", # String | Filter for jobs by vendor id
  filter_category: "filter_category_example", # String | Filter for jobs by category id
  filter_name: "filter_name_example", # String | Filter for jobs which name *STARTS* with the given string
  filter_status: "filter_status_example", # String | Filter for jobs that are in a specific set of statuses (comma separated)
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get a list of import job
  result = api_instance.get_list_using_get1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_list_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_vendor** | **String**| Filter for jobs by vendor id | [optional] 
 **filter_category** | **String**| Filter for jobs by category id | [optional] 
 **filter_name** | **String**| Filter for jobs which name *STARTS* with the given string | [optional] 
 **filter_status** | **String**| Filter for jobs that are in a specific set of statuses (comma separated) | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceImportJobResource**](PageResourceImportJobResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_question_template_using_get**
> QuestionTemplateResource get_question_template_using_get(id)

Get a single question template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single question template
  result = api_instance.get_question_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_question_template_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_question_templates_using_get**
> PageResourceQuestionTemplateResource get_question_templates_using_get(opts)

List and search question templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search question templates
  result = api_instance.get_question_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_question_templates_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceQuestionTemplateResource**](PageResourceQuestionTemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_question_using_get**
> QuestionResource get_question_using_get(id)

Get a single question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question


begin
  #Get a single question
  result = api_instance.get_question_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_question_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_questions_delta_using_get**
> Array&lt;DeltaResource&gt; get_questions_delta_using_get(opts)

List question deltas in ascending order of updated date

The 'since' parameter is important to avoid getting a full list of all questions. Implementors should make sure they pass the updated date of the last resource loaded, not the date of the last request, in order to avoid gaps

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  since: 789 # Integer | Timestamp in seconds
}

begin
  #List question deltas in ascending order of updated date
  result = api_instance.get_questions_delta_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_questions_delta_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **Integer**| Timestamp in seconds | [optional] 

### Return type

[**Array&lt;DeltaResource&gt;**](DeltaResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_questions_using_get**
> PageResourceQuestionResource get_questions_using_get(opts)

List and search questions

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC", # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  filter_search: "filter_search_example", # String | Filter for documents whose question, answers or tags contains provided string
  filter_idset: "filter_idset_example", # String | Filter for documents whose id is in the comma separated list provided
  filter_category: "filter_category_example", # String | Filter for questions with specified category, by id
  filter_tagset: "filter_tagset_example", # String | Filter for questions with specified tags (separated by comma)
  filter_type: "filter_type_example", # String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
  filter_published: true, # BOOLEAN | Filter for questions currenctly published or not
  filter_import_id: 789 # Integer | Filter for questions from a specific import job
}

begin
  #List and search questions
  result = api_instance.get_questions_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_questions_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]
 **filter_search** | **String**| Filter for documents whose question, answers or tags contains provided string | [optional] 
 **filter_idset** | **String**| Filter for documents whose id is in the comma separated list provided | [optional] 
 **filter_category** | **String**| Filter for questions with specified category, by id | [optional] 
 **filter_tagset** | **String**| Filter for questions with specified tags (separated by comma) | [optional] 
 **filter_type** | **String**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filter_published** | **BOOLEAN**| Filter for questions currenctly published or not | [optional] 
 **filter_import_id** | **Integer**| Filter for questions from a specific import job | [optional] 

### Return type

[**PageResourceQuestionResource**](PageResourceQuestionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_tags_using_get1**
> Array&lt;String&gt; get_tags_using_get1(id)

List the tags for a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question


begin
  #List the tags for a question
  result = api_instance.get_tags_using_get1(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_tags_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

**Array&lt;String&gt;**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_tags_using_get2**
> Collectionstring get_tags_using_get2(opts)

List and search tags by the beginning of the string

For performance reasons, search & category filters are mutually exclusive. If category is specified, search filter will be ignored in order to do fast matches for typeahead.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  filter_search: "filter_search_example", # String | Filter for tags starting with the given text
  filter_category: "filter_category_example", # String | Filter for tags on questions from a specific category
  filter_import_id: 789 # Integer | Filter for tags on questions from a specific import job
}

begin
  #List and search tags by the beginning of the string
  result = api_instance.get_tags_using_get2(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_tags_using_get2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_search** | **String**| Filter for tags starting with the given text | [optional] 
 **filter_category** | **String**| Filter for tags on questions from a specific category | [optional] 
 **filter_import_id** | **Integer**| Filter for tags on questions from a specific import job | [optional] 

### Return type

[**Collectionstring**](Collectionstring.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_using_get**
> ImportJobResource get_using_get(id)

Get an import job

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = 789 # Integer | The id of the job


begin
  #Get an import job
  result = api_instance.get_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the job | 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_answers_using_delete**
> remove_answers_using_delete(question_id, id)

Remove an answer from a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

question_id = "question_id_example" # String | The id of the question

id = "id_example" # String | The id of the answer


begin
  #Remove an answer from a question
  api_instance.remove_answers_using_delete(question_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->remove_answers_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **String**| The id of the question | 
 **id** | **String**| The id of the answer | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_tag_using_delete**
> remove_tag_using_delete(id, tag)

Remove a tag from a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question

tag = "tag_example" # String | The tag to remove


begin
  #Remove a tag from a question
  api_instance.remove_tag_using_delete(id, tag)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->remove_tag_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 
 **tag** | **String**| The tag to remove | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **start_process_using_post**
> ImportJobResource start_process_using_post(id, publish_now)

Start processing an import job

Will process the CSV file and add new questions asynchronously. The status of the job must be 'VALID'.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = 789 # Integer | The id of the job

publish_now = true # BOOLEAN | Whether the new questions should be published live immediately


begin
  #Start processing an import job
  result = api_instance.start_process_using_post(id, publish_now)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->start_process_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the job | 
 **publish_now** | **BOOLEAN**| Whether the new questions should be published live immediately | 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_answer_using_put**
> update_answer_using_put(question_id, id, opts)

Update an answer for a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

question_id = "question_id_example" # String | The id of the question

id = "id_example" # String | The id of the answer

opts = { 
  answer: SwaggerClient::AnswerResource.new # AnswerResource | The updated answer
}

begin
  #Update an answer for a question
  api_instance.update_answer_using_put(question_id, id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->update_answer_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **String**| The id of the question | 
 **id** | **String**| The id of the answer | 
 **answer** | [**AnswerResource**](AnswerResource.md)| The updated answer | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_question_template_using_put**
> update_question_template_using_put(id, opts)

Update a question template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the template

opts = { 
  question_template_resource: SwaggerClient::QuestionTemplateResource.new # QuestionTemplateResource | The question template resource object
}

begin
  #Update a question template
  api_instance.update_question_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->update_question_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **question_template_resource** | [**QuestionTemplateResource**](QuestionTemplateResource.md)| The question template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_question_using_put**
> QuestionResource update_question_using_put(id, opts)

Update a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question

opts = { 
  question: SwaggerClient::QuestionResource.new # QuestionResource | The updated question
}

begin
  #Update a question
  result = api_instance.update_question_using_put(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->update_question_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 
 **question** | [**QuestionResource**](QuestionResource.md)| The updated question | [optional] 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_using_put**
> ImportJobResource update_using_put(id, opts)

Update an import job

Changes should be made before process is started for there to be any effect.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = 789 # Integer | The id of the job

opts = { 
  request: SwaggerClient::ImportJobResource.new # ImportJobResource | The updated job
}

begin
  #Update an import job
  result = api_instance.update_using_put(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->update_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the job | 
 **request** | [**ImportJobResource**](ImportJobResource.md)| The updated job | [optional] 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



