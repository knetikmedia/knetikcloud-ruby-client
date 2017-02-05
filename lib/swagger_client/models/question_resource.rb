=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class QuestionResource
    # A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type
    attr_accessor :additional_properties

    # The list of available answers
    attr_accessor :answers

    # The category for the question
    attr_accessor :category

    # The date/time this resource was created in seconds since unix epoch
    attr_accessor :created_date

    # The difficulty of the question
    attr_accessor :difficulty

    # The unique ID for that resource
    attr_accessor :id

    # The id of the import job that created the question, or null if not from an import
    attr_accessor :import_id

    # When the question becomes available, null for never, in seconds since epoch
    attr_accessor :published_date

    # The question. Different 'type' values indicate different structures as the question may be test, image, etc. See information on additional properties for the list and their structures
    attr_accessor :question

    # The first source of the question
    attr_accessor :source1

    # The second source of the question
    attr_accessor :source2

    # The list of tags
    attr_accessor :tags

    # A question template this question is validated against (private). May be null and no validation of additional_properties will be done
    attr_accessor :template

    # The date/time this resource was last updated in seconds since unix epoch
    attr_accessor :updated_date

    # The supplier of the question
    attr_accessor :vendor


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'additional_properties' => :'additional_properties',
        :'answers' => :'answers',
        :'category' => :'category',
        :'created_date' => :'created_date',
        :'difficulty' => :'difficulty',
        :'id' => :'id',
        :'import_id' => :'import_id',
        :'published_date' => :'published_date',
        :'question' => :'question',
        :'source1' => :'source1',
        :'source2' => :'source2',
        :'tags' => :'tags',
        :'template' => :'template',
        :'updated_date' => :'updated_date',
        :'vendor' => :'vendor'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'additional_properties' => :'Hash<String, Property>',
        :'answers' => :'Array<AnswerResource>',
        :'category' => :'NestedCategory',
        :'created_date' => :'Integer',
        :'difficulty' => :'Integer',
        :'id' => :'String',
        :'import_id' => :'Integer',
        :'published_date' => :'Integer',
        :'question' => :'Property',
        :'source1' => :'String',
        :'source2' => :'String',
        :'tags' => :'Array<String>',
        :'template' => :'String',
        :'updated_date' => :'Integer',
        :'vendor' => :'String'
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

      if attributes.has_key?(:'answers')
        if (value = attributes[:'answers']).is_a?(Array)
          self.answers = value
        end
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'difficulty')
        self.difficulty = attributes[:'difficulty']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'import_id')
        self.import_id = attributes[:'import_id']
      end

      if attributes.has_key?(:'published_date')
        self.published_date = attributes[:'published_date']
      end

      if attributes.has_key?(:'question')
        self.question = attributes[:'question']
      end

      if attributes.has_key?(:'source1')
        self.source1 = attributes[:'source1']
      end

      if attributes.has_key?(:'source2')
        self.source2 = attributes[:'source2']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

      if attributes.has_key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @category.nil?
        invalid_properties.push("invalid value for 'category', category cannot be nil.")
      end

      if @difficulty.nil?
        invalid_properties.push("invalid value for 'difficulty', difficulty cannot be nil.")
      end

      if @question.nil?
        invalid_properties.push("invalid value for 'question', question cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @category.nil?
      return false if @difficulty.nil?
      return false if @question.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_properties == o.additional_properties &&
          answers == o.answers &&
          category == o.category &&
          created_date == o.created_date &&
          difficulty == o.difficulty &&
          id == o.id &&
          import_id == o.import_id &&
          published_date == o.published_date &&
          question == o.question &&
          source1 == o.source1 &&
          source2 == o.source2 &&
          tags == o.tags &&
          template == o.template &&
          updated_date == o.updated_date &&
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
      [additional_properties, answers, category, created_date, difficulty, id, import_id, published_date, question, source1, source2, tags, template, updated_date, vendor].hash
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
