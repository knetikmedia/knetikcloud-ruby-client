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

# Unit tests for KnetikCloudClient::UsersFriendshipsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersFriendshipsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::UsersFriendshipsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersFriendshipsApi' do
    it 'should create an instance of UsersFriendshipsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::UsersFriendshipsApi)
    end
  end

  # unit tests for add_friend
  # Add a friend
  # As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship.
  # @param user_id The id of the user or &#39;me&#39; if logged in
  # @param id The id of the user to befriend
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_friend test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_friends
  # Get friends list
  # 
  # @param user_id The id of the user or &#39;me&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceSimpleUserResource]
  describe 'get_friends test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_invite_token
  # Returns the invite token
  # This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required
  # @param user_id The id of the user or &#39;me&#39; if logged in
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_invite_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_invites
  # Get pending invites
  # Invites that the specified user received
  # @param user_id The id of the user or &#39;me&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceSimpleUserResource]
  describe 'get_invites test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for redeem_friendship_token
  # Redeem friendship token
  # Immediately connects the requested user with the user mapped by the provided invite token
  # @param user_id The id of the user or &#39;me&#39; if logged in
  # @param [Hash] opts the optional parameters
  # @option opts [StringWrapper] :token The invite token
  # @return [nil]
  describe 'redeem_friendship_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_or_decline_friend
  # Remove or decline a friend
  # 
  # @param user_id The id of the user or &#39;me&#39; if logged in
  # @param id The id of the user to befriend
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_or_decline_friend test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
