# KnetikCloudClient::CoreActivitySettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**boot_in_play** | **BOOLEAN** | Whether the host can boot a user while the status is PLAYING. Default false | [optional] 
**custom_launch_address_allowed** | **BOOLEAN** | Restriction for whether the host creating an occurrence can specify a custom launch address (such as their own ip address). Default &#39;false&#39; | [optional] 
**host_option** | **String** | Restriction for who can host an occurrence. admin disallows regular users, player means the user must also be a player in the occurrence if not admin, non-player means the user has the option to host without being a player. Default &#39;player&#39; | [optional] 
**host_status_control** | **BOOLEAN** | Restriction for whether the host has control of the status once the game launches. If false they can only manage the game before (when setup and open). Default &#39;false&#39; | [optional] 
**join_in_play** | **BOOLEAN** | Whether users can join while the status is PLAYING. Default false | [optional] 
**leave_in_play** | **BOOLEAN** | Whether users can leave while the status is PLAYING. Default false | [optional] 
**max_players** | **Integer** | The maximum number of players the game can hold | [optional] 
**min_players** | **Integer** | The minimum number of players the game can hold | [optional] 
**results_trust** | **String** | Restriction for who is able to report game end and results. Admin is always able to send results as well. Default &#39;none&#39; | [optional] 


