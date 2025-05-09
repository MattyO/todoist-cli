# #Todoist API
#
## Developing with Todoist  Thanks for your interest in developing apps with Todoist. In this section we will provide an overview of the API we offer and cover some common topics for application development using them.  You can use our API for free, but depending on your Todoist account plan (or that of the authenticated user), some features may be restricted.  Please consider subscribing to the [Todoist API mailing list](https://groups.google.com/a/doist.com/g/todoist-api) to get important updates.  ## Our API  Our API uses an approach that should be familiar to anyone with experience calling [RESTful](https://en.wikipedia.org/wiki/Representational_state_transfer) APIs.  We also have a special endpoint called `/sync`, which is used by our first-party clients to keep the data updated locally without having to make many separate requests to the API. Anyone can use it, and some actions will only be available via `/sync`. The format is unconventional compared to current API standards, but it is our main driver for first-party apps.  ## Our SDKs  Our Python and JavaScript SDKs streamline working with the Todoist API, and can be installed from the main package registries for each ecosystem.  For instructions, examples, and reference documentation, visit their pages:  - [Todoist Python SDK](https://doist.github.io/todoist-api-python/) - [Todoist TypeScript SDK](https://doist.github.io/todoist-api-typescript/)  ## Pagination  Paginated endpoints are marked by having the `next_cursor` attribute in the response.  When a response comes back with `next_cursor: null`, it means the endpoint is paginated but there are no more pages to request data from.  If the cursor is `non-null`, there are more objects to return, and a new request is necessary to get the next page.  The `next_cursor` contains an _opaque_ string that shouldn't be modified in any way. It should be sent **as-is** in the `cursor` parameter along with the same parameters used in the previous request.  ## Integrations  Integrations can be created and updated [here](https://app.todoist.com/app_console).  Once done, they can also be submitted for evaluation and inclusion in [our official integrations list](https://www.todoist.com/integrations). This not only serves as an opportunity to market your integration to our audience, but will also serve as a way to help users get set up and familiar with your app quickly.  To get your integration evaluated, please submit it via [this page](https://doist.typeform.com/to/Vvq7kNcl?typeform-source=todoist.com/api/v1/docs).  Lost? Reach out to us at [submissions@doist.com](mailto:submissions@doist.com) anytime.
#
# The version of the OpenAPI document: 1
#
# Generated by: https://openapi-generator.tech
# Generator version: 7.14.0-SNAPSHOT
#

require "date"
require "time"

