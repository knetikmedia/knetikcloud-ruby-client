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

# Unit tests for KnetikCloudClient::ActivitiesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ActivitiesApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::ActivitiesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActivitiesApi' do
    it 'should create an instance of ActivitiesApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::ActivitiesApi)
    end
  end

  # unit tests for add_user
  # Add a user to an occurrence
  # If called with no body, defaults to the user making the call.
  # @param activity_occurrence_id The id of the activity occurrence
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :test if true, indicates that the user should NOT be added. This can be used to test for eligibility
  # @option opts [BOOLEAN] :bypass_restrictions if true, indicates that restrictions such as max player count should be ignored. Can only be used with ACTIVITIES_ADMIN
  # @option opts [IntWrapper] :user_id The id of the user, or null for &#39;caller&#39;
  # @return [ActivityOccurrenceResource]
  describe 'add_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_activity
  # Create an activity
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [ActivityResource] :activity_resource The activity resource object
  # @return [ActivityResource]
  describe 'create_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_activity_occurrence
  # Create a new activity occurrence. Ex: start a game
  # Has to enforce extra rules if not used as an admin. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_USER or ACTIVITIES_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :test if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
  # @option opts [CreateActivityOccurrenceRequest] :activity_occurrence_resource The activity occurrence object
  # @return [ActivityOccurrenceResource]
  describe 'create_activity_occurrence test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_activity_template
  # Create a activity template
  # Activity Templates define a type of activity and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :activity_template_resource The activity template resource object
  # @return [TemplateResource]
  describe 'create_activity_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_activity
  # Delete an activity
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
  # @param id The id of the activity
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_activity_template
  # Delete a activity template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_activity_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_activities
  # List activity definitions
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :filter_template Filter for activities that are templates, or specifically not if false
  # @option opts [String] :filter_name Filter for activities that have a name starting with specified string
  # @option opts [String] :filter_id Filter for activities with an id in the given comma separated list of ids
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceBareActivityResource]
  describe 'get_activities test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_activity
  # Get a single activity
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param id The id of the activity
  # @param [Hash] opts the optional parameters
  # @return [ActivityResource]
  describe 'get_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_activity_occurrence_details
  # Load a single activity occurrence details
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
  # @param activity_occurrence_id The id of the activity occurrence
  # @param [Hash] opts the optional parameters
  # @return [ActivityOccurrenceResource]
  describe 'get_activity_occurrence_details test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_activity_template
  # Get a single activity template
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACTIVITIES_ADMIN
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_activity_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_activity_templates
  # List and search activity templates
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ACTIVITIES_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_activity_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_activity_occurrences
  # List activity occurrences
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_activity Filter for occurrences of the given activity ID
  # @option opts [String] :filter_status Filter for occurrences in the given status
  # @option opts [Integer] :filter_event Filter for occurrences played during the given event
  # @option opts [Integer] :filter_challenge Filter for occurrences played within the given challenge
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceActivityOccurrenceResource]
  describe 'list_activity_occurrences test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_user
  # Remove a user from an occurrence
  # 
  # @param activity_occurrence_id The id of the activity occurrence
  # @param user_id The id of the user, or &#39;me&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :ban if true, indicates that the user should not be allowed to re-join. Can only be set by host or admin
  # @option opts [BOOLEAN] :bypass_restrictions if true, indicates that restrictions such as current status should be ignored. Can only be used with ACTIVITIES_ADMIN
  # @return [nil]
  describe 'remove_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_activity_occurrence_results
  # Sets the status of an activity occurrence to FINISHED and logs metrics
  # In addition to user permissions requirements there is security based on the core_settings.results_trust setting.
  # @param activity_occurrence_id The id of the activity occurrence
  # @param [Hash] opts the optional parameters
  # @option opts [ActivityOccurrenceResultsResource] :activity_occurrence_results The activity occurrence object
  # @return [ActivityOccurrenceResults]
  describe 'set_activity_occurrence_results test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_activity_occurrence_settings
  # Sets the settings of an activity occurrence
  # 
  # @param activity_occurrence_id The id of the activity occurrence
  # @param [Hash] opts the optional parameters
  # @option opts [ActivityOccurrenceSettingsResource] :settings The new settings
  # @return [ActivityOccurrenceResource]
  describe 'set_activity_occurrence_settings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_user_status
  # Set a user&#39;s status within an occurrence
  # 
  # @param activity_occurrence_id The id of the activity occurrence
  # @param user_id The id of the user
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status The new status
  # @return [ActivityUserResource]
  describe 'set_user_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_activity
  # Update an activity
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ACTIVITIES_ADMIN
  # @param id The id of the activity
  # @param [Hash] opts the optional parameters
  # @option opts [ActivityResource] :activity_resource The activity resource object
  # @return [ActivityResource]
  describe 'update_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_activity_occurrence_status
  # Update the status of an activity occurrence
  # If setting to &#39;FINISHED&#39; reward will be run based on current metrics that have been recorded already. Alternatively, see results endpoint to finish and record all metrics at once. Can be called by non-host participants if non_host_status_control is true
  # @param activity_occurrence_id The id of the activity occurrence
  # @param [Hash] opts the optional parameters
  # @option opts [ValueWrapperstring] :activity_occurrence_status The activity occurrence status object
  # @return [nil]
  describe 'update_activity_occurrence_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_activity_template
  # Update an activity template
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :activity_template_resource The activity template resource object
  # @return [TemplateResource]
  describe 'update_activity_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
