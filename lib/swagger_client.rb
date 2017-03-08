=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/achievement_definition_resource'
require 'swagger_client/models/achievement_progress_update_request'
require 'swagger_client/models/action_resource'
require 'swagger_client/models/action_variable_resource'
require 'swagger_client/models/activity_entitlement_resource'
require 'swagger_client/models/activity_occurrence_creation_failure'
require 'swagger_client/models/activity_occurrence_join_result'
require 'swagger_client/models/activity_occurrence_resource'
require 'swagger_client/models/activity_occurrence_results'
require 'swagger_client/models/activity_resource'
require 'swagger_client/models/activity_user_resource'
require 'swagger_client/models/address_resource'
require 'swagger_client/models/affiliate'
require 'swagger_client/models/aggregate_count_resource'
require 'swagger_client/models/aggregate_invoice_report_resource'
require 'swagger_client/models/amazon_s3_activity'
require 'swagger_client/models/answer_resource'
require 'swagger_client/models/apply_payment_request'
require 'swagger_client/models/article_resource'
require 'swagger_client/models/artist'
require 'swagger_client/models/artist_resource'
require 'swagger_client/models/available_setting_resource'
require 'swagger_client/models/bare_activity_resource'
require 'swagger_client/models/bare_challenge_activity_resource'
require 'swagger_client/models/batch'
require 'swagger_client/models/batch_request'
require 'swagger_client/models/batch_return'
require 'swagger_client/models/behavior'
require 'swagger_client/models/billing_report'
require 'swagger_client/models/boolean_resource'
require 'swagger_client/models/bre_category_resource'
require 'swagger_client/models/bre_event'
require 'swagger_client/models/bre_event_log'
require 'swagger_client/models/bre_global_resource'
require 'swagger_client/models/bre_global_scope_definition'
require 'swagger_client/models/bre_rule'
require 'swagger_client/models/bre_rule_log'
require 'swagger_client/models/bre_trigger_parameter_definition'
require 'swagger_client/models/bre_trigger_resource'
require 'swagger_client/models/bundle_item'
require 'swagger_client/models/bundled_sku'
require 'swagger_client/models/campaign_resource'
require 'swagger_client/models/cart'
require 'swagger_client/models/cart_item_request'
require 'swagger_client/models/cart_line_item'
require 'swagger_client/models/cart_shippable_response'
require 'swagger_client/models/cart_shipping_address_request'
require 'swagger_client/models/cart_shipping_option'
require 'swagger_client/models/cart_summary'
require 'swagger_client/models/catalog_sale'
require 'swagger_client/models/category_resource'
require 'swagger_client/models/challenge_activity_resource'
require 'swagger_client/models/challenge_event_participant_resource'
require 'swagger_client/models/challenge_event_resource'
require 'swagger_client/models/challenge_resource'
require 'swagger_client/models/client_resource'
require 'swagger_client/models/collection_country'
require 'swagger_client/models/collection_video_contribution'
require 'swagger_client/models/collectionstring'
require 'swagger_client/models/comment_resource'
require 'swagger_client/models/comment_search'
require 'swagger_client/models/config'
require 'swagger_client/models/contribution_resource'
require 'swagger_client/models/country'
require 'swagger_client/models/country_resource'
require 'swagger_client/models/country_tax_resource'
require 'swagger_client/models/coupon_definition'
require 'swagger_client/models/coupon_item'
require 'swagger_client/models/create_billing_agreement_request'
require 'swagger_client/models/create_pay_pal_payment_request'
require 'swagger_client/models/currency'
require 'swagger_client/models/currency_resource'
require 'swagger_client/models/delta_resource'
require 'swagger_client/models/device_resource'
require 'swagger_client/models/discount'
require 'swagger_client/models/disposition_count'
require 'swagger_client/models/disposition_resource'
require 'swagger_client/models/entitlement_grant_request'
require 'swagger_client/models/entitlement_item'
require 'swagger_client/models/error_resource'
require 'swagger_client/models/expressionobject'
require 'swagger_client/models/finalize_billing_agreement_request'
require 'swagger_client/models/finalize_pay_pal_payment_request'
require 'swagger_client/models/flag_report_resource'
require 'swagger_client/models/flag_resource'
require 'swagger_client/models/forward_log'
require 'swagger_client/models/fulfillment_type'
require 'swagger_client/models/google_payment_request'
require 'swagger_client/models/grant_type_resource'
require 'swagger_client/models/group'
require 'swagger_client/models/group_member'
require 'swagger_client/models/group_member_resource'
require 'swagger_client/models/group_resource'
require 'swagger_client/models/import_job_output_resource'
require 'swagger_client/models/import_job_resource'
require 'swagger_client/models/inventory_subscription_resource'
require 'swagger_client/models/invoice_create_request'
require 'swagger_client/models/invoice_item_resource'
require 'swagger_client/models/invoice_log_entry'
require 'swagger_client/models/invoice_payment_status_request'
require 'swagger_client/models/invoice_resource'
require 'swagger_client/models/item_behavior_definition_resource'
require 'swagger_client/models/item_template_resource'
require 'swagger_client/models/key_value_pairstringstring'
require 'swagger_client/models/language'
require 'swagger_client/models/leaderboard_entry_resource'
require 'swagger_client/models/leaderboard_resource'
require 'swagger_client/models/leveling_resource'
require 'swagger_client/models/localizer'
require 'swagger_client/models/location_log_resource'
require 'swagger_client/models/lookup_type_resource'
require 'swagger_client/models/maintenance'
require 'swagger_client/models/mapstringobject'
require 'swagger_client/models/metric_resource'
require 'swagger_client/models/nested_category'
require 'swagger_client/models/new_password_request'
require 'swagger_client/models/o_auth2_resource'
require 'swagger_client/models/oauth_access_token_resource'
require 'swagger_client/models/operator'
require 'swagger_client/models/optimal_payment_request'
require 'swagger_client/models/order'
require 'swagger_client/models/page_resource_achievement_definition_resource'
require 'swagger_client/models/page_resource_aggregate_count_resource'
require 'swagger_client/models/page_resource_aggregate_invoice_report_resource'
require 'swagger_client/models/page_resource_article_resource'
require 'swagger_client/models/page_resource_artist_resource'
require 'swagger_client/models/page_resource_bare_activity_resource'
require 'swagger_client/models/page_resource_bare_challenge_activity_resource'
require 'swagger_client/models/page_resource_billing_report'
require 'swagger_client/models/page_resource_bre_category_resource'
require 'swagger_client/models/page_resource_bre_event_log'
require 'swagger_client/models/page_resource_bre_global_resource'
require 'swagger_client/models/page_resource_bre_rule'
require 'swagger_client/models/page_resource_bre_trigger_resource'
require 'swagger_client/models/page_resource_campaign_resource'
require 'swagger_client/models/page_resource_cart_summary'
require 'swagger_client/models/page_resource_catalog_sale'
require 'swagger_client/models/page_resource_category_resource'
require 'swagger_client/models/page_resource_challenge_event_participant_resource'
require 'swagger_client/models/page_resource_challenge_event_resource'
require 'swagger_client/models/page_resource_challenge_resource'
require 'swagger_client/models/page_resource_client_resource'
require 'swagger_client/models/page_resource_comment_resource'
require 'swagger_client/models/page_resource_config'
require 'swagger_client/models/page_resource_country_tax_resource'
require 'swagger_client/models/page_resource_currency_resource'
require 'swagger_client/models/page_resource_device_resource'
require 'swagger_client/models/page_resource_disposition_resource'
require 'swagger_client/models/page_resource_entitlement_item'
require 'swagger_client/models/page_resource_flag_report_resource'
require 'swagger_client/models/page_resource_forward_log'
require 'swagger_client/models/page_resource_fulfillment_type'
require 'swagger_client/models/page_resource_group_member_resource'
require 'swagger_client/models/page_resource_group_resource'
require 'swagger_client/models/page_resource_import_job_resource'
require 'swagger_client/models/page_resource_invoice_log_entry'
require 'swagger_client/models/page_resource_invoice_resource'
require 'swagger_client/models/page_resource_item_template_resource'
require 'swagger_client/models/page_resource_leveling_resource'
require 'swagger_client/models/page_resource_location_log_resource'
require 'swagger_client/models/page_resource_mapstringobject'
require 'swagger_client/models/page_resource_oauth_access_token_resource'
require 'swagger_client/models/page_resource_permission_resource'
require 'swagger_client/models/page_resource_poll_resource'
require 'swagger_client/models/page_resource_question_resource'
require 'swagger_client/models/page_resource_question_template_resource'
require 'swagger_client/models/page_resource_revenue_country_report_resource'
require 'swagger_client/models/page_resource_revenue_product_report_resource'
require 'swagger_client/models/page_resource_reward_set_resource'
require 'swagger_client/models/page_resource_role_resource'
require 'swagger_client/models/page_resource_saved_address_resource'
require 'swagger_client/models/page_resource_simple_user_resource'
require 'swagger_client/models/page_resource_simple_wallet'
require 'swagger_client/models/page_resource_state_tax_resource'
require 'swagger_client/models/page_resource_store_item'
require 'swagger_client/models/page_resource_store_item_template_resource'
require 'swagger_client/models/page_resource_subscription_resource'
require 'swagger_client/models/page_resource_subscription_template_resource'
require 'swagger_client/models/page_resource_template_resource'
require 'swagger_client/models/page_resource_transaction_resource'
require 'swagger_client/models/page_resource_usage_info'
require 'swagger_client/models/page_resource_user_achievement_group_resource'
require 'swagger_client/models/page_resource_user_action_log'
require 'swagger_client/models/page_resource_user_base_resource'
require 'swagger_client/models/page_resource_user_inventory_resource'
require 'swagger_client/models/page_resource_user_item_log_resource'
require 'swagger_client/models/page_resource_user_leveling_resource'
require 'swagger_client/models/page_resource_user_relationship_resource'
require 'swagger_client/models/page_resource_vendor_resource'
require 'swagger_client/models/page_resource_video_relationship_resource'
require 'swagger_client/models/page_resource_video_resource'
require 'swagger_client/models/page_resource_wallet_total_response'
require 'swagger_client/models/page_resource_wallet_transaction_resource'
require 'swagger_client/models/page_resourcestring'
require 'swagger_client/models/pay_by_saved_method_request'
require 'swagger_client/models/payment_authorization_resource'
require 'swagger_client/models/payment_method_resource'
require 'swagger_client/models/payment_method_type_resource'
require 'swagger_client/models/permission'
require 'swagger_client/models/permission_resource'
require 'swagger_client/models/poll_answer_resource'
require 'swagger_client/models/poll_resource'
require 'swagger_client/models/poll_response_resource'
require 'swagger_client/models/predicate_operation'
require 'swagger_client/models/property'
require 'swagger_client/models/property_definition_resource'
require 'swagger_client/models/question_resource'
require 'swagger_client/models/question_template_resource'
require 'swagger_client/models/raw_email_resource'
require 'swagger_client/models/raw_sms_resource'
require 'swagger_client/models/reactivate_subscription_request'
require 'swagger_client/models/refund_request'
require 'swagger_client/models/refund_resource'
require 'swagger_client/models/result'
require 'swagger_client/models/revenue_country_report_resource'
require 'swagger_client/models/revenue_product_report_resource'
require 'swagger_client/models/revenue_report_resource'
require 'swagger_client/models/reward_currency_resource'
require 'swagger_client/models/reward_item_resource'
require 'swagger_client/models/reward_set_resource'
require 'swagger_client/models/role'
require 'swagger_client/models/role_resource'
require 'swagger_client/models/sample_countries_response'
require 'swagger_client/models/saved_address_resource'
require 'swagger_client/models/schedule'
require 'swagger_client/models/search_reference_mapping'
require 'swagger_client/models/selected_setting_resource'
require 'swagger_client/models/setting_option'
require 'swagger_client/models/shipping_item'
require 'swagger_client/models/simple_reference_resourceint'
require 'swagger_client/models/simple_reference_resourcelong'
require 'swagger_client/models/simple_reference_resourcestring'
require 'swagger_client/models/simple_user_resource'
require 'swagger_client/models/simple_wallet'
require 'swagger_client/models/sku'
require 'swagger_client/models/sku_request'
require 'swagger_client/models/state_resource'
require 'swagger_client/models/state_tax_resource'
require 'swagger_client/models/store_item'
require 'swagger_client/models/store_item_template_resource'
require 'swagger_client/models/stripe_create_payment_method'
require 'swagger_client/models/stripe_payment_request'
require 'swagger_client/models/subscription_credit_resource'
require 'swagger_client/models/subscription_plan_resource'
require 'swagger_client/models/subscription_resource'
require 'swagger_client/models/subscription_template_resource'
require 'swagger_client/models/template_email_resource'
require 'swagger_client/models/template_resource'
require 'swagger_client/models/template_sms_resource'
require 'swagger_client/models/tier_resource'
require 'swagger_client/models/timezone'
require 'swagger_client/models/token_details_resource'
require 'swagger_client/models/transaction_resource'
require 'swagger_client/models/usage_info'
require 'swagger_client/models/user'
require 'swagger_client/models/user_achievement_group_resource'
require 'swagger_client/models/user_achievement_resource'
require 'swagger_client/models/user_action_log'
require 'swagger_client/models/user_activity_results_resource'
require 'swagger_client/models/user_base_resource'
require 'swagger_client/models/user_inventory_add_request'
require 'swagger_client/models/user_inventory_resource'
require 'swagger_client/models/user_item_log_resource'
require 'swagger_client/models/user_leveling_resource'
require 'swagger_client/models/user_relationship'
require 'swagger_client/models/user_relationship_reference_resource'
require 'swagger_client/models/user_relationship_resource'
require 'swagger_client/models/user_resource'
require 'swagger_client/models/user_tag'
require 'swagger_client/models/variable_type_resource'
require 'swagger_client/models/vendor_resource'
require 'swagger_client/models/version'
require 'swagger_client/models/video'
require 'swagger_client/models/video_contribution'
require 'swagger_client/models/video_relationship_resource'
require 'swagger_client/models/video_resource'
require 'swagger_client/models/video_tag'
require 'swagger_client/models/wallet_alter_request'
require 'swagger_client/models/wallet_total_response'
require 'swagger_client/models/wallet_transaction_resource'
require 'swagger_client/models/xsolla_payment_request'

