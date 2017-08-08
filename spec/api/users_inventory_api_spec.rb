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

# Unit tests for KnetikCloudClient::UsersInventoryApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersInventoryApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::UsersInventoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersInventoryApi' do
    it 'should create an instance of UsersInventoryApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::UsersInventoryApi)
    end
  end

  # unit tests for add_item_to_user_inventory
  # Adds an item to the user inventory
  # The inventory is fulfilled asynchronously UNLESS the invoice is explicitely skipped. Depending on the use case, it might require the client to verify that the entitlement was added after the fact or configure a BRE rule to get a notification in real time
  # @param id The id of the user
  # @param [Hash] opts the optional parameters
  # @option opts [UserInventoryAddRequest] :user_inventory_add_request The user inventory add request object
  # @return [InvoiceResource]
  describe 'add_item_to_user_inventory test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check_user_entitlement_item
  # Check for access to an item without consuming
  # Useful for pre-check and accounts for all various buisness rules
  # @param user_id The id of the user to check for or &#39;me&#39; for logged in user
  # @param item_id The id of the item
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sku The specific sku of an entitlement list addition to check entitlement for. This is of very limited and specific use and should generally be left out
  # @return [nil]
  describe 'check_user_entitlement_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_entitlement_item
  # Create an entitlement item
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  # @option opts [EntitlementItem] :entitlement_item The entitlement item object
  # @return [EntitlementItem]
  describe 'create_entitlement_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_entitlement_template
  # Create an entitlement template
  # Entitlement templates define a type of entitlement and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [ItemTemplateResource] :template The entitlement template to be created
  # @return [ItemTemplateResource]
  describe 'create_entitlement_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_entitlement_item
  # Delete an entitlement item
  # 
  # @param entitlement_id The id of the entitlement
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_entitlement_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_entitlement_template
  # Delete an entitlement template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_entitlement_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_entitlement_item
  # Get a single entitlement item
  # 
  # @param entitlement_id The id of the entitlement
  # @param [Hash] opts the optional parameters
  # @return [EntitlementItem]
  describe 'get_entitlement_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_entitlement_items
  # List and search entitlement items
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceEntitlementItem]
  describe 'get_entitlement_items test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_entitlement_template
  # Get a single entitlement template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [ItemTemplateResource]
  describe 'get_entitlement_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_entitlement_templates
  # List and search entitlement templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceItemTemplateResource]
  describe 'get_entitlement_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_inventories
  # List the user inventory entries for a given user
  # 
  # @param id The id of the user
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :inactive If true, accepts inactive user inventories
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :filter_item_name Filter by items whose name starts with a string
  # @option opts [Integer] :filter_item_id Filter by item id
  # @option opts [String] :filter_username Filter by entries owned by the user with the specified username
  # @option opts [String] :filter_group Filter by entries owned by the users in a given group, by unique name
  # @option opts [String] :filter_date A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).
  # @return [PageResourceUserInventoryResource]
  describe 'get_user_inventories test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_inventory
  # Get an inventory entry
  # 
  # @param user_id The id of the inventory owner or &#39;me&#39; for the logged in user
  # @param id The id of the user inventory
  # @param [Hash] opts the optional parameters
  # @return [UserInventoryResource]
  describe 'get_user_inventory test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_inventory_log
  # List the log entries for this inventory entry
  # 
  # @param user_id The id of the inventory owner or &#39;me&#39; for the logged in user
  # @param id The id of the user inventory
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceUserItemLogResource]
  describe 'get_user_inventory_log test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_users_inventory
  # List the user inventory entries for all users
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :inactive If true, accepts inactive user inventories
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :filter_item_name Filter by items whose name starts with a string
  # @option opts [Integer] :filter_item_id Filter by item id
  # @option opts [String] :filter_username Filter by entries owned by the user with the specified username
  # @option opts [String] :filter_group Filter by entries owned by the users in a given group, by unique name
  # @option opts [String] :filter_date A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).
  # @return [PageResourceUserInventoryResource]
  describe 'get_users_inventory test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for grant_user_entitlement
  # Grant an entitlement
  # 
  # @param user_id The id of the user to grant the entitlement to
  # @param grant_request grantRequest
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'grant_user_entitlement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_entitlement_item
  # Update an entitlement item
  # 
  # @param entitlement_id The id of the entitlement
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
  # @option opts [EntitlementItem] :entitlement_item The entitlement item object
  # @return [nil]
  describe 'update_entitlement_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_entitlement_template
  # Update an entitlement template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [ItemTemplateResource] :template The updated template
  # @return [ItemTemplateResource]
  describe 'update_entitlement_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_inventory_behavior_data
  # Set the behavior data for an inventory entry
  # 
  # @param user_id The id of the user
  # @param id The id of the user inventory
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :data The data map
  # @return [nil]
  describe 'update_user_inventory_behavior_data test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_inventory_expires
  # Set the expiration date
  # Will change the current grace period for a subscription but not the bill date (possibly even ending before having the chance to re-bill)
  # @param user_id user_id
  # @param id The id of the user inventory
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :timestamp The new expiration date as a unix timestamp in seconds. May be null (no body).
  # @return [nil]
  describe 'update_user_inventory_expires test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_inventory_status
  # Set the status for an inventory entry
  # 
  # @param user_id The id of the user
  # @param id The id of the user inventory
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inventory_status The inventory status object
  # @return [nil]
  describe 'update_user_inventory_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for use_user_entitlement_item
  # Use an item
  # 
  # @param user_id The id of the user to check for or &#39;me&#39; for logged in user
  # @param item_id The id of the item
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sku The specific sku of an entitlement_list addition to check entitlement for. This is of very limited and specific use and should generally be left out
  # @option opts [String] :info Any additional info to add to the log about this use
  # @return [nil]
  describe 'use_user_entitlement_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
