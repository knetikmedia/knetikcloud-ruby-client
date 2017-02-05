=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PaymentsStripeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentsStripeApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PaymentsStripeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsStripeApi' do
    it 'should create an instact of PaymentsStripeApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PaymentsStripeApi)
    end
  end

  # unit tests for create_customer_using_post
  # Create a Stripe payment method for a user
  # Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.
  # @param [Hash] opts the optional parameters
  # @option opts [StripeCreatePaymentMethod] :request The request to create a Stripe customer with payment info
  # @return [PaymentMethodResource]
  describe 'create_customer_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pay_invoice_using_post1
  # Pay with a single use token
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [StripePaymentRequest] :request The request to pay an invoice
  # @return [nil]
  describe 'pay_invoice_using_post1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
