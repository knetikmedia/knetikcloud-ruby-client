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

  class CartShippingAddressRequest
    # The city of the user
    attr_accessor :city

    # The country code of the user
    attr_accessor :country_code_iso3

    # The email of the user
    attr_accessor :email

    # The first name of the user
    attr_accessor :first_name

    # The last name of the user
    attr_accessor :last_name

    attr_accessor :name_prefix

    # The order notes the user
    attr_accessor :order_notes

    # The phone number of the user
    attr_accessor :phone_number

    # The postal state code of the user
    attr_accessor :postal_state_code

    # The shipping address of the user, first line
    attr_accessor :shipping_address_line1

    # The shipping address of the user, second line
    attr_accessor :shipping_address_line2

    # The zipcode of the user
    attr_accessor :zip


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'city' => :'city',
        :'country_code_iso3' => :'country_code_iso3',
        :'email' => :'email',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'name_prefix' => :'name_prefix',
        :'order_notes' => :'order_notes',
        :'phone_number' => :'phone_number',
        :'postal_state_code' => :'postal_state_code',
        :'shipping_address_line1' => :'shipping_address_line1',
        :'shipping_address_line2' => :'shipping_address_line2',
        :'zip' => :'zip'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'city' => :'String',
        :'country_code_iso3' => :'String',
        :'email' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'name_prefix' => :'String',
        :'order_notes' => :'String',
        :'phone_number' => :'String',
        :'postal_state_code' => :'String',
        :'shipping_address_line1' => :'String',
        :'shipping_address_line2' => :'String',
        :'zip' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'country_code_iso3')
        self.country_code_iso3 = attributes[:'country_code_iso3']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'name_prefix')
        self.name_prefix = attributes[:'name_prefix']
      end

      if attributes.has_key?(:'order_notes')
        self.order_notes = attributes[:'order_notes']
      end

      if attributes.has_key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.has_key?(:'postal_state_code')
        self.postal_state_code = attributes[:'postal_state_code']
      end

      if attributes.has_key?(:'shipping_address_line1')
        self.shipping_address_line1 = attributes[:'shipping_address_line1']
      end

      if attributes.has_key?(:'shipping_address_line2')
        self.shipping_address_line2 = attributes[:'shipping_address_line2']
      end

      if attributes.has_key?(:'zip')
        self.zip = attributes[:'zip']
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          city == o.city &&
          country_code_iso3 == o.country_code_iso3 &&
          email == o.email &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          name_prefix == o.name_prefix &&
          order_notes == o.order_notes &&
          phone_number == o.phone_number &&
          postal_state_code == o.postal_state_code &&
          shipping_address_line1 == o.shipping_address_line1 &&
          shipping_address_line2 == o.shipping_address_line2 &&
          zip == o.zip
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [city, country_code_iso3, email, first_name, last_name, name_prefix, order_notes, phone_number, postal_state_code, shipping_address_line1, shipping_address_line2, zip].hash
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
