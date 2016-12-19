=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PaymentsPayPalClassicApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentsPayPalClassicApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PaymentsPayPalClassicApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsPayPalClassicApi' do
    it 'should create an instact of PaymentsPayPalClassicApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PaymentsPayPalClassicApi)
    end
  end

  # unit tests for create_billing_agreement_url_using_post
  # Create a PayPal Classic billing agreement for the user
  # Returns the token that should be used to forward the user to PayPal so they can accept the agreement.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateBillingAgreementRequest] :request The request to create a PayPal billing agreement
  # @return [String]
  describe 'create_billing_agreement_url_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for express_checkout_using_post
  # Create a payment token for PayPal express checkout
  # Returns the token that should be used to forward the user to PayPal so they can complete the checkout.
  # @param [Hash] opts the optional parameters
  # @option opts [CreatePayPalPaymentRequest] :request The request to create a PayPal payment token
  # @return [String]
  describe 'express_checkout_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finalize_billing_agreement_using_post
  # Finalizes a billing agreement after the user has accepted through PayPal
  # Returns the ID of the new payment method created for the user for the billing agreement.
  # @param [Hash] opts the optional parameters
  # @option opts [FinalizeBillingAgreementRequest] :request The request to finalize a PayPal billing agreement
  # @return [Integer]
  describe 'finalize_billing_agreement_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finalize_checkout_using_post
  # Finalizes a payment after the user has completed checkout with PayPal
  # The invoice will be marked paid/failed by asynchronous IPN callback.
  # @param [Hash] opts the optional parameters
  # @option opts [FinalizePayPalPaymentRequest] :request The request to finalize the payment
  # @return [nil]
  describe 'finalize_checkout_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end