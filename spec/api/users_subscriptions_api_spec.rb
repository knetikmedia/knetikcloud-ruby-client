=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::UsersSubscriptionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersSubscriptionsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::UsersSubscriptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersSubscriptionsApi' do
    it 'should create an instact of UsersSubscriptionsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::UsersSubscriptionsApi)
    end
  end

  # unit tests for get_subscription_details_using_get
  # Get details about a user&#39;s subscription
  # 
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param [Hash] opts the optional parameters
  # @return [InventorySubscriptionResource]
  describe 'get_subscription_details_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_subscription_details_using_get1
  # Get details about a user&#39;s subscriptions
  # 
  # @param user_id The id of the user
  # @param [Hash] opts the optional parameters
  # @return [Array<InventorySubscriptionResource>]
  describe 'get_subscription_details_using_get1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reactivate_using_post
  # Reactivate a subscription and charge fee
  # 
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param [Hash] opts the optional parameters
  # @option opts [ReactivateSubscriptionRequest] :reactivate_subscription_request The reactivate subscription request object inventory
  # @return [InvoiceResource]
  describe 'reactivate_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_bill_date_using_put
  # Set a new date to bill a subscription on
  # 
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param bill_date The new bill date. Unix timestamp in seconds
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set_bill_date_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_payment_method_using_put
  # Set the payment method to use for a subscription
  # May send null to use floating default
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :payment_method_id The id of the payment method
  # @return [nil]
  describe 'set_payment_method_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_status_using_put
  # Set the status of a subscription
  # The body is a json string (put in quotes) that should match a desired invoice status type. Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param status The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: (&#39;current&#39;, &#39;canceled&#39;, &#39;stopped&#39;, &#39;payment_failed&#39;, &#39;suspended&#39;)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set_status_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_user_plan_using_put
  # Set a new subscription plan for a user
  # 
  # @param user_id The id of the user
  # @param inventory_id The id of the user&#39;s inventory
  # @param [Hash] opts the optional parameters
  # @option opts [String] :plan_id The id of the new plan. Must be from the same subscription
  # @return [nil]
  describe 'set_user_plan_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
