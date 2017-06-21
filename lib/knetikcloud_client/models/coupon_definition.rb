=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module KnetikCloudClient

  class CouponDefinition
    # A unique identifier for the discount. Can be used to remove the discount, and uniqueness within the cart will be enforced.
    attr_accessor :code

    # A description for the discount.
    attr_accessor :description

    # The type of discount in terms of how it deducts price.
    attr_accessor :discount_type

    # Whether this discount is exclusive and cannot be used in conjunction with other discounts/coupons. default=false
    attr_accessor :exclusive

    # For coupon_cart, a minimum total price that the cart must meet to be valid.
    attr_accessor :max_discount

    # The maximum number of items to count this discount for (not for cart_coupon).
    attr_accessor :max_quantity

    # For coupon_cart, a minimum total price that the cart must meet to be valid.
    attr_accessor :min_cart_total

    # A name for the discount.
    attr_accessor :name

    # Whether this coupon is exclusive to itself or not (true means cannot add two of this same coupon to the same cart).  Default = false
    attr_accessor :self_exclusive

    # The id of the item this discount applies to, which must be present in the cart. Applies if coupon_type_hint is coupon_single_item or coupon_voucher.
    attr_accessor :target_item_id

    # The type of discount in terms of what it applies to. coupon_cart applies to the cart as a whole, other types apply to specific items based on different criteria.
    attr_accessor :type

    # A unique identifier string for the discount.
    attr_accessor :unique_key

    # Which tags this applies for (item must have at least one of them), if coupon_type is coupon_tag.
    attr_accessor :valid_for_tags

    # The amount of the discount. If discount_type is value then this is the raw currency amount to remove. If discount_type is percentage then this will be multiplied by the cart total or item price to get the discount amount (0.5 is half price).
    attr_accessor :value

    # Which vendor this applies for, if coupon_type is coupon_vendor.
    attr_accessor :vendor_id

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
        :'code' => :'code',
        :'description' => :'description',
        :'discount_type' => :'discount_type',
        :'exclusive' => :'exclusive',
        :'max_discount' => :'max_discount',
        :'max_quantity' => :'max_quantity',
        :'min_cart_total' => :'min_cart_total',
        :'name' => :'name',
        :'self_exclusive' => :'self_exclusive',
        :'target_item_id' => :'target_item_id',
        :'type' => :'type',
        :'unique_key' => :'unique_key',
        :'valid_for_tags' => :'valid_for_tags',
        :'value' => :'value',
        :'vendor_id' => :'vendor_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'code' => :'String',
        :'description' => :'String',
        :'discount_type' => :'String',
        :'exclusive' => :'BOOLEAN',
        :'max_discount' => :'Float',
        :'max_quantity' => :'Integer',
        :'min_cart_total' => :'Float',
        :'name' => :'String',
        :'self_exclusive' => :'BOOLEAN',
        :'target_item_id' => :'Integer',
        :'type' => :'String',
        :'unique_key' => :'String',
        :'valid_for_tags' => :'Array<String>',
        :'value' => :'Float',
        :'vendor_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'discount_type')
        self.discount_type = attributes[:'discount_type']
      end

      if attributes.has_key?(:'exclusive')
        self.exclusive = attributes[:'exclusive']
      end

      if attributes.has_key?(:'max_discount')
        self.max_discount = attributes[:'max_discount']
      end

      if attributes.has_key?(:'max_quantity')
        self.max_quantity = attributes[:'max_quantity']
      end

      if attributes.has_key?(:'min_cart_total')
        self.min_cart_total = attributes[:'min_cart_total']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'self_exclusive')
        self.self_exclusive = attributes[:'self_exclusive']
      end

      if attributes.has_key?(:'target_item_id')
        self.target_item_id = attributes[:'target_item_id']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'unique_key')
        self.unique_key = attributes[:'unique_key']
      end

      if attributes.has_key?(:'valid_for_tags')
        if (value = attributes[:'valid_for_tags']).is_a?(Array)
          self.valid_for_tags = value
        end
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'vendor_id')
        self.vendor_id = attributes[:'vendor_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @code.nil?
        invalid_properties.push("invalid value for 'code', code cannot be nil.")
      end

      if @discount_type.nil?
        invalid_properties.push("invalid value for 'discount_type', discount_type cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @unique_key.nil?
        invalid_properties.push("invalid value for 'unique_key', unique_key cannot be nil.")
      end

      if @value.nil?
        invalid_properties.push("invalid value for 'value', value cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @code.nil?
      return false if @discount_type.nil?
      discount_type_validator = EnumAttributeValidator.new('String', ["value", "percentage"])
      return false unless discount_type_validator.valid?(@discount_type)
      return false if @name.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["coupon_cart", "coupon_single_item", "coupon_voucher", "coupon_vendor", "coupon_tag"])
      return false unless type_validator.valid?(@type)
      return false if @unique_key.nil?
      return false if @value.nil?
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["coupon_cart", "coupon_single_item", "coupon_voucher", "coupon_vendor", "coupon_tag"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          code == o.code &&
          description == o.description &&
          discount_type == o.discount_type &&
          exclusive == o.exclusive &&
          max_discount == o.max_discount &&
          max_quantity == o.max_quantity &&
          min_cart_total == o.min_cart_total &&
          name == o.name &&
          self_exclusive == o.self_exclusive &&
          target_item_id == o.target_item_id &&
          type == o.type &&
          unique_key == o.unique_key &&
          valid_for_tags == o.valid_for_tags &&
          value == o.value &&
          vendor_id == o.vendor_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [code, description, discount_type, exclusive, max_discount, max_quantity, min_cart_total, name, self_exclusive, target_item_id, type, unique_key, valid_for_tags, value, vendor_id].hash
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
