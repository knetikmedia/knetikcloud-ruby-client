=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::GamificationLevelingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GamificationLevelingApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::GamificationLevelingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GamificationLevelingApi' do
    it 'should create an instact of GamificationLevelingApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::GamificationLevelingApi)
    end
  end

  # unit tests for create_level
  # Create a level schema
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [LevelingResource] :level The level schema definition
  # @return [LevelingResource]
  describe 'create_level test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_level
  # Delete a level
  # 
  # @param name The level schema name
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_level test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_level
  # Retrieve a level
  # 
  # @param name The level schema name
  # @param [Hash] opts the optional parameters
  # @return [LevelingResource]
  describe 'get_level test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_level_triggers
  # Get the list of triggers that can be used to trigger a leveling progress update
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<BreTriggerResource>]
  describe 'get_level_triggers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_levels
  # List and search levels
  # Get a list of levels schemas with optional filtering
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_name Filter for level schemas whose name contains a given string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceLevelingResource]
  describe 'get_levels test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_level
  # Get a user&#39;s progress for a given level schema
  # 
  # @param user_id The id of the user
  # @param name The level schema name
  # @param [Hash] opts the optional parameters
  # @return [UserLevelingResource]
  describe 'get_user_level test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_levels
  # Get a user&#39;s progress for all level schemas
  # 
  # @param user_id The id of the user
  # @param [Hash] opts the optional parameters
  # @return [PageResourceUserLevelingResource]
  describe 'get_user_levels test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for increment_progress
  # Update or create a leveling progress record for a user
  # If no progress record yet exists for the user, it will be created. Otherwise the provided value will be added to it. May be negative. If progress meets or exceeds the level&#39;s max_value it will be marked as earned and a BRE event will be triggered for the &lt;code&gt;BreAchievementEarnedTrigger&lt;/code&gt;.
  # @param user_id The id of the user
  # @param name The level schema name
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :progress The amount of progress to add
  # @return [nil]
  describe 'increment_progress test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_progress
  # Set leveling progress for a user
  # If no progress record yet exists for the user, it will be created. Otherwise it will be updated to the provided value. If progress meets or exceeds the level&#39;s max_value it will be marked as earned and a BRE event will be triggered for the &lt;code&gt;BreAchievementEarnedTrigger&lt;/code&gt;.
  # @param user_id The id of the user
  # @param name The level schema name
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :progress The new progress amount
  # @return [nil]
  describe 'set_progress test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_level
  # Update a level
  # 
  # @param name The level schema name
  # @param [Hash] opts the optional parameters
  # @option opts [LevelingResource] :new_level The level schema definition
  # @return [LevelingResource]
  describe 'update_level test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
