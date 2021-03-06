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

  class VendorResource
    # Whether the vendor is active.  Default = true
    attr_accessor :active

    # A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template
    attr_accessor :additional_properties

    # The date the vendor was added. Unix timestamp in seconds
    attr_accessor :create_date

    # A description of the vendor
    attr_accessor :description

    # The id of the vendor
    attr_accessor :id

    # The url of an image for the vendor
    attr_accessor :image_url

    # Whether the vendor needs to manually approve invoices before they are paid.  A separate checkout flow is required in this case.  Default: false
    attr_accessor :manual_approval

    # The name of the vendor
    attr_accessor :name

    # The primary email address for the vendor
    attr_accessor :primary_contact_email

    # The name of the primary contact for the vendor
    attr_accessor :primary_contact_name

    # The primary phone number for the vendor
    attr_accessor :primary_contact_phone

    # The email address for sale inquiries for the vendor
    attr_accessor :sales_email

    # The email address for support inquiries for the vendor
    attr_accessor :support_email

    # A user template this user is validated against (private). May be null and no validation of properties will be done
    attr_accessor :template

    # The date the vendor was last updated. Unix timestamp in seconds
    attr_accessor :update_date

    # The url for the vendor's site
    attr_accessor :url


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'additional_properties' => :'additional_properties',
        :'create_date' => :'create_date',
        :'description' => :'description',
        :'id' => :'id',
        :'image_url' => :'image_url',
        :'manual_approval' => :'manual_approval',
        :'name' => :'name',
        :'primary_contact_email' => :'primary_contact_email',
        :'primary_contact_name' => :'primary_contact_name',
        :'primary_contact_phone' => :'primary_contact_phone',
        :'sales_email' => :'sales_email',
        :'support_email' => :'support_email',
        :'template' => :'template',
        :'update_date' => :'update_date',
        :'url' => :'url'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'active' => :'BOOLEAN',
        :'additional_properties' => :'Hash<String, Property>',
        :'create_date' => :'Integer',
        :'description' => :'String',
        :'id' => :'Integer',
        :'image_url' => :'String',
        :'manual_approval' => :'BOOLEAN',
        :'name' => :'String',
        :'primary_contact_email' => :'String',
        :'primary_contact_name' => :'String',
        :'primary_contact_phone' => :'String',
        :'sales_email' => :'String',
        :'support_email' => :'String',
        :'template' => :'String',
        :'update_date' => :'Integer',
        :'url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.has_key?(:'additional_properties')
        if (value = attributes[:'additional_properties']).is_a?(Array)
          self.additional_properties = value
        end
      end

      if attributes.has_key?(:'create_date')
        self.create_date = attributes[:'create_date']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.has_key?(:'manual_approval')
        self.manual_approval = attributes[:'manual_approval']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'primary_contact_email')
        self.primary_contact_email = attributes[:'primary_contact_email']
      end

      if attributes.has_key?(:'primary_contact_name')
        self.primary_contact_name = attributes[:'primary_contact_name']
      end

      if attributes.has_key?(:'primary_contact_phone')
        self.primary_contact_phone = attributes[:'primary_contact_phone']
      end

      if attributes.has_key?(:'sales_email')
        self.sales_email = attributes[:'sales_email']
      end

      if attributes.has_key?(:'support_email')
        self.support_email = attributes[:'support_email']
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          additional_properties == o.additional_properties &&
          create_date == o.create_date &&
          description == o.description &&
          id == o.id &&
          image_url == o.image_url &&
          manual_approval == o.manual_approval &&
          name == o.name &&
          primary_contact_email == o.primary_contact_email &&
          primary_contact_name == o.primary_contact_name &&
          primary_contact_phone == o.primary_contact_phone &&
          sales_email == o.sales_email &&
          support_email == o.support_email &&
          template == o.template &&
          update_date == o.update_date &&
          url == o.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [active, additional_properties, create_date, description, id, image_url, manual_approval, name, primary_contact_email, primary_contact_name, primary_contact_phone, sales_email, support_email, template, update_date, url].hash
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
