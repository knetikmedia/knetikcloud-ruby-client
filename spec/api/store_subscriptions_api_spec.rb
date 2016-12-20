=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::StoreSubscriptionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StoreSubscriptionsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::StoreSubscriptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StoreSubscriptionsApi' do
    it 'should create an instact of StoreSubscriptionsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::StoreSubscriptionsApi)
    end
  end

  # unit tests for create_subscription_template_using_post
  # Create a subscription template
  # Subscription Templates define a type of subscription and the properties they have.
  # @param [Hash] opts the optional parameters
  # @option opts [SubscriptionTemplateResource] :subscription_template_resource The new subscription template
  # @return [SubscriptionTemplateResource]
  describe 'create_subscription_template_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_subscription_using_post
  # Creates a subscription item and associated plans
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [SubscriptionResource] :subscription_resource The subscription to be created
  # @return [SubscriptionResource]
  describe 'create_subscription_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_plan_using_delete
  # Delete a subscription plan
  # Must not be locked or a migration target
  # @param id The id of the subscription
  # @param plan_id The id of the plan
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_plan_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_subscription_template_using_delete
  # Delete a subscription template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
  # @return [nil]
  describe 'delete_subscription_template_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_subscription_template_using_get
  # Get a single subscription template
  # Subscription Templates define a type of subscription and the properties they have.
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionTemplateResource]
  describe 'get_subscription_template_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_subscription_templates_using_get
  # List and search subscription templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageSubscriptionTemplateResource]
  describe 'get_subscription_templates_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_subscription_using_get
  # Retrieve a single subscription item and associated plans
  # 
  # @param id The id of the subscription
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionResource]
  describe 'get_subscription_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_subscriptions_using_get
  # List available subscription items and associated plans
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageSubscriptionResource]
  describe 'list_subscriptions_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for process_using_post
  # Processes subscriptions and charge dues
  # 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'process_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_subscription_template_using_put
  # Update a subscription template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [SubscriptionTemplateResource] :subscription_template_resource The subscription template resource object
  # @return [nil]
  describe 'update_subscription_template_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_subscription_using_put
  # Updates a subscription item and associated plans
  # Will not remove plans left out
  # @param id The id of the subscription
  # @param [Hash] opts the optional parameters
  # @option opts [SubscriptionResource] :subscription_resource The subscription resource object
  # @return [nil]
  describe 'update_subscription_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
