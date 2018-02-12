=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module KnetikCloudClient

  class ChallengeActivityResource
    # The id of the activity
    attr_accessor :activity_id

    # A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type
    attr_accessor :additional_properties

    # The id of the challenge
    attr_accessor :challenge_id

    # Defines core settings about the activity that affect how it can be created/played by users. Values may be left null to inherit from parent activity.
    attr_accessor :core_settings

    # The entitlement item needed to participate in the activity as part of this event. Null indicates free entry. When creating/updating only id is used. Item must be pre-existing
    attr_accessor :entitlement

    # The unique ID for this resource
    attr_accessor :id

    # The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing
    attr_accessor :reward_set

    # The list of settings and the select options
    attr_accessor :settings

    # A challenge activity template this challenge activity is validated against (private). May be null and no validation of additional_properties will be done
    attr_accessor :template


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'activity_id' => :'activity_id',
        :'additional_properties' => :'additional_properties',
        :'challenge_id' => :'challenge_id',
        :'core_settings' => :'core_settings',
        :'entitlement' => :'entitlement',
        :'id' => :'id',
        :'reward_set' => :'reward_set',
        :'settings' => :'settings',
        :'template' => :'template'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'activity_id' => :'Integer',
        :'additional_properties' => :'Hash<String, Property>',
        :'challenge_id' => :'Integer',
        :'core_settings' => :'CoreChallengeActivitySettings',
        :'entitlement' => :'ActivityEntitlementResource',
        :'id' => :'Integer',
        :'reward_set' => :'RewardSetResource',
        :'settings' => :'Array<SelectedSettingResource>',
        :'template' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'activity_id')
        self.activity_id = attributes[:'activity_id']
      end

      if attributes.has_key?(:'additional_properties')
        if (value = attributes[:'additional_properties']).is_a?(Array)
          self.additional_properties = value
        end
      end

      if attributes.has_key?(:'challenge_id')
        self.challenge_id = attributes[:'challenge_id']
      end

      if attributes.has_key?(:'core_settings')
        self.core_settings = attributes[:'core_settings']
      end

      if attributes.has_key?(:'entitlement')
        self.entitlement = attributes[:'entitlement']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'reward_set')
        self.reward_set = attributes[:'reward_set']
      end

      if attributes.has_key?(:'settings')
        if (value = attributes[:'settings']).is_a?(Array)
          self.settings = value
        end
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @activity_id.nil?
        invalid_properties.push("invalid value for 'activity_id', activity_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @activity_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          activity_id == o.activity_id &&
          additional_properties == o.additional_properties &&
          challenge_id == o.challenge_id &&
          core_settings == o.core_settings &&
          entitlement == o.entitlement &&
          id == o.id &&
          reward_set == o.reward_set &&
          settings == o.settings &&
          template == o.template
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [activity_id, additional_properties, challenge_id, core_settings, entitlement, id, reward_set, settings, template].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = KnetikCloudClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
