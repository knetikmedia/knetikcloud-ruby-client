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

  class CoreActivitySettings
    # Whether the host can boot a user while the status is PLAYING. Default false
    attr_accessor :boot_in_play

    # Restriction for whether the host creating an occurrence can specify a custom launch address (such as their own ip address). Default 'false'
    attr_accessor :custom_launch_address_allowed

    # Restriction for who can host an occurrence. admin disallows regular users, player means the user must also be a player in the occurrence if not admin, non-player means the user has the option to host without being a player. Default 'player'
    attr_accessor :host_option

    # Restriction for whether the host has control of the status once the game launches. If false they can only manage the game before (when setup and open). Default 'false'
    attr_accessor :host_status_control

    # Whether users can join while the status is PLAYING. Default false
    attr_accessor :join_in_play

    # Whether users can leave while the status is PLAYING. Default false
    attr_accessor :leave_in_play

    # The maximum number of players the game can hold
    attr_accessor :max_players

    # The minimum number of players the game can hold
    attr_accessor :min_players

    # Restriction for who is able to report game end and results. Admin is always able to send results as well. Default 'none'
    attr_accessor :results_trust

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
        :'boot_in_play' => :'boot_in_play',
        :'custom_launch_address_allowed' => :'custom_launch_address_allowed',
        :'host_option' => :'host_option',
        :'host_status_control' => :'host_status_control',
        :'join_in_play' => :'join_in_play',
        :'leave_in_play' => :'leave_in_play',
        :'max_players' => :'max_players',
        :'min_players' => :'min_players',
        :'results_trust' => :'results_trust'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'boot_in_play' => :'BOOLEAN',
        :'custom_launch_address_allowed' => :'BOOLEAN',
        :'host_option' => :'String',
        :'host_status_control' => :'BOOLEAN',
        :'join_in_play' => :'BOOLEAN',
        :'leave_in_play' => :'BOOLEAN',
        :'max_players' => :'Integer',
        :'min_players' => :'Integer',
        :'results_trust' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'boot_in_play')
        self.boot_in_play = attributes[:'boot_in_play']
      end

      if attributes.has_key?(:'custom_launch_address_allowed')
        self.custom_launch_address_allowed = attributes[:'custom_launch_address_allowed']
      end

      if attributes.has_key?(:'host_option')
        self.host_option = attributes[:'host_option']
      end

      if attributes.has_key?(:'host_status_control')
        self.host_status_control = attributes[:'host_status_control']
      end

      if attributes.has_key?(:'join_in_play')
        self.join_in_play = attributes[:'join_in_play']
      end

      if attributes.has_key?(:'leave_in_play')
        self.leave_in_play = attributes[:'leave_in_play']
      end

      if attributes.has_key?(:'max_players')
        self.max_players = attributes[:'max_players']
      end

      if attributes.has_key?(:'min_players')
        self.min_players = attributes[:'min_players']
      end

      if attributes.has_key?(:'results_trust')
        self.results_trust = attributes[:'results_trust']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      host_option_validator = EnumAttributeValidator.new('String', ["admin_only", "player", "non_player"])
      return false unless host_option_validator.valid?(@host_option)
      results_trust_validator = EnumAttributeValidator.new('String', ["none", "host", "all"])
      return false unless results_trust_validator.valid?(@results_trust)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] host_option Object to be assigned
    def host_option=(host_option)
      validator = EnumAttributeValidator.new('String', ["admin_only", "player", "non_player"])
      unless validator.valid?(host_option)
        fail ArgumentError, "invalid value for 'host_option', must be one of #{validator.allowable_values}."
      end
      @host_option = host_option
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] results_trust Object to be assigned
    def results_trust=(results_trust)
      validator = EnumAttributeValidator.new('String', ["none", "host", "all"])
      unless validator.valid?(results_trust)
        fail ArgumentError, "invalid value for 'results_trust', must be one of #{validator.allowable_values}."
      end
      @results_trust = results_trust
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          boot_in_play == o.boot_in_play &&
          custom_launch_address_allowed == o.custom_launch_address_allowed &&
          host_option == o.host_option &&
          host_status_control == o.host_status_control &&
          join_in_play == o.join_in_play &&
          leave_in_play == o.leave_in_play &&
          max_players == o.max_players &&
          min_players == o.min_players &&
          results_trust == o.results_trust
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [boot_in_play, custom_launch_address_allowed, host_option, host_status_control, join_in_play, leave_in_play, max_players, min_players, results_trust].hash
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
