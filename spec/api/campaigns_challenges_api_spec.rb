=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::CampaignsChallengesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CampaignsChallengesApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::CampaignsChallengesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CampaignsChallengesApi' do
    it 'should create an instact of CampaignsChallengesApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::CampaignsChallengesApi)
    end
  end

  # unit tests for create_challenge
  # Create a challenge
  # Challenges do not run on their own.  They must be added to a campaign before events will spawn.
  # @param [Hash] opts the optional parameters
  # @option opts [ChallengeResource] :challenge_resource The challenge resource object
  # @return [ChallengeResource]
  describe 'create_challenge test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_challenge_activity
  # Create a challenge activity
  # 
  # @param challenge_id The challenge id
  # @param [Hash] opts the optional parameters
  # @option opts [ChallengeActivityResource] :challenge_activity_resource The challenge activity resource object
  # @option opts [BOOLEAN] :validate_settings Whether to validate the settings being sent against the available settings on the base activity.
  # @return [ChallengeActivityResource]
  describe 'create_challenge_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_challenge_activity_template
  # Create a challenge activity template
  # Challenge Activity Templates define a type of challenge activity and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :challenge_activity_template_resource The challengeActivity template resource object
  # @return [TemplateResource]
  describe 'create_challenge_activity_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_challenge_template
  # Create a challenge template
  # Challenge Templates define a type of challenge and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :challenge_template_resource The challenge template resource object
  # @return [TemplateResource]
  describe 'create_challenge_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_challenge
  # Delete a challenge
  # 
  # @param id The challenge id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_challenge test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_challenge_activity
  # Delete a challenge activity
  # 
  # @param activity_id The activity id
  # @param challenge_id The challenge id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_challenge_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_challenge_activity_template
  # Delete a challenge activity template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_challenge_activity_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_challenge_event
  # Delete a challenge event
  # 
  # @param id The challenge event id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_challenge_event test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_challenge_template
  # Delete a challenge template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_challenge_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenge
  # Retrieve a challenge
  # 
  # @param id The challenge id
  # @param [Hash] opts the optional parameters
  # @return [ChallengeResource]
  describe 'get_challenge test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenge_activities
  # List and search challenge activities
  # 
  # @param challenge_id The challenge id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceBareChallengeActivityResource]
  describe 'get_challenge_activities test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenge_activity
  # Get a single challenge activity
  # 
  # @param activity_id The activity id
  # @param [Hash] opts the optional parameters
  # @return [ChallengeActivityResource]
  describe 'get_challenge_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenge_activity_template
  # Get a single challenge activity template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_challenge_activity_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenge_activity_templates
  # List and search challenge activity templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_challenge_activity_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenge_event
  # Retrieve a single challenge event details
  # 
  # @param id The challenge event id
  # @param [Hash] opts the optional parameters
  # @return [ChallengeEventResource]
  describe 'get_challenge_event test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenge_events
  # Retrieve a list of challenge events
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the event start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  # @option opts [String] :filter_end_date A comma separated string without spaces.  First value is the operator to search on, second value is the event end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  # @option opts [BOOLEAN] :filter_campaigns check only for events from currently running campaigns
  # @option opts [Integer] :filter_challenge check only for events from the challenge specified by id
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceChallengeEventResource]
  describe 'get_challenge_events test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenge_template
  # Get a single challenge template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_challenge_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenge_templates
  # List and search challenge templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_challenge_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenges
  # Retrieve a list of challenges
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :filter_template Filter for challenges that are not tied to campaigns (templates)
  # @option opts [BOOLEAN] :filter_active_campaign Filter for challenges that are tied to active campaigns
  # @return [PageResourceChallengeResource]
  describe 'get_challenges test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_challenge
  # Update a challenge
  # If the challenge is a copy, changes will propagate to all the related challenges
  # @param id The challenge id
  # @param [Hash] opts the optional parameters
  # @option opts [ChallengeResource] :challenge_resource The challenge resource object
  # @return [ChallengeResource]
  describe 'update_challenge test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_challenge_activity
  # Update a challenge activity
  # 
  # @param activity_id The activity id
  # @param challenge_id The challenge id
  # @param [Hash] opts the optional parameters
  # @option opts [ChallengeActivityResource] :challenge_activity_resource The challenge activity resource object
  # @return [ChallengeActivityResource]
  describe 'update_challenge_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_challenge_activity_template
  # Update an challenge activity template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :challenge_activity_template_resource The challengeActivity template resource object
  # @return [TemplateResource]
  describe 'update_challenge_activity_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_challenge_template
  # Update a challenge template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :challenge_template_resource The challenge template resource object
  # @return [TemplateResource]
  describe 'update_challenge_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
