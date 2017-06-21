=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

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
    it 'should create an instact of ActivitiesApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::ActivitiesApi)
    end
  end

  # unit tests for create_activity
  # Create an activity
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc] :activity_resource The activity resource object
  # @return [RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc]
  describe 'create_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_activity_occurrence
  # Create a new activity occurrence. Ex: start a game
  # Has to enforce extra rules if not used as an admin
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :test if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings
  # @option opts [AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings] :activity_occurrence_resource The activity occurrence object
  # @return [AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings]
  describe 'create_activity_occurrence test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_activity_template
  # Create a activity template
  # Activity Templates define a type of activity and the properties they have
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
  # 
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
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
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
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :filter_template Filter for activities that are templates, or specifically not if false
  # @option opts [String] :filter_name Filter for activities that have a name starting with specified string
  # @option opts [Object] :filter_id Filter for activities with an id in the given comma separated list of ids
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
  # 
  # @param id The id of the activity
  # @param [Hash] opts the optional parameters
  # @return [RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc]
  describe 'get_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_activity_template
  # Get a single activity template
  # 
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
  # 
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

  # unit tests for set_activity_occurrence_results
  # Sets the status of an activity occurrence to FINISHED and logs metrics
  # 
  # @param activity_occurrence_id The id of the activity occurrence
  # @param [Hash] opts the optional parameters
  # @option opts [ActivityOccurrenceResults] :activity_occurrence_results The activity occurrence object
  # @return [ActivityOccurrenceResults]
  describe 'set_activity_occurrence_results test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_activity
  # Update an activity
  # 
  # @param id The id of the activity
  # @param [Hash] opts the optional parameters
  # @option opts [RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc] :activity_resource The activity resource object
  # @return [RepresentsAnActivityThatCanBeParameterizedAndTrackedThroughMetricsScoresEtc]
  describe 'update_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_activity_occurrence
  # Updated the status of an activity occurrence
  # If setting to &#39;FINISHED&#39; you must POST to /results instead to record the metrics and get synchronous reward results
  # @param activity_occurrence_id The id of the activity occurrence
  # @param [Hash] opts the optional parameters
  # @option opts [String] :activity_cccurrence_status The activity occurrence status object
  # @return [nil]
  describe 'update_activity_occurrence test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_activity_template
  # Update an activity template
  # 
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
