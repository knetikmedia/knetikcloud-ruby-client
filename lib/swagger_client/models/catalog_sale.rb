=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class CatalogSale
    # The iso3 code for the currency for this discountValue.  The sku purchased will have to match for it this sale to apply
    attr_accessor :currency_code

    # The way in which the price is reduced. 'value' means subtracting directly, 'percentage' means subtracting by the price times the discountValue (1.0 == 100%)
    attr_accessor :discount_type

    # The amount deducted from the price, in the same currencyCode as the item
    attr_accessor :discount_value

    # The id of the sale
    attr_accessor :id

    # The id of the item this sale applies to.  Leave null to use other filters
    attr_accessor :item

    # The long description of the sale
    attr_accessor :long_description

    # The name of the sale.  Max 40 characters
    attr_accessor :name

    # The date the sale ends, null for never.  Unix timestamp in seconds
    attr_accessor :sale_end_date

    # The date the sale begins.  Unix timestamp in seconds
    attr_accessor :sale_start_date

    # The short description of the sale.  Max 140 characters
    attr_accessor :short_description

    # The tag this sale applies to.  Leave null to skip this filter (applies to all tags)
    attr_accessor :tag

    # The id of the vendor this sale applies to.  Leave null to skip this filter (applies to all vendors)
    attr_accessor :vendor

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
        :'currency_code' => :'currency_code',
        :'discount_type' => :'discount_type',
        :'discount_value' => :'discount_value',
        :'id' => :'id',
        :'item' => :'item',
        :'long_description' => :'long_description',
        :'name' => :'name',
        :'sale_end_date' => :'sale_end_date',
        :'sale_start_date' => :'sale_start_date',
        :'short_description' => :'short_description',
        :'tag' => :'tag',
        :'vendor' => :'vendor'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'currency_code' => :'String',
        :'discount_type' => :'String',
        :'discount_value' => :'Float',
        :'id' => :'Integer',
        :'item' => :'Integer',
        :'long_description' => :'String',
        :'name' => :'String',
        :'sale_end_date' => :'Integer',
        :'sale_start_date' => :'Integer',
        :'short_description' => :'String',
        :'tag' => :'String',
        :'vendor' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.has_key?(:'discount_type')
        self.discount_type = attributes[:'discount_type']
      end

      if attributes.has_key?(:'discount_value')
        self.discount_value = attributes[:'discount_value']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'item')
        self.item = attributes[:'item']
      end

      if attributes.has_key?(:'long_description')
        self.long_description = attributes[:'long_description']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'sale_end_date')
        self.sale_end_date = attributes[:'sale_end_date']
      end

      if attributes.has_key?(:'sale_start_date')
        self.sale_start_date = attributes[:'sale_start_date']
      end

      if attributes.has_key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.has_key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.has_key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @currency_code.nil?
        invalid_properties.push("invalid value for 'currency_code', currency_code cannot be nil.")
      end

      if @discount_type.nil?
        invalid_properties.push("invalid value for 'discount_type', discount_type cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @sale_start_date.nil?
        invalid_properties.push("invalid value for 'sale_start_date', sale_start_date cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @currency_code.nil?
      return false if @discount_type.nil?
      discount_type_validator = EnumAttributeValidator.new('String', ["value", "percentage"])
      return false unless discount_type_validator.valid?(@discount_type)
      return false if @name.nil?
      return false if @sale_start_date.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discount_type Object to be assigned
    def discount_type=(discount_type)
      validator = EnumAttributeValidator.new('String', ["value", "percentage"])
      unless validator.valid?(discount_type)
        fail ArgumentError, "invalid value for 'discount_type', must be one of #{validator.allowable_values}."
      end
      @discount_type = discount_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          currency_code == o.currency_code &&
          discount_type == o.discount_type &&
          discount_value == o.discount_value &&
          id == o.id &&
          item == o.item &&
          long_description == o.long_description &&
          name == o.name &&
          sale_end_date == o.sale_end_date &&
          sale_start_date == o.sale_start_date &&
          short_description == o.short_description &&
          tag == o.tag &&
          vendor == o.vendor
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [currency_code, discount_type, discount_value, id, item, long_description, name, sale_end_date, sale_start_date, short_description, tag, vendor].hash
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
