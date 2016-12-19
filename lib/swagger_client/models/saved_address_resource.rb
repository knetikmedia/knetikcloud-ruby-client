=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class SavedAddressResource
    # The first line of the address
    attr_accessor :address1

    # A second line of the address
    attr_accessor :address2

    # The city
    attr_accessor :city

    # The iso3 code for the country
    attr_accessor :country_code

    attr_accessor :default

    # The first name of the user
    attr_accessor :first_name

    # The id of the address
    attr_accessor :id

    # The last name of the user
    attr_accessor :last_name

    # The name of the address
    attr_accessor :name

    # The first phone number of the user
    attr_accessor :phone1

    # The second phone number of the user
    attr_accessor :phone2

    # The postal code
    attr_accessor :postal_code

    # The code for the state. Required if the country has states/provinces/equivalent
    attr_accessor :state_code


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'city' => :'city',
        :'country_code' => :'country_code',
        :'default' => :'default',
        :'first_name' => :'first_name',
        :'id' => :'id',
        :'last_name' => :'last_name',
        :'name' => :'name',
        :'phone1' => :'phone1',
        :'phone2' => :'phone2',
        :'postal_code' => :'postal_code',
        :'state_code' => :'state_code'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address1' => :'String',
        :'address2' => :'String',
        :'city' => :'String',
        :'country_code' => :'String',
        :'default' => :'BOOLEAN',
        :'first_name' => :'String',
        :'id' => :'Integer',
        :'last_name' => :'String',
        :'name' => :'String',
        :'phone1' => :'String',
        :'phone2' => :'String',
        :'postal_code' => :'String',
        :'state_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.has_key?(:'default')
        self.default = attributes[:'default']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'phone1')
        self.phone1 = attributes[:'phone1']
      end

      if attributes.has_key?(:'phone2')
        self.phone2 = attributes[:'phone2']
      end

      if attributes.has_key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.has_key?(:'state_code')
        self.state_code = attributes[:'state_code']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @address1.nil?
        invalid_properties.push("invalid value for 'address1', address1 cannot be nil.")
      end

      if @city.nil?
        invalid_properties.push("invalid value for 'city', city cannot be nil.")
      end

      if @country_code.nil?
        invalid_properties.push("invalid value for 'country_code', country_code cannot be nil.")
      end

      if @first_name.nil?
        invalid_properties.push("invalid value for 'first_name', first_name cannot be nil.")
      end

      if @last_name.nil?
        invalid_properties.push("invalid value for 'last_name', last_name cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @address1.nil?
      return false if @city.nil?
      return false if @country_code.nil?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if @name.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          city == o.city &&
          country_code == o.country_code &&
          default == o.default &&
          first_name == o.first_name &&
          id == o.id &&
          last_name == o.last_name &&
          name == o.name &&
          phone1 == o.phone1 &&
          phone2 == o.phone2 &&
          postal_code == o.postal_code &&
          state_code == o.state_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address1, address2, city, country_code, default, first_name, id, last_name, name, phone1, phone2, postal_code, state_code].hash
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