# KnetikCloudClient::AmazonS3Activity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | S3 action (i.e., &#39;PUT&#39;) associated with the activity | [optional] 
**cdn_url** | **String** | URL for accessing the resource. Will use a CDN if configured, or direct to S3 if not | [optional] 
**created_date** | **Integer** | Date the resource was created in S3 | [optional] 
**filename** | **String** | Name of the file being processed as a resource in S3 | [optional] 
**id** | **Integer** | Unique id of the S3 activity | [optional] 
**object_key** | **String** | S3 object key for the resource | [optional] 
**url** | **String** | URL that one can PUT the file to, to upload it to S3 | [optional] 
**user_id** | **Integer** | The id of the user that created this S3 activity | [optional] 


