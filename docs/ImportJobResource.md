# KnetikCloudClient::ImportJobResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category_id** | **String** | The id of the category to assign all questions in the import to | 
**created_date** | **Integer** | The date the job was created in seconds since unix epoc | [optional] 
**id** | **Integer** | The id of the job | [optional] 
**name** | **String** | A name for this import for later reference | 
**output** | [**Array&lt;ImportJobOutputResource&gt;**](ImportJobOutputResource.md) | Error information from validation | [optional] 
**record_count** | **Integer** | The number of questions form the CSV file. Filled in after validation | [optional] 
**status** | **String** | The status of the job | [optional] 
**updated_date** | **Integer** | The date the job was last updated in seconds since unix epoc | [optional] 
**url** | **String** | The url of a CSV file to pull trivia questions from. Cannot be changed after initial POST | 
**vendor** | **String** | The vendor who supplied this set of questions | 


