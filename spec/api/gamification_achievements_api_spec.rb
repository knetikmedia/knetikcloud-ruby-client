=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::GamificationAchievementsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GamificationAchievementsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::GamificationAchievementsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GamificationAchievementsApi' do
    it 'should create an instact of GamificationAchievementsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::GamificationAchievementsApi)
    end
  end

  # unit tests for create_achievement
  # Create a new achievement definition
  # If the definition contains a trigger event name, a BRE rule is created, so that tracking logic is executed when the triggering event occurs. If no trigger event name is specified, the user&#39;s achievement status must manually be updated via the API.
  # @param [Hash] opts the optional parameters
  # @option opts [AchievementDefinitionResource] :achievement The achievement definition
  # @return [AchievementDefinitionResource]
  describe 'create_achievement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_achievement_template
  # Create an achievement template
  # Achievement templates define a type of achievement and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :template The achievement template to be created
  # @return [TemplateResource]
  describe 'create_achievement_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_achievement
  # Delete an achievement definition
  # Will also disable the associated generated rule, if any.
  # @param name The name of the achievement
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_achievement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_achievement_template
  # Delete an achievement template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_achievement_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_achievement
  # Get a single achievement definition
  # 
  # @param name The name of the achievement
  # @param [Hash] opts the optional parameters
  # @return [AchievementDefinitionResource]
  describe 'get_achievement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_achievement_template
  # Get a single achievement template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_achievement_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_achievement_templates
  # List and search achievement templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_achievement_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_achievement_triggers
  # Get the list of triggers that can be used to trigger an achievement progress update
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<BreTriggerResource>]
  describe 'get_achievement_triggers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_achievements
  # Get all achievement definitions in the system
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_tagset Filter for achievements with specified tags (separated by comma)
  # @option opts [String] :filter_name Filter for achievements whose name contains a string
  # @option opts [BOOLEAN] :filter_hidden Filter for achievements that are hidden or not
  # @option opts [BOOLEAN] :filter_derived Filter for achievements that are derived from other services
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceAchievementDefinitionResource]
  describe 'get_achievements test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_derived_achievements
  # Get a list of derived achievements
  # Used by other services that depend on achievements
  # @param name The name of the derived achievement
  # @param [Hash] opts the optional parameters
  # @return [Array<AchievementDefinitionResource>]
  describe 'get_derived_achievements test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_achievement_progress
  # Retrieve progress on a given achievement for a given user
  # Assets will not be filled in on the resources returned. Use &#39;Get a single poll&#39; to retrieve the full resource with assets for a given item as needed.
  # @param user_id The user&#39;s id
  # @param achievement_name The achievement&#39;s name
  # @param [Hash] opts the optional parameters
  # @return [UserAchievementGroupResource]
  describe 'get_user_achievement_progress test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_achievements_progress
  # Retrieve progress on achievements for a given user
  # Assets will not be filled in on the resources returned. Use &#39;Get a single poll&#39; to retrieve the full resource with assets for a given item as needed.
  # @param user_id The user&#39;s id
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :filter_achievement_derived Filter for achievements that are derived from other services
  # @option opts [String] :filter_achievement_tagset Filter for achievements with specified tags (separated by comma)
  # @option opts [String] :filter_achievement_name Filter for achievements whose name contains a string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceUserAchievementGroupResource]
  describe 'get_user_achievements_progress test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_users_achievement_progress
  # Retrieve progress on a given achievement for all users
  # Assets will not be filled in on the resources returned. Use &#39;Get single achievement progress for user&#39; to retrieve the full resource with assets for a given user as needed.
  # @param achievement_name The achievement&#39;s name
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :filter_achievement_derived Filter for achievements that are derived from other services
  # @option opts [String] :filter_achievement_tagset Filter for achievements with specified tags (separated by comma)
  # @option opts [String] :filter_achievement_name Filter for achievements whose name contains a string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceUserAchievementGroupResource]
  describe 'get_users_achievement_progress test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_users_achievements_progress
  # Retrieve progress on achievements for all users
  # Assets will not be filled in on the resources returned. Use &#39;Get single achievement progress for user&#39; to retrieve the full resource with assets for a given user as needed.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :filter_achievement_derived Filter for achievements that are derived from other services
  # @option opts [String] :filter_achievement_tagset Filter for achievements with specified tags (separated by comma)
  # @option opts [String] :filter_achievement_name Filter for achievements whose name contains a string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceUserAchievementGroupResource]
  describe 'get_users_achievements_progress test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for increment_achievement_progress
  # Increment an achievement progress record for a user
  # If no progress record yet exists for the user, it will be created. Otherwise it will be updated and the provided value added to the existing progress. May be negative. If progress meets or exceeds the achievement&#39;s max_value it will be marked as earned and a BRE event will be triggered for the &lt;code&gt;BreAchievementEarnedTrigger&lt;/code&gt;.
  # @param user_id The user&#39;s id
  # @param achievement_name The achievement&#39;s name
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :progress The amount to add to the progress value
  # @return [UserAchievementGroupResource]
  describe 'increment_achievement_progress test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_achievement_progress
  # Set an achievement progress record for a user
  # If no progress record yet exists for the user, it will be created. Otherwise it will be updated and progress set to the provided value. If progress meets or exceeds the achievement&#39;s max_value it will be marked as earned and a BRE event will be triggered for the &lt;code&gt;BreAchievementEarnedTrigger&lt;/code&gt;.
  # @param user_id The user&#39;s id
  # @param achievement_name The achievement&#39;s name
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :progress The new progress value
  # @return [UserAchievementGroupResource]
  describe 'set_achievement_progress test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_achievement
  # Update an achievement definition
  # The existing generated rule, if any, will be deleted. A new rule will be created if a trigger event name is specified in the new version.
  # @param name The name of the achievement
  # @param [Hash] opts the optional parameters
  # @option opts [AchievementDefinitionResource] :achievement The achievement definition
  # @return [AchievementDefinitionResource]
  describe 'update_achievement test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_achievement_template
  # Update an achievement template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :template The updated template
  # @return [TemplateResource]
  describe 'update_achievement_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
