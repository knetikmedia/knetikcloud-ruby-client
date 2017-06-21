=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module KnetikCloudClient

  class NewCustomerEvent
    attr_accessor :client

    attr_accessor :customer

    attr_accessor :do_not_broadcast

    attr_accessor :section

    attr_accessor :source

    attr_accessor :specifics

    attr_accessor :synchronous

    attr_accessor :timestamp

    # The type of the event. Used for polymorphic type recognition and thus must match an expected type
    attr_accessor :type

    attr_accessor :customer_config


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'client' => :'client',
        :'customer' => :'customer',
        :'do_not_broadcast' => :'do_not_broadcast',
        :'section' => :'section',
        :'source' => :'source',
        :'specifics' => :'specifics',
        :'synchronous' => :'synchronous',
        :'timestamp' => :'timestamp',
        :'type' => :'type',
        :'customer_config' => :'customer_config'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'client' => :'String',
        :'customer' => :'String',
        :'do_not_broadcast' => :'BOOLEAN',
        :'section' => :'String',
        :'source' => :'Object',
        :'specifics' => :'String',
        :'synchronous' => :'BOOLEAN',
        :'timestamp' => :'Integer',
        :'type' => :'String',
        :'customer_config' => :'CustomerConfig'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'client')
        self.client = attributes[:'client']
      end

      if attributes.has_key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.has_key?(:'do_not_broadcast')
        self.do_not_broadcast = attributes[:'do_not_broadcast']
      end

      if attributes.has_key?(:'section')
        self.section = attributes[:'section']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'specifics')
        self.specifics = attributes[:'specifics']
      end

      if attributes.has_key?(:'synchronous')
        self.synchronous = attributes[:'synchronous']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'customer_config')
        self.customer_config = attributes[:'customer_config']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client == o.client &&
          customer == o.customer &&
          do_not_broadcast == o.do_not_broadcast &&
          section == o.section &&
          source == o.source &&
          specifics == o.specifics &&
          synchronous == o.synchronous &&
          timestamp == o.timestamp &&
          type == o.type &&
          customer_config == o.customer_config
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [client, customer, do_not_broadcast, section, source, specifics, synchronous, timestamp, type, customer_config].hash
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
