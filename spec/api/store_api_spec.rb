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

# Unit tests for KnetikCloudClient::StoreApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StoreApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::StoreApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StoreApi' do
    it 'should create an instance of StoreApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::StoreApi)
    end
  end

  # unit tests for create_item_template
  # Create an item template
  # Item Templates define a type of item and the properties they have.
  # @param [Hash] opts the optional parameters
  # @option opts [StoreItemTemplateResource] :item_template_resource The new item template
  # @return [StoreItemTemplateResource]
  describe 'create_item_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_store_item
  # Create a store item
  # SKUs have to be unique in the entire store. If a duplicate SKU is found, a 400 error is generated and the response will have a \&quot;parameters\&quot; field that is a list of duplicates. A duplicate is an object like {item_id, offending_sku_list}. Ex:&lt;br /&gt; {..., parameters: [[{item: 1, skus: [\&quot;SKU-1\&quot;]}]]}&lt;br /&gt; If an item is brand new and has duplicate SKUs within itself, the item ID will be 0.  Item subclasses are not allowed here, you will have to use their respective endpoints.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  # @option opts [StoreItem] :store_item The store item object
  # @return [StoreItem]
  describe 'create_store_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_item_template
  # Delete an item template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
  # @return [nil]
  describe 'delete_item_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_store_item
  # Delete a store item
  # 
  # @param id The id of the item
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_store_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_behaviors
  # List available item behaviors
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<BehaviorDefinitionResource>]
  describe 'get_behaviors test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_item_template
  # Get a single item template
  # Item Templates define a type of item and the properties they have.
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [StoreItemTemplateResource]
  describe 'get_item_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_item_templates
  # List and search item templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceStoreItemTemplateResource]
  describe 'get_item_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_store_item
  # Get a single store item
  # 
  # @param id The id of the item
  # @param [Hash] opts the optional parameters
  # @return [StoreItem]
  describe 'get_store_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_store_items
  # List and search store items
  # If called without permission STORE_ADMIN the only items marked displayable, whose start and end date are null or appropriate to the current date, and whose geo policy allows the caller&#39;s country will be returned. Similarly skus will be filtered, possibly resulting in an item returned with no skus the user can purchase.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_name_search Filter for items whose name starts with a given string.
  # @option opts [String] :filter_unique_key Filter for items whose unique_key is a given string.
  # @option opts [BOOLEAN] :filter_published Filter for skus that have been published.
  # @option opts [BOOLEAN] :filter_displayable Filter for items that are displayable.
  # @option opts [String] :filter_start A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
  # @option opts [String] :filter_end A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
  # @option opts [String] :filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
  # @option opts [String] :filter_stop_date A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
  # @option opts [String] :filter_sku Filter for skus whose name starts with a given string.
  # @option opts [String] :filter_price A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ).
  # @option opts [String] :filter_tag A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags.
  # @option opts [String] :filter_items_by_type Filter for item type based on its type hint.
  # @option opts [String] :filter_bundled_skus Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is &#39;bundle_item&#39;
  # @option opts [Integer] :filter_vendor Filter for items from a given vendor, by id.
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceStoreItem]
  describe 'get_store_items test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for quick_buy
  # One-step purchase and pay for a single SKU item from a user&#39;s wallet
  # Used to create and automatically pay an invoice for a single unit of a single SKU from a user&#39;s wallet. SKU must be priced in virtual currency and must not be an item that requires shipping. PAYMENTS_ADMIN permission is required if user ID is specified and is not the ID of the currently logged in user. If invoice price does not match expected price, purchase is aborted
  # @param [Hash] opts the optional parameters
  # @option opts [QuickBuyRequest] :quick_buy_request Quick buy details
  # @return [InvoiceResource]
  describe 'quick_buy test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_item_template
  # Update an item template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [StoreItemTemplateResource] :item_template_resource The item template resource object
  # @return [StoreItemTemplateResource]
  describe 'update_item_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_store_item
  # Update a store item
  # 
  # @param id The id of the item
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  # @option opts [StoreItem] :store_item The store item object
  # @return [StoreItem]
  describe 'update_store_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