module Todoist
  class TodoistAppsApiRestTasksBody1
    attr_accessor :content

    attr_accessor :description

    attr_accessor :project_id

    attr_accessor :section_id

    attr_accessor :parent_id

    attr_accessor :order

    attr_accessor :labels

    attr_accessor :priority

    attr_accessor :assignee_id

    attr_accessor :due_string

    attr_accessor :due_date

    attr_accessor :due_datetime

    attr_accessor :due_lang

    attr_accessor :duration

    attr_accessor :duration_unit

    attr_accessor :deadline_date

    attr_accessor :deadline_lang

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        content: :content,
        description: :description,
        project_id: :project_id,
        section_id: :section_id,
        parent_id: :parent_id,
        order: :order,
        labels: :labels,
        priority: :priority,
        assignee_id: :assignee_id,
        due_string: :due_string,
        due_date: :due_date,
        due_datetime: :due_datetime,
        due_lang: :due_lang,
        duration: :duration,
        duration_unit: :duration_unit,
        deadline_date: :deadline_date,
        deadline_lang: :deadline_lang
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        content: :String,
        description: :String,
        project_id: :ProjectId2,
        section_id: :SectionId1,
        parent_id: :ParentId,
        order: :Integer,
        labels: :"Array<String>",
        priority: :Integer,
        assignee_id: :Integer,
        due_string: :String,
        due_date: :String,
        due_datetime: :String,
        due_lang: :String,
        duration: :Integer,
        duration_unit: :String,
        deadline_date: :String,
        deadline_lang: :String
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :description,
        :project_id,
        :section_id,
        :parent_id,
        :order,
        :labels,
        :priority,
        :assignee_id,
        :due_string,
        :due_date,
        :due_datetime,
        :due_lang,
        :duration,
        :duration_unit,
        :deadline_date,
        :deadline_lang
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if !attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `Todoist::TodoistAppsApiRestTasksBody1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !acceptable_attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Todoist::TodoistAppsApiRestTasksBody1`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      self.content = if attributes.key?(:content)
        attributes[:content]
      end

      if attributes.key?(:description)
        self.description = attributes[:description]
      end

      if attributes.key?(:project_id)
        self.project_id = attributes[:project_id]
      end

      if attributes.key?(:section_id)
        self.section_id = attributes[:section_id]
      end

      if attributes.key?(:parent_id)
        self.parent_id = attributes[:parent_id]
      end

      if attributes.key?(:order)
        self.order = attributes[:order]
      end

      if attributes.key?(:labels)
        if (value = attributes[:labels]).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:priority)
        self.priority = attributes[:priority]
      end

      if attributes.key?(:assignee_id)
        self.assignee_id = attributes[:assignee_id]
      end

      if attributes.key?(:due_string)
        self.due_string = attributes[:due_string]
      end

      if attributes.key?(:due_date)
        self.due_date = attributes[:due_date]
      end

      if attributes.key?(:due_datetime)
        self.due_datetime = attributes[:due_datetime]
      end

      if attributes.key?(:due_lang)
        self.due_lang = attributes[:due_lang]
      end

      if attributes.key?(:duration)
        self.duration = attributes[:duration]
      end

      if attributes.key?(:duration_unit)
        self.duration_unit = attributes[:duration_unit]
      end

      if attributes.key?(:deadline_date)
        self.deadline_date = attributes[:deadline_date]
      end

      if attributes.key?(:deadline_lang)
        self.deadline_lang = attributes[:deadline_lang]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn "[DEPRECATED] the `list_invalid_properties` method is obsolete"
      invalid_properties = []
      if @content.nil?
        invalid_properties.push('invalid value for "content", content cannot be nil.')
      end

      if @content.to_s.length < 1
        invalid_properties.push('invalid value for "content", the character length must be great than or equal to 1.')
      end

      if !@order.nil? && @order > 2147483647
        invalid_properties.push('invalid value for "order", must be smaller than or equal to 2147483647.')
      end

      if !@order.nil? && @order < -2147483648
        invalid_properties.push('invalid value for "order", must be greater than or equal to -2147483648.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn "[DEPRECATED] the `valid?` method is obsolete"
      return false if @content.nil?
      return false if @content.to_s.length < 1
      return false if !@order.nil? && @order > 2147483647
      return false if !@order.nil? && @order < -2147483648
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] content Value to be assigned
    def content=(content)
      if content.nil?
        fail ArgumentError, "content cannot be nil"
      end

      if content.to_s.length < 1
        fail ArgumentError, 'invalid value for "content", the character length must be great than or equal to 1.'
      end

      @content = content
    end

    # Custom attribute writer method with validation
    # @param [Object] order Value to be assigned
    def order=(order)
      if !order.nil? && order > 2147483647
        fail ArgumentError, 'invalid value for "order", must be smaller than or equal to 2147483647.'
      end

      if !order.nil? && order < -2147483648
        fail ArgumentError, 'invalid value for "order", must be greater than or equal to -2147483648.'
      end

      @order = order
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        content == other.content &&
        description == other.description &&
        project_id == other.project_id &&
        section_id == other.section_id &&
        parent_id == other.parent_id &&
        order == other.order &&
        labels == other.labels &&
        priority == other.priority &&
        assignee_id == other.assignee_id &&
        due_string == other.due_string &&
        due_date == other.due_date &&
        due_datetime == other.due_datetime &&
        due_lang == other.due_lang &&
        duration == other.duration &&
        duration_unit == other.duration_unit &&
        deadline_date == other.deadline_date &&
        deadline_lang == other.deadline_lang
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [content, description, project_id, section_id, parent_id, order, labels, priority, assignee_id, due_string, due_date, due_datetime, due_lang, duration, duration_unit, deadline_date, deadline_lang].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = Todoist.const_get(type)
        (klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of)) ? klass.build(value) : klass.build_from_hash(value)
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
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
        value.compact.map { |v| _to_hash(v) }
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
