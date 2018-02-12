=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

# Common files
require 'knetikcloud_client/api_client'
require 'knetikcloud_client/api_error'
require 'knetikcloud_client/version'
require 'knetikcloud_client/configuration'

# Models
require 'knetikcloud_client/models/achievement_definition_resource'
require 'knetikcloud_client/models/action_contextobject'
require 'knetikcloud_client/models/action_resource'
require 'knetikcloud_client/models/action_variable_resource'
require 'knetikcloud_client/models/activity_entitlement_resource'
require 'knetikcloud_client/models/activity_occurrence_creation_failure'
require 'knetikcloud_client/models/activity_occurrence_join_result'
require 'knetikcloud_client/models/activity_occurrence_resource'
require 'knetikcloud_client/models/activity_occurrence_results'
require 'knetikcloud_client/models/activity_occurrence_results_resource'
require 'knetikcloud_client/models/activity_occurrence_settings_resource'
require 'knetikcloud_client/models/activity_resource'
require 'knetikcloud_client/models/activity_user_resource'
require 'knetikcloud_client/models/address_resource'
require 'knetikcloud_client/models/aggregate_count_resource'
require 'knetikcloud_client/models/aggregate_invoice_report_resource'
require 'knetikcloud_client/models/amazon_s3_activity'
require 'knetikcloud_client/models/answer_resource'
require 'knetikcloud_client/models/apply_payment_request'
require 'knetikcloud_client/models/argument_resource'
require 'knetikcloud_client/models/article_resource'
require 'knetikcloud_client/models/artist_resource'
require 'knetikcloud_client/models/available_setting_resource'
require 'knetikcloud_client/models/bare_activity_resource'
require 'knetikcloud_client/models/bare_challenge_activity_resource'
require 'knetikcloud_client/models/batch'
require 'knetikcloud_client/models/batch_request'
require 'knetikcloud_client/models/batch_result'
require 'knetikcloud_client/models/batch_return'
require 'knetikcloud_client/models/behavior'
require 'knetikcloud_client/models/behavior_definition_resource'
require 'knetikcloud_client/models/billing_report'
require 'knetikcloud_client/models/boolean_resource'
require 'knetikcloud_client/models/bre_action_log'
require 'knetikcloud_client/models/bre_category_resource'
require 'knetikcloud_client/models/bre_event'
require 'knetikcloud_client/models/bre_event_log'
require 'knetikcloud_client/models/bre_global_resource'
require 'knetikcloud_client/models/bre_global_scope_definition'
require 'knetikcloud_client/models/bre_rule'
require 'knetikcloud_client/models/bre_rule_log'
require 'knetikcloud_client/models/bre_trigger_parameter_definition'
require 'knetikcloud_client/models/bre_trigger_resource'
require 'knetikcloud_client/models/broadcastable_event'
require 'knetikcloud_client/models/bundled_sku'
require 'knetikcloud_client/models/campaign_resource'
require 'knetikcloud_client/models/cart'
require 'knetikcloud_client/models/cart_item_request'
require 'knetikcloud_client/models/cart_line_item'
require 'knetikcloud_client/models/cart_shippable_response'
require 'knetikcloud_client/models/cart_shipping_address_request'
require 'knetikcloud_client/models/cart_shipping_option'
require 'knetikcloud_client/models/cart_summary'
require 'knetikcloud_client/models/catalog_sale'
require 'knetikcloud_client/models/category_resource'
require 'knetikcloud_client/models/challenge_activity_resource'
require 'knetikcloud_client/models/challenge_event_participant_resource'
require 'knetikcloud_client/models/challenge_event_resource'
require 'knetikcloud_client/models/challenge_resource'
require 'knetikcloud_client/models/chat_blacklist_resource'
require 'knetikcloud_client/models/chat_message_request'
require 'knetikcloud_client/models/chat_message_resource'
require 'knetikcloud_client/models/chat_thread_resource'
require 'knetikcloud_client/models/chat_user_thread_resource'
require 'knetikcloud_client/models/client_resource'
require 'knetikcloud_client/models/comment_resource'
require 'knetikcloud_client/models/config'
require 'knetikcloud_client/models/config_lookup_resource'
require 'knetikcloud_client/models/constant_resource'
require 'knetikcloud_client/models/contribution_resource'
require 'knetikcloud_client/models/core_activity_occurrence_settings'
require 'knetikcloud_client/models/core_activity_settings'
require 'knetikcloud_client/models/core_challenge_activity_settings'
require 'knetikcloud_client/models/country'
require 'knetikcloud_client/models/country_resource'
require 'knetikcloud_client/models/country_tax_resource'
require 'knetikcloud_client/models/coupon_definition'
require 'knetikcloud_client/models/create_activity_occurrence_request'
require 'knetikcloud_client/models/create_billing_agreement_request'
require 'knetikcloud_client/models/create_pay_pal_payment_request'
require 'knetikcloud_client/models/currency_resource'
require 'knetikcloud_client/models/customer_config'
require 'knetikcloud_client/models/database_config'
require 'knetikcloud_client/models/date_operation_resource'
require 'knetikcloud_client/models/default_operation_resource'
require 'knetikcloud_client/models/delta_resource'
require 'knetikcloud_client/models/device_resource'
require 'knetikcloud_client/models/discount'
require 'knetikcloud_client/models/disposition_count'
require 'knetikcloud_client/models/disposition_resource'
require 'knetikcloud_client/models/double_operation_resource'
require 'knetikcloud_client/models/entitlement_grant_request'
require 'knetikcloud_client/models/error_resource'
require 'knetikcloud_client/models/event_context_resource'
require 'knetikcloud_client/models/expression_resource'
require 'knetikcloud_client/models/expressionobject'
require 'knetikcloud_client/models/facebook_token'
require 'knetikcloud_client/models/fatt_merchant_payment_method'
require 'knetikcloud_client/models/fatt_merchant_payment_method_request'
require 'knetikcloud_client/models/finalize_billing_agreement_request'
require 'knetikcloud_client/models/finalize_pay_pal_payment_request'
require 'knetikcloud_client/models/flag_report_resource'
require 'knetikcloud_client/models/flag_resource'
require 'knetikcloud_client/models/forward_log'
require 'knetikcloud_client/models/fulfillment_type'
require 'knetikcloud_client/models/global_check_and_increment_resource'
require 'knetikcloud_client/models/global_resource'
require 'knetikcloud_client/models/google_payment_request'
require 'knetikcloud_client/models/google_token'
require 'knetikcloud_client/models/grant_type_resource'
require 'knetikcloud_client/models/group_member_resource'
require 'knetikcloud_client/models/group_resource'
require 'knetikcloud_client/models/id_ref'
require 'knetikcloud_client/models/import_job_output_resource'
require 'knetikcloud_client/models/import_job_resource'
require 'knetikcloud_client/models/int_wrapper'
require 'knetikcloud_client/models/integer_operation_resource'
require 'knetikcloud_client/models/inventory_subscription_resource'
require 'knetikcloud_client/models/invoice_create_request'
require 'knetikcloud_client/models/invoice_item_resource'
require 'knetikcloud_client/models/invoice_log_entry'
require 'knetikcloud_client/models/invoice_payment_status_request'
require 'knetikcloud_client/models/invoice_resource'
require 'knetikcloud_client/models/item'
require 'knetikcloud_client/models/item_behavior_definition_resource'
require 'knetikcloud_client/models/item_id_request'
require 'knetikcloud_client/models/item_template_resource'
require 'knetikcloud_client/models/key_value_pairstringstring'
require 'knetikcloud_client/models/leaderboard_entry_resource'
require 'knetikcloud_client/models/leaderboard_resource'
require 'knetikcloud_client/models/leveling_resource'
require 'knetikcloud_client/models/limited_gettable_group'
require 'knetikcloud_client/models/location_log_resource'
require 'knetikcloud_client/models/lookup_resource'
require 'knetikcloud_client/models/maintenance'
require 'knetikcloud_client/models/map_resource'
require 'knetikcloud_client/models/message_content_resource'
require 'knetikcloud_client/models/message_resource'
require 'knetikcloud_client/models/message_template_bulk_request'
require 'knetikcloud_client/models/message_template_resource'
require 'knetikcloud_client/models/metric_resource'
require 'knetikcloud_client/models/mongo_database_config'
require 'knetikcloud_client/models/nested_category'
require 'knetikcloud_client/models/new_password_request'
require 'knetikcloud_client/models/notification_resource'
require 'knetikcloud_client/models/notification_type_resource'
require 'knetikcloud_client/models/notification_user_type_resource'
require 'knetikcloud_client/models/o_auth2_resource'
require 'knetikcloud_client/models/oauth_access_token_resource'
require 'knetikcloud_client/models/object_resource'
require 'knetikcloud_client/models/operation_definition_resource'
require 'knetikcloud_client/models/operation_resource'
require 'knetikcloud_client/models/operator'
require 'knetikcloud_client/models/optimal_payment_request'
require 'knetikcloud_client/models/order'
require 'knetikcloud_client/models/page_resource_achievement_definition_resource'
require 'knetikcloud_client/models/page_resource_activity_occurrence_resource'
require 'knetikcloud_client/models/page_resource_aggregate_count_resource'
require 'knetikcloud_client/models/page_resource_aggregate_invoice_report_resource'
require 'knetikcloud_client/models/page_resource_article_resource'
require 'knetikcloud_client/models/page_resource_artist_resource'
require 'knetikcloud_client/models/page_resource_bare_activity_resource'
require 'knetikcloud_client/models/page_resource_bare_challenge_activity_resource'
require 'knetikcloud_client/models/page_resource_billing_report'
require 'knetikcloud_client/models/page_resource_bre_category_resource'
require 'knetikcloud_client/models/page_resource_bre_event_log'
require 'knetikcloud_client/models/page_resource_bre_global_resource'
require 'knetikcloud_client/models/page_resource_bre_rule'
require 'knetikcloud_client/models/page_resource_bre_trigger_resource'
require 'knetikcloud_client/models/page_resource_campaign_resource'
require 'knetikcloud_client/models/page_resource_cart_summary'
require 'knetikcloud_client/models/page_resource_catalog_sale'
require 'knetikcloud_client/models/page_resource_category_resource'
require 'knetikcloud_client/models/page_resource_challenge_event_participant_resource'
require 'knetikcloud_client/models/page_resource_challenge_event_resource'
require 'knetikcloud_client/models/page_resource_challenge_resource'
require 'knetikcloud_client/models/page_resource_chat_message_resource'
require 'knetikcloud_client/models/page_resource_chat_user_thread_resource'
require 'knetikcloud_client/models/page_resource_client_resource'
require 'knetikcloud_client/models/page_resource_comment_resource'
require 'knetikcloud_client/models/page_resource_config'
require 'knetikcloud_client/models/page_resource_country_tax_resource'
require 'knetikcloud_client/models/page_resource_currency_resource'
require 'knetikcloud_client/models/page_resource_device_resource'
require 'knetikcloud_client/models/page_resource_disposition_resource'
require 'knetikcloud_client/models/page_resource_entitlement_item'
require 'knetikcloud_client/models/page_resource_flag_report_resource'
require 'knetikcloud_client/models/page_resource_flag_resource'
require 'knetikcloud_client/models/page_resource_forward_log'
require 'knetikcloud_client/models/page_resource_fulfillment_type'
require 'knetikcloud_client/models/page_resource_group_member_resource'
require 'knetikcloud_client/models/page_resource_group_resource'
require 'knetikcloud_client/models/page_resource_import_job_resource'
require 'knetikcloud_client/models/page_resource_invoice_log_entry'
require 'knetikcloud_client/models/page_resource_invoice_resource'
require 'knetikcloud_client/models/page_resource_item_template_resource'
require 'knetikcloud_client/models/page_resource_leveling_resource'
require 'knetikcloud_client/models/page_resource_location_log_resource'
require 'knetikcloud_client/models/page_resource_message_template_resource'
require 'knetikcloud_client/models/page_resource_notification_type_resource'
require 'knetikcloud_client/models/page_resource_notification_user_type_resource'
require 'knetikcloud_client/models/page_resource_oauth_access_token_resource'
require 'knetikcloud_client/models/page_resource_object_resource'
require 'knetikcloud_client/models/page_resource_payment_method_type_resource'
require 'knetikcloud_client/models/page_resource_permission_resource'
require 'knetikcloud_client/models/page_resource_poll_resource'
require 'knetikcloud_client/models/page_resource_question_resource'
require 'knetikcloud_client/models/page_resource_question_template_resource'
require 'knetikcloud_client/models/page_resource_revenue_country_report_resource'
require 'knetikcloud_client/models/page_resource_revenue_product_report_resource'
require 'knetikcloud_client/models/page_resource_reward_set_resource'
require 'knetikcloud_client/models/page_resource_role_resource'
require 'knetikcloud_client/models/page_resource_saved_address_resource'
require 'knetikcloud_client/models/page_resource_simple_reference_resourceobject'
require 'knetikcloud_client/models/page_resource_simple_user_resource'
require 'knetikcloud_client/models/page_resource_simple_wallet'
require 'knetikcloud_client/models/page_resource_state_tax_resource'
require 'knetikcloud_client/models/page_resource_store_item'
require 'knetikcloud_client/models/page_resource_store_item_template_resource'
require 'knetikcloud_client/models/page_resource_subscription_resource'
require 'knetikcloud_client/models/page_resource_subscription_template_resource'
require 'knetikcloud_client/models/page_resource_template_resource'
require 'knetikcloud_client/models/page_resource_topic_resource'
require 'knetikcloud_client/models/page_resource_topic_subscriber_resource'
require 'knetikcloud_client/models/page_resource_transaction_resource'
require 'knetikcloud_client/models/page_resource_usage_info'
require 'knetikcloud_client/models/page_resource_user_achievement_group_resource'
require 'knetikcloud_client/models/page_resource_user_action_log'
require 'knetikcloud_client/models/page_resource_user_base_resource'
require 'knetikcloud_client/models/page_resource_user_inventory_resource'
require 'knetikcloud_client/models/page_resource_user_item_log_resource'
require 'knetikcloud_client/models/page_resource_user_leveling_resource'
require 'knetikcloud_client/models/page_resource_user_notification_resource'
require 'knetikcloud_client/models/page_resource_user_relationship_resource'
require 'knetikcloud_client/models/page_resource_vendor_resource'
require 'knetikcloud_client/models/page_resource_video_relationship_resource'
require 'knetikcloud_client/models/page_resource_video_resource'
require 'knetikcloud_client/models/page_resource_wallet_total_response'
require 'knetikcloud_client/models/page_resource_wallet_transaction_resource'
require 'knetikcloud_client/models/page_resourcestring'
require 'knetikcloud_client/models/parameter_resource'
require 'knetikcloud_client/models/participant'
require 'knetikcloud_client/models/password_reset_request'
require 'knetikcloud_client/models/pay_by_saved_method_request'
require 'knetikcloud_client/models/payment_authorization_resource'
require 'knetikcloud_client/models/payment_method_details'
require 'knetikcloud_client/models/payment_method_resource'
require 'knetikcloud_client/models/payment_method_type_resource'
require 'knetikcloud_client/models/permission_resource'
require 'knetikcloud_client/models/poll_answer_resource'
require 'knetikcloud_client/models/poll_resource'
require 'knetikcloud_client/models/poll_response_resource'
require 'knetikcloud_client/models/predicate_resource'
require 'knetikcloud_client/models/property'
require 'knetikcloud_client/models/property_definition_resource'
require 'knetikcloud_client/models/property_field_list_resource'
require 'knetikcloud_client/models/property_field_resource'
require 'knetikcloud_client/models/question_resource'
require 'knetikcloud_client/models/question_template_resource'
require 'knetikcloud_client/models/quick_buy_request'
require 'knetikcloud_client/models/raw_email_resource'
require 'knetikcloud_client/models/raw_push_resource'
require 'knetikcloud_client/models/raw_sms_resource'
require 'knetikcloud_client/models/reactivate_subscription_request'
require 'knetikcloud_client/models/refund_request'
require 'knetikcloud_client/models/refund_resource'
require 'knetikcloud_client/models/result'
require 'knetikcloud_client/models/revenue_country_report_resource'
require 'knetikcloud_client/models/revenue_product_report_resource'
require 'knetikcloud_client/models/revenue_report_resource'
require 'knetikcloud_client/models/reward_currency_resource'
require 'knetikcloud_client/models/reward_item_resource'
require 'knetikcloud_client/models/reward_set_resource'
require 'knetikcloud_client/models/role_resource'
require 'knetikcloud_client/models/s3_config'
require 'knetikcloud_client/models/sample_countries_response'
require 'knetikcloud_client/models/saved_address_resource'
require 'knetikcloud_client/models/schedule'
require 'knetikcloud_client/models/selected_setting_request'
require 'knetikcloud_client/models/selected_setting_resource'
require 'knetikcloud_client/models/setting_option'
require 'knetikcloud_client/models/simple_group_resource'
require 'knetikcloud_client/models/simple_reference_resourceint'
require 'knetikcloud_client/models/simple_reference_resourcelong'
require 'knetikcloud_client/models/simple_reference_resourceobject'
require 'knetikcloud_client/models/simple_reference_resourcestring'
require 'knetikcloud_client/models/simple_user_resource'
require 'knetikcloud_client/models/simple_wallet'
require 'knetikcloud_client/models/sku'
require 'knetikcloud_client/models/sku_request'
require 'knetikcloud_client/models/sql_database_config'
require 'knetikcloud_client/models/state_resource'
require 'knetikcloud_client/models/state_tax_resource'
require 'knetikcloud_client/models/store_item_template_resource'
require 'knetikcloud_client/models/string_operation_resource'
require 'knetikcloud_client/models/string_wrapper'
require 'knetikcloud_client/models/stripe_create_payment_method'
require 'knetikcloud_client/models/stripe_payment_request'
require 'knetikcloud_client/models/subscription_credit_resource'
require 'knetikcloud_client/models/subscription_plan'
require 'knetikcloud_client/models/subscription_plan_resource'
require 'knetikcloud_client/models/subscription_price_override_request'
require 'knetikcloud_client/models/subscription_resource'
require 'knetikcloud_client/models/subscription_template_resource'
require 'knetikcloud_client/models/template_email_resource'
require 'knetikcloud_client/models/template_push_resource'
require 'knetikcloud_client/models/template_resource'
require 'knetikcloud_client/models/template_sms_resource'
require 'knetikcloud_client/models/templated_email'
require 'knetikcloud_client/models/tier_resource'
require 'knetikcloud_client/models/token_details_resource'
require 'knetikcloud_client/models/topic'
require 'knetikcloud_client/models/topic_resource'
require 'knetikcloud_client/models/topic_subscriber'
require 'knetikcloud_client/models/topic_subscriber_resource'
require 'knetikcloud_client/models/transaction_resource'
require 'knetikcloud_client/models/type_hint_lookup_resource'
require 'knetikcloud_client/models/usage_info'
require 'knetikcloud_client/models/user_achievement_group_resource'
require 'knetikcloud_client/models/user_achievement_resource'
require 'knetikcloud_client/models/user_action_log'
require 'knetikcloud_client/models/user_activity_results'
require 'knetikcloud_client/models/user_activity_results_resource'
require 'knetikcloud_client/models/user_base_resource'
require 'knetikcloud_client/models/user_inventory_add_request'
require 'knetikcloud_client/models/user_inventory_resource'
require 'knetikcloud_client/models/user_item_log_resource'
require 'knetikcloud_client/models/user_leveling_resource'
require 'knetikcloud_client/models/user_notification_resource'
require 'knetikcloud_client/models/user_relationship_reference_resource'
require 'knetikcloud_client/models/user_relationship_resource'
require 'knetikcloud_client/models/user_resource'
require 'knetikcloud_client/models/username_lookup_resource'
require 'knetikcloud_client/models/value_wrapperboolean'
require 'knetikcloud_client/models/value_wrapperstring'
require 'knetikcloud_client/models/variable_type_resource'
require 'knetikcloud_client/models/vendor_email_lookup_resource'
require 'knetikcloud_client/models/vendor_resource'
require 'knetikcloud_client/models/version'
require 'knetikcloud_client/models/video_relationship_resource'
require 'knetikcloud_client/models/video_resource'
require 'knetikcloud_client/models/wallet_alter_request'
require 'knetikcloud_client/models/wallet_total_response'
require 'knetikcloud_client/models/wallet_transaction_resource'
require 'knetikcloud_client/models/websocket_message_resource'
require 'knetikcloud_client/models/xsolla_payment_request'
require 'knetikcloud_client/models/audio_property_definition_resource'
require 'knetikcloud_client/models/boolean_property'
require 'knetikcloud_client/models/boolean_property_definition_resource'
require 'knetikcloud_client/models/cache_clear_event'
require 'knetikcloud_client/models/consumable'
require 'knetikcloud_client/models/date_property'
require 'knetikcloud_client/models/date_property_definition_resource'
require 'knetikcloud_client/models/double_property'
require 'knetikcloud_client/models/double_property_definition_resource'
require 'knetikcloud_client/models/entitlement_item'
require 'knetikcloud_client/models/expirable'
require 'knetikcloud_client/models/file_group_property'
require 'knetikcloud_client/models/file_group_property_definition_resource'
require 'knetikcloud_client/models/file_property'
require 'knetikcloud_client/models/file_property_definition_resource'
require 'knetikcloud_client/models/formatted_text_property'
require 'knetikcloud_client/models/formatted_text_property_definition_resource'
require 'knetikcloud_client/models/fulfillable'
require 'knetikcloud_client/models/guest_playable'
require 'knetikcloud_client/models/image_property_definition_resource'
require 'knetikcloud_client/models/integer_property'
require 'knetikcloud_client/models/integer_property_definition_resource'
require 'knetikcloud_client/models/limited_gettable'
require 'knetikcloud_client/models/list_property'
require 'knetikcloud_client/models/list_property_definition_resource'
require 'knetikcloud_client/models/log_level_event'
require 'knetikcloud_client/models/long_property'
require 'knetikcloud_client/models/long_property_definition_resource'
require 'knetikcloud_client/models/map_property'
require 'knetikcloud_client/models/map_property_definition_resource'
require 'knetikcloud_client/models/mobile_device_resource'
require 'knetikcloud_client/models/new_customer_event'
require 'knetikcloud_client/models/pre_req_entitlement'
require 'knetikcloud_client/models/price_overridable'
require 'knetikcloud_client/models/remove_customer_event'
require 'knetikcloud_client/models/spendable'
require 'knetikcloud_client/models/store_item'
require 'knetikcloud_client/models/text_property'
require 'knetikcloud_client/models/text_property_definition_resource'
require 'knetikcloud_client/models/time_period_gettable'
require 'knetikcloud_client/models/time_period_usable'
require 'knetikcloud_client/models/video_property_definition_resource'
require 'knetikcloud_client/models/websocket_remove_topic_event'
require 'knetikcloud_client/models/websocket_send_message_event'
require 'knetikcloud_client/models/websocket_send_topic_message_event'
require 'knetikcloud_client/models/websocket_subscribe_event'
require 'knetikcloud_client/models/websocket_unsubscribe_event'
require 'knetikcloud_client/models/audio_group_property'
require 'knetikcloud_client/models/audio_group_property_definition_resource'
require 'knetikcloud_client/models/audio_property'
require 'knetikcloud_client/models/bundle_item'
require 'knetikcloud_client/models/coupon_item'
require 'knetikcloud_client/models/image_group_property'
require 'knetikcloud_client/models/image_group_property_definition_resource'
require 'knetikcloud_client/models/image_property'
require 'knetikcloud_client/models/shipping_item'
require 'knetikcloud_client/models/subscription'
require 'knetikcloud_client/models/video_group_property'
require 'knetikcloud_client/models/video_group_property_definition_resource'
require 'knetikcloud_client/models/video_property'

