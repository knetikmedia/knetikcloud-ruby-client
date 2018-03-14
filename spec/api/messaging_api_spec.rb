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

# Unit tests for KnetikCloudClient::MessagingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MessagingApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::MessagingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessagingApi' do
    it 'should create an instance of MessagingApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::MessagingApi)
    end
  end

  # unit tests for compile_message_template
  # Compile a message template
  # Processes a set of input data against the template and returnes the compiled result. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [MessageTemplateBulkRequest] :request request
  # @return [Hash<String, String>]
  describe 'compile_message_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_message_template
  # Create a message template
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [MessageTemplateResource] :message_template The new template email to be sent
  # @return [MessageTemplateResource]
  describe 'create_message_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_message_template
  # Delete an existing message template
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param id The message_template id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_message_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_message_template
  # Get a single message template
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param id The message_template id
  # @param [Hash] opts the optional parameters
  # @return [MessageTemplateResource]
  describe 'get_message_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_message_templates
  # List and search message templates
  # Get a list of message templates with optional filtering. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_tagset Filter for message templates with at least one of a specified set of tags (separated by comma)
  # @option opts [String] :filter_tag_intersection Filter for message templates with all of a specified set of tags (separated by comma)
  # @option opts [String] :filter_tag_exclusion Filter for message templates with none of a specified set of tags (separated by comma)
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceMessageTemplateResource]
  describe 'get_message_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_message
  # Send a message
  # Sends a message with one or more formats to one or more users. Fill in any message formats desired (email, sms, websockets) and each user will recieve all valid formats. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [MessageResource] :message_resource The message to be sent
  # @return [nil]
  describe 'send_message test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_raw_email
  # Send a raw email to one or more users
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [RawEmailResource] :raw_email_resource The new raw email to be sent
  # @return [nil]
  describe 'send_raw_email test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_raw_push
  # Send a raw push notification
  # Sends a raw push notification message to one or more users. User&#39;s without registered mobile device for the application will be skipped. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [RawPushResource] :raw_push_resource The new raw push notification to be sent
  # @return [nil]
  describe 'send_raw_push test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_raw_sms
  # Send a raw SMS
  # Sends a raw SMS text message to one or more users. User&#39;s without registered mobile numbers will be skipped. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [RawSMSResource] :raw_sms_resource The new raw SMS to be sent
  # @return [nil]
  describe 'send_raw_sms test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_templated_email
  # Send a templated email to one or more users
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateEmailResource] :message_resource The new template email to be sent
  # @return [nil]
  describe 'send_templated_email test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_templated_push
  # Send a templated push notification
  # Sends a templated push notification message to one or more users. User&#39;s without registered mobile device for the application will be skipped. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [TemplatePushResource] :template_push_resource The new templated push notification to be sent
  # @return [nil]
  describe 'send_templated_push test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_templated_sms
  # Send a new templated SMS
  # Sends a templated SMS text message to one or more users. User&#39;s without registered mobile numbers will be skipped. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateSMSResource] :template_sms_resource The new template SMS to be sent
  # @return [nil]
  describe 'send_templated_sms test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_websocket
  # Send a websocket message
  # Sends a websocket message to one or more users. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [WebsocketMessageResource] :websocket_resource The new websocket message to be sent
  # @return [nil]
  describe 'send_websocket test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_message_template
  # Update an existing message template
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MESSAGING_ADMIN
  # @param id The message_template id
  # @param [Hash] opts the optional parameters
  # @option opts [MessageTemplateResource] :message_template_resource The message template
  # @return [MessageTemplateResource]
  describe 'update_message_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
