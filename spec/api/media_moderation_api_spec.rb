=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::MediaModerationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MediaModerationApi' do
  before do
    # run before each test
    @instance = SwaggerClient::MediaModerationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MediaModerationApi' do
    it 'should create an instact of MediaModerationApi' do
      expect(@instance).to be_instance_of(SwaggerClient::MediaModerationApi)
    end
  end

  # unit tests for get_flag_report_using_get
  # Get a flag report
  # 
  # @param id The flag report id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_flag_report_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_flags_report_using_get
  # Returns a page of flag reports
  # Context can be either a free-form string or a pre-defined context name
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :exclude_resolved Ignore resolved context
  # @option opts [String] :filter_context Filter by moderation context
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageFlagReportResource]
  describe 'get_flags_report_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_flag_resolution_using_put
  # Update a flag report
  # Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of &#39;banned&#39; you will need to pass the reason.
  # @param id The flag report id
  # @param [Hash] opts the optional parameters
  # @option opts [FlagReportResource] :flag_report_resource The new flag report
  # @return [nil]
  describe 'set_flag_resolution_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end