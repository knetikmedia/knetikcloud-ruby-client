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

# Unit tests for KnetikCloudClient::AccessTokenApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccessTokenApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::AccessTokenApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccessTokenApi' do
    it 'should create an instance of AccessTokenApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::AccessTokenApi)
    end
  end

  # unit tests for get_o_auth_token
  # Get access token
  # 
  # @param grant_type Grant type
  # @param client_id The id of the client
  # @param [Hash] opts the optional parameters
  # @option opts [String] :client_secret The secret key of the client.  Used only with a grant_type of client_credentials
  # @option opts [String] :username The username of the client.  Used only with a grant_type of password
  # @option opts [String] :password The password of the client.  Used only with a grant_type of password
  # @return [OAuth2Resource]
  describe 'get_o_auth_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
