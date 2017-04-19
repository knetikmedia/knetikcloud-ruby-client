=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module KnetikCloudClient

  class SubscriptionResource
    # A map of item additional properties, keyed on the property name. Must match the names and types defined in the template for this item type.
    attr_accessor :additional_properties

    # Who can purchase this subscription
    attr_accessor :availability

    # A category for filtering items
    attr_accessor :category

    # The day of the month 1..31 this subscription will renew
    attr_accessor :consolidation_day_of_month

    # The date the item was created, unix timestamp in seconds
    attr_accessor :created_date

    # A list of country iso3 codes to include in the blacklist/whitelist geo policy
    attr_accessor :geo_country_list

    # Whether to use the geo_country_list as a black list or white list for item geographical availability
    attr_accessor :geo_policy_type

    # The id of the item
    attr_accessor :id

    # A long description of the subscription
    attr_accessor :long_description

    # The name of the item
    attr_accessor :name

    # The billing options for this subscription
    attr_accessor :plans

    # A short description of the subscription.  Max 255 characters
    attr_accessor :short_description

    # A number to use in sorting items.  Default 500
    attr_accessor :sort

    # Used to schedule removal from store.  Null means the subscription will never be removed
    attr_accessor :store_end

    # Used to schedule appearance in store.  Null means the subscription will appear now
    attr_accessor :store_start

    # List of tags used for filtering items
    attr_accessor :tags

    # An item template this item is validated against. May be null and no validation of additional properties will be done.
    attr_accessor :template

    # The unique key for the item
    attr_accessor :unique_key

    # The date the item was last updated
    attr_accessor :updated_date

    # The vendor who provides the item
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
        :'additional_properties' => :'additional_properties',
        :'availability' => :'availability',
        :'category' => :'category',
        :'consolidation_day_of_month' => :'consolidation_day_of_month',
        :'created_date' => :'created_date',
        :'geo_country_list' => :'geo_country_list',
        :'geo_policy_type' => :'geo_policy_type',
        :'id' => :'id',
        :'long_description' => :'long_description',
        :'name' => :'name',
        :'plans' => :'plans',
        :'short_description' => :'short_description',
        :'sort' => :'sort',
        :'store_end' => :'store_end',
        :'store_start' => :'store_start',
        :'tags' => :'tags',
        :'template' => :'template',
        :'unique_key' => :'unique_key',
        :'updated_date' => :'updated_date',
        :'vendor_id' => :'vendor_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'additional_properties' => :'Hash<String, Property>',
        :'availability' => :'String',
        :'category' => :'String',
        :'consolidation_day_of_month' => :'Integer',
        :'created_date' => :'Integer',
        :'geo_country_list' => :'Array<String>',
        :'geo_policy_type' => :'String',
        :'id' => :'Integer',
        :'long_description' => :'String',
        :'name' => :'String',
        :'plans' => :'Array<SubscriptionPlanResource>',
        :'short_description' => :'String',
        :'sort' => :'Integer',
        :'store_end' => :'Integer',
        :'store_start' => :'Integer',
        :'tags' => :'Array<String>',
        :'template' => :'String',
        :'unique_key' => :'String',
        :'updated_date' => :'Integer',
        :'vendor_id' => :'Integer'
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

      if attributes.has_key?(:'availability')
        self.availability = attributes[:'availability']
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'consolidation_day_of_month')
        self.consolidation_day_of_month = attributes[:'consolidation_day_of_month']
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'geo_country_list')
        if (value = attributes[:'geo_country_list']).is_a?(Array)
          self.geo_country_list = value
        end
      end

      if attributes.has_key?(:'geo_policy_type')
        self.geo_policy_type = attributes[:'geo_policy_type']
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

      if attributes.has_key?(:'plans')
        if (value = attributes[:'plans']).is_a?(Array)
          self.plans = value
        end
      end

      if attributes.has_key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.has_key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.has_key?(:'store_end')
        self.store_end = attributes[:'store_end']
      end

      if attributes.has_key?(:'store_start')
        self.store_start = attributes[:'store_start']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'unique_key')
        self.unique_key = attributes[:'unique_key']
      end

      if attributes.has_key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

      if attributes.has_key?(:'vendor_id')
        self.vendor_id = attributes[:'vendor_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @vendor_id.nil?
        invalid_properties.push("invalid value for 'vendor_id', vendor_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      availability_validator = EnumAttributeValidator.new('String', ["all", "new_subscribers"])
      return false unless availability_validator.valid?(@availability)
      geo_policy_type_validator = EnumAttributeValidator.new('String', ["whitelist", "blacklist"])
      return false unless geo_policy_type_validator.valid?(@geo_policy_type)
      return false if @name.nil?
      return false if @vendor_id.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] availability Object to be assigned
    def availability=(availability)
      validator = EnumAttributeValidator.new('String', ["all", "new_subscribers"])
      unless validator.valid?(availability)
        fail ArgumentError, "invalid value for 'availability', must be one of #{validator.allowable_values}."
      end
      @availability = availability
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_properties == o.additional_properties &&
          availability == o.availability &&
          category == o.category &&
          consolidation_day_of_month == o.consolidation_day_of_month &&
          created_date == o.created_date &&
          geo_country_list == o.geo_country_list &&
          geo_policy_type == o.geo_policy_type &&
          id == o.id &&
          long_description == o.long_description &&
          name == o.name &&
          plans == o.plans &&
          short_description == o.short_description &&
          sort == o.sort &&
          store_end == o.store_end &&
          store_start == o.store_start &&
          tags == o.tags &&
          template == o.template &&
          unique_key == o.unique_key &&
          updated_date == o.updated_date &&
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
      [additional_properties, availability, category, consolidation_day_of_month, created_date, geo_country_list, geo_policy_type, id, long_description, name, plans, short_description, sort, store_end, store_start, tags, template, unique_key, updated_date, vendor_id].hash
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
