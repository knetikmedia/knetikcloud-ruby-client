=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PaymentsGoogleApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentsGoogleApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PaymentsGoogleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsGoogleApi' do
    it 'should create an instact of PaymentsGoogleApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PaymentsGoogleApi)
    end
  end

  # unit tests for handle_payment_using_post
  # Mark an invoice paid with Google
  # Mark an invoice paid with Google. Verifies signature from Google and treats the developerPayload field inside the json payload as the id of the invoice to pay. Returns the transaction ID if successful.
  # @param [Hash] opts the optional parameters
  # @option opts [GooglePaymentRequest] :request The request for paying an invoice through a Google in-app payment
  # @return [Integer]
  describe 'handle_payment_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
