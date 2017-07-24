=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module KnetikCloudClient

  class CampaignResource
    # Whether the campaign is active or not.  Defaults to false
    attr_accessor :active

    # A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type
    attr_accessor :additional_properties

    # The date/time this resource was created in seconds since unix epoch
    attr_accessor :created_date

    # The unique ID for that resource
    attr_accessor :id

    # The strategy for calculating the leaderboard. Defaults to highest score. Value MUST come from the list of available strategies from the Leaderboard Service
    attr_accessor :leaderboard_strategy

    # The user friendly name of that resource. Defaults to blank string
    attr_accessor :long_description

    # The user friendly name of that resource
    attr_accessor :name

    # The name of the next challenge coming up
    attr_accessor :next_challenge

    # The date/time of the next challenge coming up
    attr_accessor :next_challenge_date

    # The rewards to give at the end of the campaign. When creating/updating only id is used. Reward set must be pre-existing
    attr_accessor :reward_set

    # Indicate if the rewards have been given out already
    attr_accessor :reward_status

    # The user friendly name of that resource. Defaults to blank string
    attr_accessor :short_description

    # A campaign template this campaign is validated against (private). May be null and no validation of additional_properties will be done
    attr_accessor :template

    # The date/time this resource was last updated in seconds since unix epoch
    attr_accessor :updated_date

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'additional_properties' => :'additional_properties',
        :'created_date' => :'created_date',
        :'id' => :'id',
        :'leaderboard_strategy' => :'leaderboard_strategy',
        :'long_description' => :'long_description',
        :'name' => :'name',
        :'next_challenge' => :'next_challenge',
        :'next_challenge_date' => :'next_challenge_date',
        :'reward_set' => :'reward_set',
        :'reward_status' => :'reward_status',
        :'short_description' => :'short_description',
        :'template' => :'template',
        :'updated_date' => :'updated_date'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'active' => :'BOOLEAN',
        :'additional_properties' => :'Hash<String, Property>',
        :'created_date' => :'Integer',
        :'id' => :'Integer',
        :'leaderboard_strategy' => :'String',
        :'long_description' => :'String',
        :'name' => :'String',
        :'next_challenge' => :'String',
        :'next_challenge_date' => :'Integer',
        :'reward_set' => :'RewardSetResource',
        :'reward_status' => :'String',
        :'short_description' => :'String',
        :'template' => :'String',
        :'updated_date' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.has_key?(:'additional_properties')
        if (value = attributes[:'additional_properties']).is_a?(Array)
          self.additional_properties = value
        end
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'leaderboard_strategy')
        self.leaderboard_strategy = attributes[:'leaderboard_strategy']
      end

      if attributes.has_key?(:'long_description')
        self.long_description = attributes[:'long_description']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'next_challenge')
        self.next_challenge = attributes[:'next_challenge']
      end

      if attributes.has_key?(:'next_challenge_date')
        self.next_challenge_date = attributes[:'next_challenge_date']
      end

      if attributes.has_key?(:'reward_set')
        self.reward_set = attributes[:'reward_set']
      end

      if attributes.has_key?(:'reward_status')
        self.reward_status = attributes[:'reward_status']
      end

      if attributes.has_key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      reward_status_validator = EnumAttributeValidator.new('String', ["pending", "failed", "complete", "partial"])
      return false unless reward_status_validator.valid?(@reward_status)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reward_status Object to be assigned
    def reward_status=(reward_status)
      validator = EnumAttributeValidator.new('String', ["pending", "failed", "complete", "partial"])
      unless validator.valid?(reward_status)
        fail ArgumentError, "invalid value for 'reward_status', must be one of #{validator.allowable_values}."
      end
      @reward_status = reward_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          additional_properties == o.additional_properties &&
          created_date == o.created_date &&
          id == o.id &&
          leaderboard_strategy == o.leaderboard_strategy &&
          long_description == o.long_description &&
          name == o.name &&
          next_challenge == o.next_challenge &&
          next_challenge_date == o.next_challenge_date &&
          reward_set == o.reward_set &&
          reward_status == o.reward_status &&
          short_description == o.short_description &&
          template == o.template &&
          updated_date == o.updated_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [active, additional_properties, created_date, id, leaderboard_strategy, long_description, name, next_challenge, next_challenge_date, reward_set, reward_status, short_description, template, updated_date].hash
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
