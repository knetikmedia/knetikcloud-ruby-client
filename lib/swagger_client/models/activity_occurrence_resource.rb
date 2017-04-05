=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class ActivityOccurrenceResource
    # The id of the activity
    attr_accessor :activity_id

    # The id of the challenge activity (as part of the event, required if eventId set)
    attr_accessor :challenge_activity_id

    # The date this occurrence was created, unix timestamp in seconds
    attr_accessor :created_date

    # The entitlement item required to enter the occurrence. Required if not part of an event. Must come from the set of entitlement items listed in the activity
    attr_accessor :entitlement

    # The id of the event
    attr_accessor :event_id

    # The id of the activity occurrence
    attr_accessor :id

    # Indicate if the rewards have been given out already
    attr_accessor :reward_status

    # The list of settings and their options available for this activity. Should be null on create if and only if part of an event. Otherwise, the set must exactly match those of the activity.
    attr_accessor :settings

    # Whether this occurrence will be played as a simulation.
    attr_accessor :simulated

    # The date this occurrence was started, unix timestamp in seconds. null if not yet started
    attr_accessor :start_date

    # The current status of the occurrence (default: OPEN)
    attr_accessor :status

    # The date this occurrence was last updated, unix timestamp in seconds
    attr_accessor :updated_date

    # The list of users playing in this occurrence. Can only be set directly with ACTIVITIES_ADMIN permission
    attr_accessor :users

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
        :'activity_id' => :'activity_id',
        :'challenge_activity_id' => :'challenge_activity_id',
        :'created_date' => :'created_date',
        :'entitlement' => :'entitlement',
        :'event_id' => :'event_id',
        :'id' => :'id',
        :'reward_status' => :'reward_status',
        :'settings' => :'settings',
        :'simulated' => :'simulated',
        :'start_date' => :'start_date',
        :'status' => :'status',
        :'updated_date' => :'updated_date',
        :'users' => :'users'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'activity_id' => :'Integer',
        :'challenge_activity_id' => :'Integer',
        :'created_date' => :'Integer',
        :'entitlement' => :'ActivityEntitlementResource',
        :'event_id' => :'Integer',
        :'id' => :'Integer',
        :'reward_status' => :'String',
        :'settings' => :'Array<SelectedSettingResource>',
        :'simulated' => :'BOOLEAN',
        :'start_date' => :'Integer',
        :'status' => :'String',
        :'updated_date' => :'Integer',
        :'users' => :'Array<ActivityUserResource>'
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

      if attributes.has_key?(:'challenge_activity_id')
        self.challenge_activity_id = attributes[:'challenge_activity_id']
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'entitlement')
        self.entitlement = attributes[:'entitlement']
      end

      if attributes.has_key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'reward_status')
        self.reward_status = attributes[:'reward_status']
      end

      if attributes.has_key?(:'settings')
        if (value = attributes[:'settings']).is_a?(Array)
          self.settings = value
        end
      end

      if attributes.has_key?(:'simulated')
        self.simulated = attributes[:'simulated']
      end

      if attributes.has_key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

      if attributes.has_key?(:'users')
        if (value = attributes[:'users']).is_a?(Array)
          self.users = value
        end
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
      reward_status_validator = EnumAttributeValidator.new('String', ["pending", "failed", "complete", "partial"])
      return false unless reward_status_validator.valid?(@reward_status)
      status_validator = EnumAttributeValidator.new('String', ["SETUP", "OPEN", "PLAYING", "FINISHED", "ABANDONED"])
      return false unless status_validator.valid?(@status)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["SETUP", "OPEN", "PLAYING", "FINISHED", "ABANDONED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          activity_id == o.activity_id &&
          challenge_activity_id == o.challenge_activity_id &&
          created_date == o.created_date &&
          entitlement == o.entitlement &&
          event_id == o.event_id &&
          id == o.id &&
          reward_status == o.reward_status &&
          settings == o.settings &&
          simulated == o.simulated &&
          start_date == o.start_date &&
          status == o.status &&
          updated_date == o.updated_date &&
          users == o.users
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [activity_id, challenge_activity_id, created_date, entitlement, event_id, id, reward_status, settings, simulated, start_date, status, updated_date, users].hash
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
        temp_model = SwaggerClient.const_get(type).new
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