# APIs
require 'swagger_client/api/access_token_api'
require 'swagger_client/api/activities_api'
require 'swagger_client/api/amazon_web_services_s3_api'
require 'swagger_client/api/auth_clients_api'
require 'swagger_client/api/auth_permissions_api'
require 'swagger_client/api/auth_roles_api'
require 'swagger_client/api/auth_tokens_api'
require 'swagger_client/api/bre_rule_engine_actions_api'
require 'swagger_client/api/bre_rule_engine_categories_api'
require 'swagger_client/api/bre_rule_engine_events_api'
require 'swagger_client/api/bre_rule_engine_expressions_api'
require 'swagger_client/api/bre_rule_engine_globals_api'
require 'swagger_client/api/bre_rule_engine_rules_api'
require 'swagger_client/api/bre_rule_engine_triggers_api'
require 'swagger_client/api/bre_rule_engine_variables_api'
require 'swagger_client/api/campaigns_api'
require 'swagger_client/api/campaigns_challenges_api'
require 'swagger_client/api/campaigns_rewards_api'
require 'swagger_client/api/categories_api'
require 'swagger_client/api/configs_api'
require 'swagger_client/api/content_articles_api'
require 'swagger_client/api/content_comments_api'
require 'swagger_client/api/content_polls_api'
require 'swagger_client/api/currencies_api'
require 'swagger_client/api/devices_api'
require 'swagger_client/api/dispositions_api'
require 'swagger_client/api/fulfillment_api'
require 'swagger_client/api/gamification_achievements_api'
require 'swagger_client/api/gamification_leaderboards_api'
require 'swagger_client/api/gamification_leveling_api'
require 'swagger_client/api/gamification_metrics_api'
require 'swagger_client/api/gamification_trivia_api'
require 'swagger_client/api/invoices_api'
require 'swagger_client/api/locations_api'
require 'swagger_client/api/logs_api'
require 'swagger_client/api/media_artists_api'
require 'swagger_client/api/media_moderation_api'
require 'swagger_client/api/media_videos_api'
require 'swagger_client/api/messaging_api'
require 'swagger_client/api/payments_api'
require 'swagger_client/api/payments_apple_api'
require 'swagger_client/api/payments_google_api'
require 'swagger_client/api/payments_optimal_api'
require 'swagger_client/api/payments_pay_pal_classic_api'
require 'swagger_client/api/payments_stripe_api'
require 'swagger_client/api/payments_transactions_api'
require 'swagger_client/api/payments_wallets_api'
require 'swagger_client/api/payments_xsolla_api'
require 'swagger_client/api/reporting_challenges_api'
require 'swagger_client/api/reporting_orders_api'
require 'swagger_client/api/reporting_revenue_api'
require 'swagger_client/api/reporting_subscriptions_api'
require 'swagger_client/api/reporting_usage_api'
require 'swagger_client/api/reporting_users_api'
require 'swagger_client/api/search_api'
require 'swagger_client/api/store_api'
require 'swagger_client/api/store_bundles_api'
require 'swagger_client/api/store_coupons_api'
require 'swagger_client/api/store_sales_api'
require 'swagger_client/api/store_shipping_api'
require 'swagger_client/api/store_shopping_carts_api'
require 'swagger_client/api/store_subscriptions_api'
require 'swagger_client/api/store_vendors_api'
require 'swagger_client/api/taxes_api'
require 'swagger_client/api/users_api'
require 'swagger_client/api/users_addresses_api'
require 'swagger_client/api/users_friendships_api'
require 'swagger_client/api/users_groups_api'
require 'swagger_client/api/users_inventory_api'
require 'swagger_client/api/users_relationships_api'
require 'swagger_client/api/users_subscriptions_api'
require 'swagger_client/api/util_batch_api'
require 'swagger_client/api/util_health_api'
require 'swagger_client/api/util_maintenance_api'
require 'swagger_client/api/util_security_api'
require 'swagger_client/api/util_version_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
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
