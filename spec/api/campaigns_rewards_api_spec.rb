=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::CampaignsRewardsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CampaignsRewardsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::CampaignsRewardsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CampaignsRewardsApi' do
    it 'should create an instact of CampaignsRewardsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::CampaignsRewardsApi)
    end
  end

  # unit tests for create_reward_set
  # Create a reward set
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [RewardSetResource] :reward_set_resource The reward set resource object
  # @return [RewardSetResource]
  describe 'create_reward_set test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_reward_set
  # Delete a reward set
  # 
  # @param id The reward id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_reward_set test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_reward_set
  # Get a single reward set
  # 
  # @param id The reward id
  # @param [Hash] opts the optional parameters
  # @return [RewardSetResource]
  describe 'get_reward_set test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_reward_sets
  # List and search reward sets
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceRewardSetResource]
  describe 'get_reward_sets test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_reward_set
  # Update a reward set
  # 
  # @param id The reward id
  # @param [Hash] opts the optional parameters
  # @option opts [RewardSetResource] :reward_set_resource The reward set resource object
  # @return [RewardSetResource]
  describe 'update_reward_set test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
