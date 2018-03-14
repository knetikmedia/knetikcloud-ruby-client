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

# Unit tests for KnetikCloudClient::RuleEngineRulesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RuleEngineRulesApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::RuleEngineRulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RuleEngineRulesApi' do
    it 'should create an instance of RuleEngineRulesApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::RuleEngineRulesApi)
    end
  end

  # unit tests for create_bre_rule
  # Create a rule
  # Rules define which actions to run when a given event verifies the specified condition. Full list of predicates and other type of expressions can be found at GET /bre/expressions/. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_RULES_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [BreRule] :bre_rule The BRE rule object
  # @return [BreRule]
  describe 'create_bre_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_bre_rule
  # Delete a rule
  # May fail if there are existing rules against it. Cannot delete core rules. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_RULES_ADMIN
  # @param id The id of the rule
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_bre_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bre_expression_as_string
  # Returns a string representation of the provided expression
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_RULES_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [Expressionobject] :expression The expression
  # @return [String]
  describe 'get_bre_expression_as_string test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bre_rule
  # Get a single rule
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_RULES_ADMIN
  # @param id The id of the rule
  # @param [Hash] opts the optional parameters
  # @return [BreRule]
  describe 'get_bre_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bre_rules
  # List rules
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_RULES_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_name Filter for rules containing the given name
  # @option opts [BOOLEAN] :filter_enabled Filter for rules by active status, null for both
  # @option opts [BOOLEAN] :filter_system Filter for rules that are system rules when true, or not when false. Leave off for both mixed
  # @option opts [String] :filter_trigger Filter for rules that are for the trigger with the given name
  # @option opts [String] :filter_action Filter for rules that use the action with the given name
  # @option opts [String] :filter_condition Filter for rules that have a condition containing the given string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceBreRule]
  describe 'get_bre_rules test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_bre_rule
  # Enable or disable a rule
  # This is helpful for turning off systems rules which cannot be deleted or modified otherwise. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_RULES_ADMIN
  # @param id The id of the rule
  # @param [Hash] opts the optional parameters
  # @option opts [BooleanResource] :enabled The boolean value
  # @return [nil]
  describe 'set_bre_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_bre_rule
  # Update a rule
  # Cannot update system rules. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_RULES_ADMIN
  # @param id The id of the rule
  # @param [Hash] opts the optional parameters
  # @option opts [BreRule] :bre_rule The BRE rule object
  # @return [BreRule]
  describe 'update_bre_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end