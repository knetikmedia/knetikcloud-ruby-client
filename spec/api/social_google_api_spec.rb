=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::SocialGoogleApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SocialGoogleApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::SocialGoogleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SocialGoogleApi' do
    it 'should create an instact of SocialGoogleApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::SocialGoogleApi)
    end
  end

  # unit tests for link_accounts1
  # Link facebook account
  # Links the current user account to a facebook account, using the acccess token from facebook. Can also be used to update the access token after it has expired.
  # @param [Hash] opts the optional parameters
  # @option opts [GoogleToken] :facebook_token The token from facebook
  # @return [nil]
  describe 'link_accounts1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end