=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::GamificationMetricsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GamificationMetricsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::GamificationMetricsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GamificationMetricsApi' do
    it 'should create an instance of GamificationMetricsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::GamificationMetricsApi)
    end
  end

  # unit tests for add_metric
  # Add a metric
  # Post a new score/stat for an activity occurrence without ending the occurrence itself
  # @param [Hash] opts the optional parameters
  # @option opts [MetricResource] :metric The new metric
  # @return [nil]
  describe 'add_metric test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
