=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::GamificationMetricsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GamificationMetricsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::GamificationMetricsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GamificationMetricsApi' do
    it 'should create an instact of GamificationMetricsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::GamificationMetricsApi)
    end
  end

  # unit tests for add_metric_using_post
  # Add a metric
  # Post a new score/stat for an activity occurrence without ending the occurrence itself
  # @param [Hash] opts the optional parameters
  # @option opts [MetricResource] :metric The new metric
  # @return [nil]
  describe 'add_metric_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
