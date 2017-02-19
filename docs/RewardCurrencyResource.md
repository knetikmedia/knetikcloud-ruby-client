# SwaggerClient::RewardCurrencyResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency_code** | **String** | The code of the currency type to give | 
**currency_name** | **String** | The name of the currency reward to give.  Set by currency_code) | [optional] 
**max_rank** | **Integer** | The highest number (worst) rank to give the reward to. Must be greater than or equal to minRank | 
**min_rank** | **Integer** | The lowest number (best) rank to give the reward to. Must be greater than zero | 
**percent** | **BOOLEAN** | True if the value is actually a percentage of the intake | 
**value** | **Float** | The amount of currency to give. For percentage values, 0.5 is 50% | 


