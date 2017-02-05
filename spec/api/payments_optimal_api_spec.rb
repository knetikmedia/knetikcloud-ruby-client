=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PaymentsOptimalApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentsOptimalApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PaymentsOptimalApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsOptimalApi' do
    it 'should create an instact of PaymentsOptimalApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PaymentsOptimalApi)
    end
  end

  # unit tests for silent_post_using_post
  # Initiate silent post with Optimal
  # Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details.
  # @param [Hash] opts the optional parameters
  # @option opts [OptimalPaymentRequest] :request The payment request to initiate
  # @return [String]
  describe 'silent_post_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
