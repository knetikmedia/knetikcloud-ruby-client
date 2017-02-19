# SwaggerClient::GamificationTriviaApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_question_answers**](GamificationTriviaApi.md#add_question_answers) | **POST** /trivia/questions/{question_id}/answers | Add an answer to a question
[**add_question_tag**](GamificationTriviaApi.md#add_question_tag) | **POST** /trivia/questions/{id}/tags | Add a tag to a question
[**add_tag_to_questions_batch**](GamificationTriviaApi.md#add_tag_to_questions_batch) | **POST** /trivia/questions/tags | Add a tag to a batch of questions
[**create_import_job**](GamificationTriviaApi.md#create_import_job) | **POST** /trivia/import | Create an import job
[**create_question**](GamificationTriviaApi.md#create_question) | **POST** /trivia/questions | Create a question
[**create_question_template**](GamificationTriviaApi.md#create_question_template) | **POST** /trivia/questions/templates | Create a question template
[**delete_import_job**](GamificationTriviaApi.md#delete_import_job) | **DELETE** /trivia/import/{id} | Delete an import job
[**delete_question**](GamificationTriviaApi.md#delete_question) | **DELETE** /trivia/questions/{id} | Delete a question
[**delete_question_answers**](GamificationTriviaApi.md#delete_question_answers) | **DELETE** /trivia/questions/{question_id}/answers/{id} | Remove an answer from a question
[**delete_question_template**](GamificationTriviaApi.md#delete_question_template) | **DELETE** /trivia/questions/templates/{id} | Delete a question template
[**get_import_job**](GamificationTriviaApi.md#get_import_job) | **GET** /trivia/import/{id} | Get an import job
[**get_import_jobs**](GamificationTriviaApi.md#get_import_jobs) | **GET** /trivia/import | Get a list of import job
[**get_question**](GamificationTriviaApi.md#get_question) | **GET** /trivia/questions/{id} | Get a single question
[**get_question_answer**](GamificationTriviaApi.md#get_question_answer) | **GET** /trivia/questions/{question_id}/answers/{id} | Get an answer for a question
[**get_question_answers**](GamificationTriviaApi.md#get_question_answers) | **GET** /trivia/questions/{question_id}/answers | List the answers available for a question
[**get_question_deltas**](GamificationTriviaApi.md#get_question_deltas) | **GET** /trivia/questions/delta | List question deltas in ascending order of updated date
[**get_question_tags**](GamificationTriviaApi.md#get_question_tags) | **GET** /trivia/questions/{id}/tags | List the tags for a question
[**get_question_template**](GamificationTriviaApi.md#get_question_template) | **GET** /trivia/questions/templates/{id} | Get a single question template
[**get_question_templates**](GamificationTriviaApi.md#get_question_templates) | **GET** /trivia/questions/templates | List and search question templates
[**get_questions**](GamificationTriviaApi.md#get_questions) | **GET** /trivia/questions | List and search questions
[**get_questions_count**](GamificationTriviaApi.md#get_questions_count) | **GET** /trivia/questions/count | Count questions based on filters
[**process_import_job**](GamificationTriviaApi.md#process_import_job) | **POST** /trivia/import/{id}/process | Start processing an import job
[**remove_question_tag**](GamificationTriviaApi.md#remove_question_tag) | **DELETE** /trivia/questions/{id}/tags/{tag} | Remove a tag from a question
[**remove_tag_to_questions_batch**](GamificationTriviaApi.md#remove_tag_to_questions_batch) | **DELETE** /trivia/questions/tags/{tag} | Remove a tag from a batch of questions
[**search_question_tags**](GamificationTriviaApi.md#search_question_tags) | **GET** /trivia/tags | List and search tags by the beginning of the string
[**update_import_job**](GamificationTriviaApi.md#update_import_job) | **PUT** /trivia/import/{id} | Update an import job
[**update_question**](GamificationTriviaApi.md#update_question) | **PUT** /trivia/questions/{id} | Update a question
[**update_question_answer**](GamificationTriviaApi.md#update_question_answer) | **PUT** /trivia/questions/{question_id}/answers/{id} | Update an answer for a question
[**update_question_template**](GamificationTriviaApi.md#update_question_template) | **PUT** /trivia/questions/templates/{id} | Update a question template
[**update_questions_in_bulk**](GamificationTriviaApi.md#update_questions_in_bulk) | **PUT** /trivia/questions | Bulk update questions


# **add_question_answers**
> AnswerResource add_question_answers(question_id, opts)

Add an answer to a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

question_id = "question_id_example" # String | The id of the question

opts = { 
  answer: SwaggerClient::AnswerResource.new # AnswerResource | The new answer
}

begin
  #Add an answer to a question
  result = api_instance.add_question_answers(question_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->add_question_answers: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_question_tag**
> add_question_tag(id, opts)

Add a tag to a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question

opts = { 
  tag: "tag_example" # String | The new tag
}

begin
  #Add a tag to a question
  api_instance.add_question_tag(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->add_question_tag: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_tag_to_questions_batch**
> Integer add_tag_to_questions_batch(opts)

Add a tag to a batch of questions

All questions that dont't have the tag and match filters will have it added. The returned number is the number of questions updated.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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
  result = api_instance.add_tag_to_questions_batch(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->add_tag_to_questions_batch: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_import_job**
> ImportJobResource create_import_job(opts)

Create an import job

Set up a job to import a set of trivia questions from a cvs file at a remote url. the file will be validated asynchronously but will not be processed until started manually with the process endpoint.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  request: SwaggerClient::ImportJobResource.new # ImportJobResource | The new import job
}

begin
  #Create an import job
  result = api_instance.create_import_job(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->create_import_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ImportJobResource**](ImportJobResource.md)| The new import job | [optional] 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_question**
> QuestionResource create_question(opts)

Create a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  question: SwaggerClient::QuestionResource.new # QuestionResource | The new question
}

begin
  #Create a question
  result = api_instance.create_question(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->create_question: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question** | [**QuestionResource**](QuestionResource.md)| The new question | [optional] 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_question_template**
> QuestionTemplateResource create_question_template(opts)

Create a question template

Question templates define a type of question and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  question_template_resource: SwaggerClient::QuestionTemplateResource.new # QuestionTemplateResource | The question template resource object
}

begin
  #Create a question template
  result = api_instance.create_question_template(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->create_question_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_template_resource** | [**QuestionTemplateResource**](QuestionTemplateResource.md)| The question template resource object | [optional] 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_import_job**
> delete_import_job(id)

Delete an import job

Also deletes all questions that were imported by it

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = 789 # Integer | The id of the job


begin
  #Delete an import job
  api_instance.delete_import_job(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->delete_import_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the job | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_question**
> delete_question(id)

Delete a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question


begin
  #Delete a question
  api_instance.delete_question(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->delete_question: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_question_answers**
> delete_question_answers(question_id, id)

Remove an answer from a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

question_id = "question_id_example" # String | The id of the question

id = "id_example" # String | The id of the answer


begin
  #Remove an answer from a question
  api_instance.delete_question_answers(question_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->delete_question_answers: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_question_template**
> delete_question_template(id, opts)

Delete a question template

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

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete a question template
  api_instance.delete_question_template(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->delete_question_template: #{e}"
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



# **get_import_job**
> ImportJobResource get_import_job(id)

Get an import job

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = 789 # Integer | The id of the job


begin
  #Get an import job
  result = api_instance.get_import_job(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_import_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the job | 

### Return type

[**ImportJobResource**](ImportJobResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_import_jobs**
> PageResourceImportJobResource get_import_jobs(opts)

Get a list of import job

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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
  result = api_instance.get_import_jobs(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_import_jobs: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_question**
> QuestionResource get_question(id)

Get a single question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question


begin
  #Get a single question
  result = api_instance.get_question(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_question: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

[**QuestionResource**](QuestionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_question_answer**
> AnswerResource get_question_answer(question_id, id)

Get an answer for a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

question_id = "question_id_example" # String | The id of the question

id = "id_example" # String | The id of the answer


begin
  #Get an answer for a question
  result = api_instance.get_question_answer(question_id, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_question_answer: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_question_answers**
> Array&lt;AnswerResource&gt; get_question_answers(question_id)

List the answers available for a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

question_id = "question_id_example" # String | The id of the question


begin
  #List the answers available for a question
  result = api_instance.get_question_answers(question_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_question_answers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **String**| The id of the question | 

### Return type

[**Array&lt;AnswerResource&gt;**](AnswerResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_question_deltas**
> Array&lt;DeltaResource&gt; get_question_deltas(opts)

List question deltas in ascending order of updated date

The 'since' parameter is important to avoid getting a full list of all questions. Implementors should make sure they pass the updated date of the last resource loaded, not the date of the last request, in order to avoid gaps

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

opts = { 
  since: 789 # Integer | Timestamp in seconds
}

begin
  #List question deltas in ascending order of updated date
  result = api_instance.get_question_deltas(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_question_deltas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **Integer**| Timestamp in seconds | [optional] 

### Return type

[**Array&lt;DeltaResource&gt;**](DeltaResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_question_tags**
> Array&lt;String&gt; get_question_tags(id)

List the tags for a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question


begin
  #List the tags for a question
  result = api_instance.get_question_tags(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_question_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the question | 

### Return type

**Array&lt;String&gt;**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_question_template**
> QuestionTemplateResource get_question_template(id)

Get a single question template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single question template
  result = api_instance.get_question_template(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_question_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_question_templates**
> PageResourceQuestionTemplateResource get_question_templates(opts)

List and search question templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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
  result = api_instance.get_question_templates(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_question_templates: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_questions**
> PageResourceQuestionResource get_questions(opts)

List and search questions

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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
  filter_tag: "filter_tag_example", # String | Filter for questions with specified tag
  filter_type: "filter_type_example", # String | Filter for questions with specified type.  Allowable values: ('TEXT', 'IMAGE', 'VIDEO', 'AUDIO')
  filter_published: true, # BOOLEAN | Filter for questions currenctly published or not
  filter_import_id: 789 # Integer | Filter for questions from a specific import job
}

begin
  #List and search questions
  result = api_instance.get_questions(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_questions: #{e}"
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
 **filter_tag** | **String**| Filter for questions with specified tag | [optional] 
 **filter_type** | **String**| Filter for questions with specified type.  Allowable values: (&#39;TEXT&#39;, &#39;IMAGE&#39;, &#39;VIDEO&#39;, &#39;AUDIO&#39;) | [optional] 
 **filter_published** | **BOOLEAN**| Filter for questions currenctly published or not | [optional] 
 **filter_import_id** | **Integer**| Filter for questions from a specific import job | [optional] 

### Return type

[**PageResourceQuestionResource**](PageResourceQuestionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_questions_count**
> Integer get_questions_count(opts)

Count questions based on filters

This is also provided by the list endpoint so you don't need to call this for pagination purposes

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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
  #Count questions based on filters
  result = api_instance.get_questions_count(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->get_questions_count: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **process_import_job**
> ImportJobResource process_import_job(id, publish_now)

Start processing an import job

Will process the CSV file and add new questions asynchronously. The status of the job must be 'VALID'.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = 789 # Integer | The id of the job

publish_now = true # BOOLEAN | Whether the new questions should be published live immediately


begin
  #Start processing an import job
  result = api_instance.process_import_job(id, publish_now)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->process_import_job: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_question_tag**
> remove_question_tag(id, tag)

Remove a tag from a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question

tag = "tag_example" # String | The tag to remove


begin
  #Remove a tag from a question
  api_instance.remove_question_tag(id, tag)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->remove_question_tag: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_tag_to_questions_batch**
> Integer remove_tag_to_questions_batch(tag, opts)

Remove a tag from a batch of questions

ll questions that have the tag and match filters will have it removed. The returned number is the number of questions updated.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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
  result = api_instance.remove_tag_to_questions_batch(tag, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->remove_tag_to_questions_batch: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_question_tags**
> Collectionstring search_question_tags(opts)

List and search tags by the beginning of the string

For performance reasons, search & category filters are mutually exclusive. If category is specified, search filter will be ignored in order to do fast matches for typeahead.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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
  result = api_instance.search_question_tags(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->search_question_tags: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_import_job**
> ImportJobResource update_import_job(id, opts)

Update an import job

Changes should be made before process is started for there to be any effect.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = 789 # Integer | The id of the job

opts = { 
  request: SwaggerClient::ImportJobResource.new # ImportJobResource | The updated job
}

begin
  #Update an import job
  result = api_instance.update_import_job(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->update_import_job: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_question**
> QuestionResource update_question(id, opts)

Update a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the question

opts = { 
  question: SwaggerClient::QuestionResource.new # QuestionResource | The updated question
}

begin
  #Update a question
  result = api_instance.update_question(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->update_question: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_question_answer**
> update_question_answer(question_id, id, opts)

Update an answer for a question

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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
  api_instance.update_question_answer(question_id, id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->update_question_answer: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_question_template**
> QuestionTemplateResource update_question_template(id, opts)

Update a question template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GamificationTriviaApi.new

id = "id_example" # String | The id of the template

opts = { 
  question_template_resource: SwaggerClient::QuestionTemplateResource.new # QuestionTemplateResource | The question template resource object
}

begin
  #Update a question template
  result = api_instance.update_question_template(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->update_question_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **question_template_resource** | [**QuestionTemplateResource**](QuestionTemplateResource.md)| The question template resource object | [optional] 

### Return type

[**QuestionTemplateResource**](QuestionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_questions_in_bulk**
> Integer update_questions_in_bulk(opts)

Bulk update questions

Will update all questions that match filters used (or all questions in system if no filters used). Body should match a question resource with only those properties you wish to set. Null values will be ignored. Returned number is how many were updated.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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
  result = api_instance.update_questions_in_bulk(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationTriviaApi->update_questions_in_bulk: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



