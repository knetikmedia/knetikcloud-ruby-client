=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PaymentsXsollaApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentsXsollaApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PaymentsXsollaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsXsollaApi' do
    it 'should create an instact of PaymentsXsollaApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PaymentsXsollaApi)
    end
  end

  # unit tests for create_xsolla_token_url
  # Create a payment token that should be used to forward the user to Xsolla so they can complete payment
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [XsollaPaymentRequest] :request The payment request to be sent to XSolla
  # @return [String]
  describe 'create_xsolla_token_url test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for receive_xsolla_notification
  # Receives payment response from Xsolla
  # Only used by Xsolla to call back to JSAPI after processing user payment action
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'receive_xsolla_notification test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
