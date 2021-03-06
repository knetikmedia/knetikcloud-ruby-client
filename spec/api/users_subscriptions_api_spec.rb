=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::UsersSubscriptionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersSubscriptionsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::UsersSubscriptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersSubscriptionsApi' do
    it 'should create an instance of UsersSubscriptionsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::UsersSubscriptionsApi)
    end
  end

  # unit tests for get_user_subscription_details
  # Get details about a user&#39;s subscription
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN or owner
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param [Hash] opts the optional parameters
  # @return [InventorySubscriptionResource]
  describe 'get_user_subscription_details test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_users_subscription_details
  # Get details about a user&#39;s subscriptions
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN or owner
  # @param user_id The id of the user
  # @param [Hash] opts the optional parameters
  # @return [Array<InventorySubscriptionResource>]
  describe 'get_users_subscription_details test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reactivate_user_subscription
  # Reactivate a subscription and charge fee
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param [Hash] opts the optional parameters
  # @option opts [ReactivateSubscriptionRequest] :reactivate_subscription_request The reactivate subscription request object inventory
  # @return [InvoiceResource]
  describe 'reactivate_user_subscription test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_subscription_bill_date
  # Set a new date to bill a subscription on
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param bill_date The new bill date. Unix timestamp in seconds
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set_subscription_bill_date test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_subscription_payment_method
  # Set the payment method to use for a subscription
  # May send null to use floating default. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN or owner
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param [Hash] opts the optional parameters
  # @option opts [IntWrapper] :payment_method_id The id of the payment method
  # @return [nil]
  describe 'set_subscription_payment_method test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_subscription_status
  # Set the status of a subscription
  # Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN or owner
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param status The new status for the subscription
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set_subscription_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_user_subscription_plan
  # Set a new subscription plan for a user
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param [Hash] opts the optional parameters
  # @option opts [StringWrapper] :plan_id The id of the new plan. Must be from the same subscription
  # @return [nil]
  describe 'set_user_subscription_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_user_subscription_price
  # Set a new subscription price for a user
  # This new price will be what the user is charged at the begining of each new period. This override is specific to the current subscription and will not carry over if they end and later re-subscribe. It will persist if the plan is changed using the setUserSubscriptionPlan endpoint. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_SUBSCRIPTIONS_ADMIN
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param [Hash] opts the optional parameters
  # @option opts [SubscriptionPriceOverrideRequest] :the_override_details override
  # @return [nil]
  describe 'set_user_subscription_price test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
