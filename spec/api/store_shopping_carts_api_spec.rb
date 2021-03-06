=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::StoreShoppingCartsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StoreShoppingCartsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::StoreShoppingCartsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StoreShoppingCartsApi' do
    it 'should create an instance of StoreShoppingCartsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::StoreShoppingCartsApi)
    end
  end

  # unit tests for add_custom_discount
  # Adds a custom discount to the cart
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [CouponDefinition] :custom_discount The details of the discount to add
  # @return [nil]
  describe 'add_custom_discount test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_discount_to_cart
  # Adds a discount coupon to the cart
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [SkuRequest] :sku_request The request of the sku
  # @return [nil]
  describe 'add_discount_to_cart test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_item_to_cart
  # Add an item to the cart
  # Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [CartItemRequest] :cart_item_request The cart item request object
  # @return [nil]
  describe 'add_item_to_cart test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_cart
  # Create a cart
  # You don&#39;t have to have a user to create a cart but the API requires authentication to checkout. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :owner Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required
  # @option opts [String] :currency_code Set the currency for the cart, by currency code. May be disallowed by site settings.
  # @return [String]
  describe 'create_cart test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cart
  # Returns the cart with the given GUID
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @return [Cart]
  describe 'get_cart test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_carts
  # Get a list of carts
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :filter_owner_id Filter by the id of the owner
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceCartSummary]
  describe 'get_carts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_shippable
  # Returns whether a cart requires shipping
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @return [CartShippableResponse]
  describe 'get_shippable test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_shipping_countries
  # Get the list of available shipping countries per vendor
  # Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @return [SampleCountriesResponse]
  describe 'get_shipping_countries test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_discount_from_cart
  # Removes a discount coupon from the cart
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param id The id of the cart
  # @param code The SKU code of the coupon to remove
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_discount_from_cart test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_cart_currency
  # Sets the currency to use for the cart
  # May be disallowed by site settings. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [StringWrapper] :currency_code The code of the currency
  # @return [nil]
  describe 'set_cart_currency test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_cart_owner
  # Sets the owner of a cart if none is set already
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [IntWrapper] :user_id The id of the user
  # @return [nil]
  describe 'set_cart_owner test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_item_in_cart
  # Changes the quantity of an item already in the cart
  # A quantity of zero will remove the item from the cart altogether. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [CartItemRequest] :cart_item_request The cart item request object
  # @return [nil]
  describe 'update_item_in_cart test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_shipping_address
  # Modifies or sets the order shipping address
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; SHOPPING_CARTS_ADMIN or owner
  # @param id The id of the cart
  # @param [Hash] opts the optional parameters
  # @option opts [CartShippingAddressRequest] :cart_shipping_address_request The cart shipping address request object
  # @return [nil]
  describe 'update_shipping_address test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
