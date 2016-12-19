=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::StoreShoppingCartsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StoreShoppingCartsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::StoreShoppingCartsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StoreShoppingCartsApi' do
    it 'should create an instact of StoreShoppingCartsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::StoreShoppingCartsApi)
    end
  end

  # unit tests for add_discount_using_post
  # Adds a coupon to the cart
  # 
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [SkuRequest] :sku_request The request of the sku
  # @return [nil]
  describe 'add_discount_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_item_using_post
  # Add an item to the cart
  # Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [CartItemRequest] :cart_item_request The cart item request object
  # @return [nil]
  describe 'add_item_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for assign_cart_using_put
  # Sets the owner of a cart if none is set already
  # 
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :user_id The id of the user
  # @return [nil]
  describe 'assign_cart_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check_shippable_using_get
  # Returns whether a cart requires shipping
  # 
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @return [CartShippableResponse]
  describe 'check_shippable_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_cart_using_post
  # Creates a new cart from scratch
  # You don&#39;t have to have a user to create a cart but the API requires authentication to checkout
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :owner Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required
  # @option opts [String] :currency_code Set the currency for the cart, by currency code. May be disallowed by site settings.
  # @return [String]
  describe 'create_cart_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cart_using_get
  # Returns the cart with the given GUID
  # 
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @return [Cart]
  describe 'get_cart_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_countries_using_get
  # Get the list of available shipping countries per vendor
  # Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @return [SampleCountriesResponse]
  describe 'get_countries_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_shipping_address_using_put
  # Modifies or sets the order shipping address
  # 
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [CartShippingAddressRequest] :cart_shipping_address_request The cart shipping address request object
  # @return [nil]
  describe 'modify_shipping_address_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_discount_using_delete
  # Removes a coupon from the cart
  # 
  # @param id The id of the cart
  # @param code The SKU code of the coupon to remove
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_discount_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_carts_using_get
  # Get a list of carts
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :filter_owner_id Filter by the id of the owner
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageCartSummary]
  describe 'search_carts_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_cart_currency_using_put
  # Sets the currency to use for the cart
  # May be disallowed by site settings.
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [String] :currency_code The code of the currency
  # @return [nil]
  describe 'set_cart_currency_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_item_using_put
  # Changes the quantity of an item already in the cart
  # A quantity of zero will remove the item from the cart altogether.
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [CartItemRequest] :cart_item_request The cart item request object
  # @return [nil]
  describe 'update_item_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
