=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module KnetikCloudClient

  class CouponItem
    # A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template
    attr_accessor :additional_properties

    # The behaviors linked to the item, describing various options and interactions. May not be included in item lists
    attr_accessor :behaviors

    # A category for filtering items
    attr_accessor :category

    # The date the item was created, unix timestamp in seconds
    attr_accessor :created_date

    # The id of the item
    attr_accessor :id

    # A long description of the item
    attr_accessor :long_description

    # The name of the item
    attr_accessor :name

    # A short description of the item, max 255 chars
    attr_accessor :short_description

    # A number to use in sorting items.  Default 500
    attr_accessor :sort

    # List of tags used for filtering items
    attr_accessor :tags

    # An item template this item is validated against.  May be null and no validation of additional_properties will be done.  Default = null
    attr_accessor :template

    # The type of the item
    attr_accessor :type_hint

    # The unique key for the item
    attr_accessor :unique_key

    # The date the item was last updated, unix timestamp in seconds
    attr_accessor :updated_date

    # Whether or not the item is currently displayable.  Default = true
    attr_accessor :displayable

    # A list of country ID to include in the blacklist/whitelist geo policy
    attr_accessor :geo_country_list

    # Whether to use the geo_country_list as a black list or white list for item geographical availability
    attr_accessor :geo_policy_type

    # Provides the abstract shipping needs if this item is physical and can be shipped.  A value of zero means no shipping needed.  Default = 0
    attr_accessor :shipping_tier

    # The skus for the item. Each defines a unique configuration for the item to be purchased (Large-Blue, Small-Green, etc). These are what is ultimately selected in the store and added to the cart
    attr_accessor :skus

    # The date the item will leave the store, unix timestamp in seconds.  If set to null, item will never leave the store
    attr_accessor :store_end

    # The date the item will appear in the store, unix timestamp in seconds.  If set to null, item will appear in store immediately
    attr_accessor :store_start

    # The vendor who provides the item
    attr_accessor :vendor_id

    # The type of coupon
    attr_accessor :coupon_type_hint

    # The amount this coupon is maxed out at.  Applies if coupon_type_hint is coupon_cart
    attr_accessor :discount_max

    # The minimium amount needed in the cart for the coupon to apply.  Applies if coupon_type_hint is coupon_cart
    attr_accessor :discount_min_cart_value

    # The type of discount in terms of how it deducts price. Value based discount not available for coupon_cart type coupons
    attr_accessor :discount_type

    # The amount the coupon will discount the item. If discount_type is 'value' this will be a flat amount of currency. If discount type is 'percentage' this will be a fraction (0.2 for 20% off) multiplied by the price of the matching item or items.
    attr_accessor :discount_value

    # Whether this coupon is exclusive or not (true means cannot be in same cart as another).  Default = false
    attr_accessor :exclusive

    # The id of the item the coupon is applied to.  Applies if coupon_type_hint is coupon_single_item or coupon_voucher
    attr_accessor :item_id

    # The maximum quantity of items the coupon can apply to, null if no limit and minimum 1 otherwise.  Applies if coupon_type_hint is coupon_single_item or coupon_voucher
    attr_accessor :max_quantity

    # Whether this coupon is exclusive to itself or not (true means cannot add two of this same coupon to the same cart).  Default = false
    attr_accessor :self_exclusive

    # A list of tags for a coupon.  The coupon can only apply to an item that has at least one of these tags.  Applies if coupon_type_hint is coupon_tag
    attr_accessor :valid_for_tags

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
        :'additional_properties' => :'additional_properties',
        :'behaviors' => :'behaviors',
        :'category' => :'category',
        :'created_date' => :'created_date',
        :'id' => :'id',
        :'long_description' => :'long_description',
        :'name' => :'name',
        :'short_description' => :'short_description',
        :'sort' => :'sort',
        :'tags' => :'tags',
        :'template' => :'template',
        :'type_hint' => :'type_hint',
        :'unique_key' => :'unique_key',
        :'updated_date' => :'updated_date',
        :'displayable' => :'displayable',
        :'geo_country_list' => :'geo_country_list',
        :'geo_policy_type' => :'geo_policy_type',
        :'shipping_tier' => :'shipping_tier',
        :'skus' => :'skus',
        :'store_end' => :'store_end',
        :'store_start' => :'store_start',
        :'vendor_id' => :'vendor_id',
        :'coupon_type_hint' => :'coupon_type_hint',
        :'discount_max' => :'discount_max',
        :'discount_min_cart_value' => :'discount_min_cart_value',
        :'discount_type' => :'discount_type',
        :'discount_value' => :'discount_value',
        :'exclusive' => :'exclusive',
        :'item_id' => :'item_id',
        :'max_quantity' => :'max_quantity',
        :'self_exclusive' => :'self_exclusive',
        :'valid_for_tags' => :'valid_for_tags'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'additional_properties' => :'Hash<String, Property>',
        :'behaviors' => :'Array<Behavior>',
        :'category' => :'String',
        :'created_date' => :'Integer',
        :'id' => :'Integer',
        :'long_description' => :'String',
        :'name' => :'String',
        :'short_description' => :'String',
        :'sort' => :'Integer',
        :'tags' => :'Array<String>',
        :'template' => :'String',
        :'type_hint' => :'String',
        :'unique_key' => :'String',
        :'updated_date' => :'Integer',
        :'displayable' => :'BOOLEAN',
        :'geo_country_list' => :'Array<String>',
        :'geo_policy_type' => :'String',
        :'shipping_tier' => :'Integer',
        :'skus' => :'Array<Sku>',
        :'store_end' => :'Integer',
        :'store_start' => :'Integer',
        :'vendor_id' => :'Integer',
        :'coupon_type_hint' => :'String',
        :'discount_max' => :'Float',
        :'discount_min_cart_value' => :'Float',
        :'discount_type' => :'String',
        :'discount_value' => :'Float',
        :'exclusive' => :'BOOLEAN',
        :'item_id' => :'Integer',
        :'max_quantity' => :'Integer',
        :'self_exclusive' => :'BOOLEAN',
        :'valid_for_tags' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'additional_properties')
        if (value = attributes[:'additional_properties']).is_a?(Array)
          self.additional_properties = value
        end
      end

      if attributes.has_key?(:'behaviors')
        if (value = attributes[:'behaviors']).is_a?(Array)
          self.behaviors = value
        end
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'long_description')
        self.long_description = attributes[:'long_description']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.has_key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'type_hint')
        self.type_hint = attributes[:'type_hint']
      end

      if attributes.has_key?(:'unique_key')
        self.unique_key = attributes[:'unique_key']
      end

      if attributes.has_key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

      if attributes.has_key?(:'displayable')
        self.displayable = attributes[:'displayable']
      end

      if attributes.has_key?(:'geo_country_list')
        if (value = attributes[:'geo_country_list']).is_a?(Array)
          self.geo_country_list = value
        end
      end

      if attributes.has_key?(:'geo_policy_type')
        self.geo_policy_type = attributes[:'geo_policy_type']
      end

      if attributes.has_key?(:'shipping_tier')
        self.shipping_tier = attributes[:'shipping_tier']
      end

      if attributes.has_key?(:'skus')
        if (value = attributes[:'skus']).is_a?(Array)
          self.skus = value
        end
      end

      if attributes.has_key?(:'store_end')
        self.store_end = attributes[:'store_end']
      end

      if attributes.has_key?(:'store_start')
        self.store_start = attributes[:'store_start']
      end

      if attributes.has_key?(:'vendor_id')
        self.vendor_id = attributes[:'vendor_id']
      end

      if attributes.has_key?(:'coupon_type_hint')
        self.coupon_type_hint = attributes[:'coupon_type_hint']
      end

      if attributes.has_key?(:'discount_max')
        self.discount_max = attributes[:'discount_max']
      end

      if attributes.has_key?(:'discount_min_cart_value')
        self.discount_min_cart_value = attributes[:'discount_min_cart_value']
      end

      if attributes.has_key?(:'discount_type')
        self.discount_type = attributes[:'discount_type']
      end

      if attributes.has_key?(:'discount_value')
        self.discount_value = attributes[:'discount_value']
      end

      if attributes.has_key?(:'exclusive')
        self.exclusive = attributes[:'exclusive']
      end

      if attributes.has_key?(:'item_id')
        self.item_id = attributes[:'item_id']
      end

      if attributes.has_key?(:'max_quantity')
        self.max_quantity = attributes[:'max_quantity']
      end

      if attributes.has_key?(:'self_exclusive')
        self.self_exclusive = attributes[:'self_exclusive']
      end

      if attributes.has_key?(:'valid_for_tags')
        if (value = attributes[:'valid_for_tags']).is_a?(Array)
          self.valid_for_tags = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @type_hint.nil?
        invalid_properties.push("invalid value for 'type_hint', type_hint cannot be nil.")
      end

      if @skus.nil?
        invalid_properties.push("invalid value for 'skus', skus cannot be nil.")
      end

      if @vendor_id.nil?
        invalid_properties.push("invalid value for 'vendor_id', vendor_id cannot be nil.")
      end

      if @coupon_type_hint.nil?
        invalid_properties.push("invalid value for 'coupon_type_hint', coupon_type_hint cannot be nil.")
      end

      if @discount_type.nil?
        invalid_properties.push("invalid value for 'discount_type', discount_type cannot be nil.")
      end

      if @discount_value.nil?
        invalid_properties.push("invalid value for 'discount_value', discount_value cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @type_hint.nil?
      geo_policy_type_validator = EnumAttributeValidator.new('String', ["whitelist", "blacklist"])
      return false unless geo_policy_type_validator.valid?(@geo_policy_type)
      return false if @skus.nil?
      return false if @vendor_id.nil?
      return false if @coupon_type_hint.nil?
      coupon_type_hint_validator = EnumAttributeValidator.new('String', ["coupon_cart", "coupon_single_item", "coupon_voucher", "coupon_vendor", "coupon_tag"])
      return false unless coupon_type_hint_validator.valid?(@coupon_type_hint)
      return false if @discount_type.nil?
      discount_type_validator = EnumAttributeValidator.new('String', ["value", "percentage"])
      return false unless discount_type_validator.valid?(@discount_type)
      return false if @discount_value.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] geo_policy_type Object to be assigned
    def geo_policy_type=(geo_policy_type)
      validator = EnumAttributeValidator.new('String', ["whitelist", "blacklist"])
      unless validator.valid?(geo_policy_type)
        fail ArgumentError, "invalid value for 'geo_policy_type', must be one of #{validator.allowable_values}."
      end
      @geo_policy_type = geo_policy_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon_type_hint Object to be assigned
    def coupon_type_hint=(coupon_type_hint)
      validator = EnumAttributeValidator.new('String', ["coupon_cart", "coupon_single_item", "coupon_voucher", "coupon_vendor", "coupon_tag"])
      unless validator.valid?(coupon_type_hint)
        fail ArgumentError, "invalid value for 'coupon_type_hint', must be one of #{validator.allowable_values}."
      end
      @coupon_type_hint = coupon_type_hint
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
          additional_properties == o.additional_properties &&
          behaviors == o.behaviors &&
          category == o.category &&
          created_date == o.created_date &&
          id == o.id &&
          long_description == o.long_description &&
          name == o.name &&
          short_description == o.short_description &&
          sort == o.sort &&
          tags == o.tags &&
          template == o.template &&
          type_hint == o.type_hint &&
          unique_key == o.unique_key &&
          updated_date == o.updated_date &&
          displayable == o.displayable &&
          geo_country_list == o.geo_country_list &&
          geo_policy_type == o.geo_policy_type &&
          shipping_tier == o.shipping_tier &&
          skus == o.skus &&
          store_end == o.store_end &&
          store_start == o.store_start &&
          vendor_id == o.vendor_id &&
          coupon_type_hint == o.coupon_type_hint &&
          discount_max == o.discount_max &&
          discount_min_cart_value == o.discount_min_cart_value &&
          discount_type == o.discount_type &&
          discount_value == o.discount_value &&
          exclusive == o.exclusive &&
          item_id == o.item_id &&
          max_quantity == o.max_quantity &&
          self_exclusive == o.self_exclusive &&
          valid_for_tags == o.valid_for_tags
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [additional_properties, behaviors, category, created_date, id, long_description, name, short_description, sort, tags, template, type_hint, unique_key, updated_date, displayable, geo_country_list, geo_policy_type, shipping_tier, skus, store_end, store_start, vendor_id, coupon_type_hint, discount_max, discount_min_cart_value, discount_type, discount_value, exclusive, item_id, max_quantity, self_exclusive, valid_for_tags].hash
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
