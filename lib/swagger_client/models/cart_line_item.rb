=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class CartLineItem
    attr_accessor :currency_code

    attr_accessor :description

    attr_accessor :discount

    attr_accessor :line_total

    attr_accessor :name

    attr_accessor :original_line_total

    attr_accessor :original_unit_price

    attr_accessor :qty

    attr_accessor :sale_name

    attr_accessor :sku

    attr_accessor :sku_description

    attr_accessor :store_item_id

    attr_accessor :tags

    attr_accessor :thumb_url

    attr_accessor :unit_price

    attr_accessor :vendor_id

    attr_accessor :vendor_name


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'currency_code' => :'currency_code',
        :'description' => :'description',
        :'discount' => :'discount',
        :'line_total' => :'line_total',
        :'name' => :'name',
        :'original_line_total' => :'original_line_total',
        :'original_unit_price' => :'original_unit_price',
        :'qty' => :'qty',
        :'sale_name' => :'sale_name',
        :'sku' => :'sku',
        :'sku_description' => :'sku_description',
        :'store_item_id' => :'store_item_id',
        :'tags' => :'tags',
        :'thumb_url' => :'thumb_url',
        :'unit_price' => :'unit_price',
        :'vendor_id' => :'vendor_id',
        :'vendor_name' => :'vendor_name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'currency_code' => :'String',
        :'description' => :'String',
        :'discount' => :'Discount',
        :'line_total' => :'Float',
        :'name' => :'String',
        :'original_line_total' => :'Float',
        :'original_unit_price' => :'Float',
        :'qty' => :'Integer',
        :'sale_name' => :'String',
        :'sku' => :'String',
        :'sku_description' => :'String',
        :'store_item_id' => :'Integer',
        :'tags' => :'Array<String>',
        :'thumb_url' => :'String',
        :'unit_price' => :'Float',
        :'vendor_id' => :'Integer',
        :'vendor_name' => :'String'
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

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.has_key?(:'line_total')
        self.line_total = attributes[:'line_total']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'original_line_total')
        self.original_line_total = attributes[:'original_line_total']
      end

      if attributes.has_key?(:'original_unit_price')
        self.original_unit_price = attributes[:'original_unit_price']
      end

      if attributes.has_key?(:'qty')
        self.qty = attributes[:'qty']
      end

      if attributes.has_key?(:'sale_name')
        self.sale_name = attributes[:'sale_name']
      end

      if attributes.has_key?(:'sku')
        self.sku = attributes[:'sku']
      end

      if attributes.has_key?(:'sku_description')
        self.sku_description = attributes[:'sku_description']
      end

      if attributes.has_key?(:'store_item_id')
        self.store_item_id = attributes[:'store_item_id']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'thumb_url')
        self.thumb_url = attributes[:'thumb_url']
      end

      if attributes.has_key?(:'unit_price')
        self.unit_price = attributes[:'unit_price']
      end

      if attributes.has_key?(:'vendor_id')
        self.vendor_id = attributes[:'vendor_id']
      end

      if attributes.has_key?(:'vendor_name')
        self.vendor_name = attributes[:'vendor_name']
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
          currency_code == o.currency_code &&
          description == o.description &&
          discount == o.discount &&
          line_total == o.line_total &&
          name == o.name &&
          original_line_total == o.original_line_total &&
          original_unit_price == o.original_unit_price &&
          qty == o.qty &&
          sale_name == o.sale_name &&
          sku == o.sku &&
          sku_description == o.sku_description &&
          store_item_id == o.store_item_id &&
          tags == o.tags &&
          thumb_url == o.thumb_url &&
          unit_price == o.unit_price &&
          vendor_id == o.vendor_id &&
          vendor_name == o.vendor_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [currency_code, description, discount, line_total, name, original_line_total, original_unit_price, qty, sale_name, sku, sku_description, store_item_id, tags, thumb_url, unit_price, vendor_id, vendor_name].hash
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
