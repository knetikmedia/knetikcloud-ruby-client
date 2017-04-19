=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::AuthTokensApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthTokensApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::AuthTokensApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthTokensApi' do
    it 'should create an instact of AuthTokensApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::AuthTokensApi)
    end
  end

  # unit tests for delete_token
  # Delete a token by username and client id
  # 
  # @param username The username of the user
  # @param client_id The id of the client
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_tokens
  # Delete all tokens by username
  # 
  # @param username The username of the user
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_tokens test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_token
  # Get a single token by username and client id
  # 
  # @param username The username of the user
  # @param client_id The id of the client
  # @param [Hash] opts the optional parameters
  # @return [OauthAccessTokenResource]
  describe 'get_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tokens
  # List usernames and client ids
  # Token value not shown
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_client_id Filters for token whose client id matches provided string
  # @option opts [String] :filter_username Filters for token whose username matches provided string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceOauthAccessTokenResource]
  describe 'get_tokens test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
