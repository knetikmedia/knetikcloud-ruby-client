# KnetikCloudClient::ClientResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token_validity_seconds** | **Integer** | The expiration time of an initial oauth token in seconds | [optional] 
**client_key** | **String** | The client_id field of the oauth token request | 
**grant_types** | **Array&lt;String&gt;** | The oauth grant type as in: password (username/password auth), client_credentials (server-to-server, private clients), refresh_token (to allow clients to refresh their initial token), facebook, google, etc) See documentation for a compelte list. | [optional] 
**id** | **Integer** | Generated unique ID for the client | [optional] 
**is_public** | **BOOLEAN** | Set to true if the client is public i.e the secret key can be secured | [optional] 
**locked** | **BOOLEAN** | Used to flag system clients that are not meant to be tinkered with | [optional] 
**name** | **String** | The friendly name of the client | 
**redirect_uris** | **Array&lt;String&gt;** | A redirection URL to use when granting access to third-parties (seldomly used) | [optional] 
**refresh_token_validity_seconds** | **Integer** | The expiration time of a refresh oauth token in seconds | [optional] 
**secret** | **String** | The client-secret field of the oauth request when creating a private client | 


