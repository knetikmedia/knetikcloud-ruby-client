=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::ReportingChallengesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportingChallengesApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::ReportingChallengesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportingChallengesApi' do
    it 'should create an instact of ReportingChallengesApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::ReportingChallengesApi)
    end
  end

  # unit tests for get_challenge_event_leaderboard
  # Retrieve a challenge event leaderboard details
  # Lists all leaderboard entries with additional user details
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :filter_event A sepecific challenge event id
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceChallengeEventParticipantResource]
  describe 'get_challenge_event_leaderboard test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenge_event_participants
  # Retrieve a challenge event participant details
  # Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :filter_event A sepecific challenge event id
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceChallengeEventParticipantResource]
  describe 'get_challenge_event_participants test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
