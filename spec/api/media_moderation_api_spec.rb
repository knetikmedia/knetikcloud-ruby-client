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

# Unit tests for KnetikCloudClient::MediaModerationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MediaModerationApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::MediaModerationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MediaModerationApi' do
    it 'should create an instance of MediaModerationApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::MediaModerationApi)
    end
  end

  # unit tests for add_flag
  # Add a flag
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param [Hash] opts the optional parameters
  # @option opts [FlagResource] :flag_resource The flag resource object
  # @return [FlagResource]
  describe 'add_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_flag
  # Delete a flag
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MODERATION_ADMIN or owner
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context_name The name of the context
  # @option opts [String] :context_id The id of the context
  # @option opts [Integer] :user_id The id of the user
  # @return [nil]
  describe 'delete_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_flags
  # Returns a page of flags
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MODERATION_ADMIN or owner
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_context Filter by flag context
  # @option opts [String] :filter_context_id Filter by flag context ID
  # @option opts [Integer] :filter_user_id Filter by user ID
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceFlagResource]
  describe 'get_flags test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_moderation_report
  # Get a flag report
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MODERATION_ADMIN
  # @param id The flag report id
  # @param [Hash] opts the optional parameters
  # @return [FlagReportResource]
  describe 'get_moderation_report test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_moderation_reports
  # Returns a page of flag reports
  # Context can be either a free-form string or a pre-defined context name. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MODERATION_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :exclude_resolved Ignore resolved context
  # @option opts [String] :filter_context Filter by moderation context
  # @option opts [String] :filter_context_id Filter by moderation context ID
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceFlagReportResource]
  describe 'get_moderation_reports test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_moderation_report
  # Update a flag report
  # Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of &#39;banned&#39; you will need to pass the reason. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MODERATION_ADMIN
  # @param id The flag report id
  # @param [Hash] opts the optional parameters
  # @option opts [FlagReportResource] :flag_report_resource The new flag report
  # @return [nil]
  describe 'update_moderation_report test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
