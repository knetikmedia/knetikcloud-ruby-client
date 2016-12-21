=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PaymentsWalletsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentsWalletsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PaymentsWalletsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsWalletsApi' do
    it 'should create an instact of PaymentsWalletsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PaymentsWalletsApi)
    end
  end

  # unit tests for get_wallet_totals_using_get
  # Retrieves a summation of wallet balances by currency code
  # 
  # @param [Hash] opts the optional parameters
  # @return [PageResourceWalletTotalResponse]
  describe 'get_wallet_totals_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_wallet_using_get
  # Returns the user&#39;s wallet for the given currency code
  # 
  # @param user_id The ID of the user for whom wallet is being retrieved
  # @param currency_code Currency code of the user&#39;s wallet
  # @param [Hash] opts the optional parameters
  # @return [SimpleWallet]
  describe 'get_wallet_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_wallets_using_get
  # List all of a user&#39;s wallets
  # 
  # @param user_id The ID of the user for whom wallets are being retrieved
  # @param [Hash] opts the optional parameters
  # @return [Array<SimpleWallet>]
  describe 'get_wallets_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_wallets_using_get1
  # Retrieve a list of wallets across the system
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceSimpleWallet]
  describe 'get_wallets_using_get1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for transaction_history_using_get
  # Retrieve wallet transactions across the system
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :filter_invoice Filter for transactions from a specific invoice
  # @option opts [String] :filter_type Filter for transactions with specified type
  # @option opts [Integer] :filter_max_date Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
  # @option opts [Integer] :filter_min_date Filter for transactions from no later than the specified date as a unix timestamp in seconds
  # @option opts [String] :filter_sign Filter for transactions with amount with the given sign
  # @option opts [Integer] :filter_user_id Filter for transactions for specific userId
  # @option opts [String] :filter_username Filter for transactions for specific username that start with the given string
  # @option opts [String] :filter_details Filter for transactions for specific details that start with the given string
  # @option opts [String] :filter_currency_code Filter for transactions for specific currency code
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceWalletTransactionResource]
  describe 'transaction_history_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_balance_using_put
  # Updates the balance for a user&#39;s wallet
  # 
  # @param user_id The ID of the user for whom wallet is being modified
  # @param currency_code Currency code of the user&#39;s wallet
  # @param [Hash] opts the optional parameters
  # @option opts [WalletAlterRequest] :request The requested balance modification to be made to the user&#39;s wallet
  # @return [WalletTransactionResource]
  describe 'update_balance_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_transaction_history_using_get
  # Retrieve a user&#39;s wallet transactions
  # 
  # @param user_id The ID of the user for whom wallet transactions are being retrieved
  # @param currency_code Currency code of the user&#39;s wallet
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_type Filter for transactions with specified type
  # @option opts [Integer] :filter_max_date Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
  # @option opts [Integer] :filter_min_date Filter for transactions from no later than the specified date as a unix timestamp in seconds
  # @option opts [String] :filter_sign Filter for transactions with amount with the given sign.  Allowable values: (&#39;positive&#39;, &#39;negative&#39;)
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceWalletTransactionResource]
  describe 'user_transaction_history_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