# APIs
require 'knetikcloud_client/api/access_token_api'
require 'knetikcloud_client/api/activities_api'
require 'knetikcloud_client/api/amazon_web_services_s3_api'
require 'knetikcloud_client/api/auth_clients_api'
require 'knetikcloud_client/api/auth_permissions_api'
require 'knetikcloud_client/api/auth_roles_api'
require 'knetikcloud_client/api/auth_tokens_api'
require 'knetikcloud_client/api/bre_rule_engine_actions_api'
require 'knetikcloud_client/api/bre_rule_engine_categories_api'
require 'knetikcloud_client/api/bre_rule_engine_events_api'
require 'knetikcloud_client/api/bre_rule_engine_expressions_api'
require 'knetikcloud_client/api/bre_rule_engine_globals_api'
require 'knetikcloud_client/api/bre_rule_engine_rules_api'
require 'knetikcloud_client/api/bre_rule_engine_triggers_api'
require 'knetikcloud_client/api/bre_rule_engine_variables_api'
require 'knetikcloud_client/api/campaigns_api'
require 'knetikcloud_client/api/campaigns_challenges_api'
require 'knetikcloud_client/api/campaigns_rewards_api'
require 'knetikcloud_client/api/categories_api'
require 'knetikcloud_client/api/chat_api'
require 'knetikcloud_client/api/configs_api'
require 'knetikcloud_client/api/content_articles_api'
require 'knetikcloud_client/api/content_comments_api'
require 'knetikcloud_client/api/content_polls_api'
require 'knetikcloud_client/api/currencies_api'
require 'knetikcloud_client/api/devices_api'
require 'knetikcloud_client/api/dispositions_api'
require 'knetikcloud_client/api/fulfillment_api'
require 'knetikcloud_client/api/gamification_achievements_api'
require 'knetikcloud_client/api/gamification_leaderboards_api'
require 'knetikcloud_client/api/gamification_leveling_api'
require 'knetikcloud_client/api/gamification_metrics_api'
require 'knetikcloud_client/api/gamification_trivia_api'
require 'knetikcloud_client/api/invoices_api'
require 'knetikcloud_client/api/locations_api'
require 'knetikcloud_client/api/logs_api'
require 'knetikcloud_client/api/media_artists_api'
require 'knetikcloud_client/api/media_moderation_api'
require 'knetikcloud_client/api/media_videos_api'
require 'knetikcloud_client/api/messaging_api'
require 'knetikcloud_client/api/messaging_topics_api'
require 'knetikcloud_client/api/notifications_api'
require 'knetikcloud_client/api/objects_api'
require 'knetikcloud_client/api/payments_api'
require 'knetikcloud_client/api/payments_apple_api'
require 'knetikcloud_client/api/payments_fatt_merchant_api'
require 'knetikcloud_client/api/payments_google_api'
require 'knetikcloud_client/api/payments_optimal_api'
require 'knetikcloud_client/api/payments_pay_pal_classic_api'
require 'knetikcloud_client/api/payments_stripe_api'
require 'knetikcloud_client/api/payments_transactions_api'
require 'knetikcloud_client/api/payments_wallets_api'
require 'knetikcloud_client/api/payments_xsolla_api'
require 'knetikcloud_client/api/reporting_challenges_api'
require 'knetikcloud_client/api/reporting_orders_api'
require 'knetikcloud_client/api/reporting_revenue_api'
require 'knetikcloud_client/api/reporting_subscriptions_api'
require 'knetikcloud_client/api/reporting_usage_api'
require 'knetikcloud_client/api/reporting_users_api'
require 'knetikcloud_client/api/search_api'
require 'knetikcloud_client/api/social_facebook_api'
require 'knetikcloud_client/api/social_google_api'
require 'knetikcloud_client/api/store_api'
require 'knetikcloud_client/api/store_bundles_api'
require 'knetikcloud_client/api/store_coupons_api'
require 'knetikcloud_client/api/store_sales_api'
require 'knetikcloud_client/api/store_shipping_api'
require 'knetikcloud_client/api/store_shopping_carts_api'
require 'knetikcloud_client/api/store_subscriptions_api'
require 'knetikcloud_client/api/store_vendors_api'
require 'knetikcloud_client/api/taxes_api'
require 'knetikcloud_client/api/templates_properties_api'
require 'knetikcloud_client/api/users_api'
require 'knetikcloud_client/api/users_addresses_api'
require 'knetikcloud_client/api/users_friendships_api'
require 'knetikcloud_client/api/users_groups_api'
require 'knetikcloud_client/api/users_inventory_api'
require 'knetikcloud_client/api/users_relationships_api'
require 'knetikcloud_client/api/users_subscriptions_api'
require 'knetikcloud_client/api/util_batch_api'
require 'knetikcloud_client/api/util_health_api'
require 'knetikcloud_client/api/util_maintenance_api'
require 'knetikcloud_client/api/util_security_api'
require 'knetikcloud_client/api/util_version_api'

module KnetikCloudClient
  class << self
    # Customize default settings for the SDK using block.
    #   KnetikCloudClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
