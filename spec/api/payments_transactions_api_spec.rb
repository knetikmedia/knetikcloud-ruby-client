=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::PaymentsTransactionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentsTransactionsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::PaymentsTransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsTransactionsApi' do
    it 'should create an instact of PaymentsTransactionsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::PaymentsTransactionsApi)
    end
  end

  # unit tests for get_transaction
  # Get the details for a single transaction
  # 
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [TransactionResource]
  describe 'get_transaction test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_transactions
  # List and search transactions
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :filter_invoice Filter for transactions from a specific invoice
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTransactionResource]
  describe 'get_transactions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for refund_transaction
  # Refund a payment transaction, in full or in part
  # Will not allow for refunding more than the full amount even with multiple partial refunds. Money is refunded to the payment method used to make the original payment. Payment method must support refunds.
  # @param id The id of the transaction to refund
  # @param [Hash] opts the optional parameters
  # @option opts [RefundRequest] :request Request containing refund details
  # @return [RefundResource]
  describe 'refund_transaction test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
