=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::CampaignsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CampaignsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::CampaignsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CampaignsApi' do
    it 'should create an instact of CampaignsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::CampaignsApi)
    end
  end

  # unit tests for add_challenges_using_post
  # Add a challenge to a campaign
  # 
  # @param id The id of the campaign
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :challenge_id The id of the challenge
  # @return [nil]
  describe 'add_challenges_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_campaign_template_using_post
  # Create a campaign template
  # Campaign Templates define a type of campaign and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :campaign_template_resource The campaign template resource object
  # @return [TemplateResource]
  describe 'create_campaign_template_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_campaign_using_post
  # Create a campaign
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [CampaignResource] :campaign_resource The campaign resource object
  # @return [CampaignResource]
  describe 'create_campaign_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_campaign_template_using_delete
  # Delete a campaign template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_campaign_template_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_campaign_using_delete
  # Delete a campaign
  # 
  # @param id The campaign id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_campaign_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_campaign_template_using_get
  # Get a single campaign template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_campaign_template_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_campaign_templates_using_get
  # List and search campaign templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageTemplateResource]
  describe 'get_campaign_templates_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_campaign_using_get
  # Returns a single campaign
  # 
  # @param id The campaign id
  # @param [Hash] opts the optional parameters
  # @return [CampaignResource]
  describe 'get_campaign_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_campaigns_using_get
  # List and search campaigns
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :filter_active Filter for campaigns that are active
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageCampaignResource]
  describe 'get_campaigns_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_challenges_using_get
  # List the challenges associated with a campaign
  # 
  # @param id The campaign id
  # @param [Hash] opts the optional parameters
  # @return [PageChallengeResource]
  describe 'get_challenges_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_challenge_using_delete
  # Remove a challenge from a campaign
  # 
  # @param campaign_id The campaign id
  # @param id The challenge id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_challenge_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_campaign_template_using_put
  # Update an campaign template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :campaign_template_resource The campaign template resource object
  # @return [nil]
  describe 'update_campaign_template_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_campaign_using_put
  # Update a campaign
  # 
  # @param id The campaign id
  # @param [Hash] opts the optional parameters
  # @option opts [CampaignResource] :campaign_resource The campaign resource object
  # @return [nil]
  describe 'update_campaign_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end