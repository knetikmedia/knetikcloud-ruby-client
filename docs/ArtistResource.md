# KnetikCloudClient::ArtistResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] 
**born** | **String** | YYYY/MM/DD when this artist was born | [optional] 
**contribution_count** | **Integer** | The current number of contributions the artist has made | [optional] 
**contributions** | [**Array&lt;ContributionResource&gt;**](ContributionResource.md) | The list of media this artist has contributed to as well as role(s) during contribution.  Use media endpoint to add contributions | [optional] 
**created_date** | **Integer** | The date/time this resource was created in seconds since unix epoch | [optional] 
**died** | **String** | YYYY/MM/DD when this artist died | [optional] 
**id** | **Integer** | The unique ID for that resource | [optional] 
**long_description** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] 
**name** | **String** | The user friendly name of that resource | 
**priority** | **Integer** | The sort order priority ofr the artist.  Default 100 | [optional] 
**short_description** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] 
**template** | **String** | An artist template this artist is validated against (private). May be null and no validation of additional_properties will be done | [optional] 
**updated_date** | **Integer** | The date/time this resource was last updated in seconds since unix epoch | [optional] 


