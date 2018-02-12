# KnetikCloudClient::ActivityOccurrenceResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activity_id** | **Integer** | The id of the activity | 
**bans** | **Array&lt;Integer&gt;** | The ids of banned users that cannot join the occurrence. See occurrence-user delete endpoint | [optional] 
**challenge_activity_id** | **Integer** | The id of the challenge activity (as part of the event, required if eventId set) | [optional] 
**core_settings** | [**CoreActivityOccurrenceSettings**](CoreActivityOccurrenceSettings.md) | Defines core settings about the activity occurrence that affect how it behaves in the system. Validated against core settings in activity/challenge-activity. | [optional] 
**created_date** | **Integer** | The date this occurrence was created, unix timestamp in seconds | [optional] 
**entitlement** | [**ActivityEntitlementResource**](ActivityEntitlementResource.md) | The entitlement item required to enter the occurrence. Required if not part of an event. Must come from the set of entitlement items listed in the activity | [optional] 
**event_id** | **Integer** | The id of the event | [optional] 
**host** | [**SimpleUserResource**](SimpleUserResource.md) | The host of the occurrence, if not a participant (will be left out of users array). Must be the caller that creates the occurrence unless admin. Requires activity/challenge to allow host_option of &#39;non_player&#39; if not admin as well | [optional] 
**id** | **Integer** | The id of the activity occurrence | [optional] 
**reward_status** | **String** | Indicate if the rewards have been given out already | [optional] 
**settings** | [**Array&lt;SelectedSettingResource&gt;**](SelectedSettingResource.md) | The values selected from the available settings defined for the activity. Ex: difficulty: hard. Can be left out if the activity is played during an event and the settings are already set at the event level. Ex: every monday, difficulty: hard, number of questions: 10, category: sport. Otherwise, the set must exactly match those of the activity. | [optional] 
**simulated** | **BOOLEAN** | Whether this occurrence will be ran as a simulation. Simulations will not be rewarded. Useful for bot play or trials | [optional] 
**start_date** | **Integer** | The date this occurrence was started, unix timestamp in seconds. null if not yet started | [optional] 
**status** | **String** | The current status of the occurrence (default: OPEN) | [optional] 
**updated_date** | **Integer** | The date this occurrence was last updated, unix timestamp in seconds | [optional] 
**users** | [**Array&lt;ActivityUserResource&gt;**](ActivityUserResource.md) | The list of users participating in this occurrence. Can only be set directly with ACTIVITIES_ADMIN permission | [optional] 


