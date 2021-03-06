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

# Unit tests for KnetikCloudClient::ChatApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ChatApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::ChatApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChatApi' do
    it 'should create an instance of ChatApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::ChatApi)
    end
  end

  # unit tests for acknowledge_chat_message
  # Acknowledge number of messages in a thread
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
  # @param id The thread id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :read_count The amount of messages read
  # @return [nil]
  describe 'acknowledge_chat_message test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_chat_message_blacklist
  # Add a user to a chat message blacklist
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  # @param blacklisted_user_id The user id to blacklist
  # @param id The user id or &#39;me&#39;
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_chat_message_blacklist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_chat_message
  # Delete a message
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  # @param id The message id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_chat_message test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for edit_chat_message
  # Edit your message
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
  # @param id The message id
  # @param [Hash] opts the optional parameters
  # @option opts [ChatMessageResource] :chat_message_resource The chat message resource
  # @return [nil]
  describe 'edit_chat_message test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_chat_message
  # Get a message
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  # @param id The message id
  # @param [Hash] opts the optional parameters
  # @return [ChatMessageResource]
  describe 'get_chat_message test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_chat_message_blacklist
  # Get a list of blocked users for chat messaging
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  # @param id The user id or &#39;me&#39;
  # @param [Hash] opts the optional parameters
  # @return [Array<ChatBlacklistResource>]
  describe 'get_chat_message_blacklist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_chat_threads
  # List your threads
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceChatUserThreadResource]
  describe 'get_chat_threads test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_direct_messages
  # List messages with a user
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
  # @param id The user id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceChatMessageResource]
  describe 'get_direct_messages test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_thread_messages
  # List messages in a thread
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  # @param id The thread id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceChatMessageResource]
  describe 'get_thread_messages test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_topic_messages
  # List messages in a topic
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  # @param id The topic id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceChatMessageResource]
  describe 'get_topic_messages test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_chat_blacklist
  # Remove a user from a blacklist
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
  # @param blacklisted_user_id The user id to blacklist
  # @param id The user id or &#39;me&#39;
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_chat_blacklist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_chat_message
  # Send a message
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param [Hash] opts the optional parameters
  # @option opts [ChatMessageResource] :chat_message_resource The chat message resource
  # @return [ChatMessageResource]
  describe 'send_chat_message test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
