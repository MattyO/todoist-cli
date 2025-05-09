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
  class MemberView
    attr_accessor :user_id

    attr_accessor :workspace_id

    attr_accessor :user_email

    attr_accessor :full_name

    attr_accessor :timezone

    attr_accessor :role

    attr_accessor :image_id

    attr_accessor :is_deleted

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
        user_id: :user_id,
        workspace_id: :workspace_id,
        user_email: :user_email,
        full_name: :full_name,
        timezone: :timezone,
        role: :role,
        image_id: :image_id,
        is_deleted: :is_deleted
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
        user_id: :String,
        workspace_id: :String,
        user_email: :String,
        full_name: :String,
        timezone: :String,
        role: :WorkspaceRole,
        image_id: :String,
        is_deleted: :Boolean
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :image_id
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if !attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `Todoist::MemberView` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !acceptable_attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Todoist::MemberView`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      self.user_id = if attributes.key?(:user_id)
        attributes[:user_id]
      end

      self.workspace_id = if attributes.key?(:workspace_id)
        attributes[:workspace_id]
      end

      self.user_email = if attributes.key?(:user_email)
        attributes[:user_email]
      end

      self.full_name = if attributes.key?(:full_name)
        attributes[:full_name]
      end

      self.timezone = if attributes.key?(:timezone)
        attributes[:timezone]
      end

      self.role = if attributes.key?(:role)
        attributes[:role]
      end

      if attributes.key?(:image_id)
        self.image_id = attributes[:image_id]
      end

      self.is_deleted = if attributes.key?(:is_deleted)
        attributes[:is_deleted]
      else
        false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn "[DEPRECATED] the `list_invalid_properties` method is obsolete"
      invalid_properties = []
      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @workspace_id.nil?
        invalid_properties.push('invalid value for "workspace_id", workspace_id cannot be nil.')
      end

      if @user_email.nil?
        invalid_properties.push('invalid value for "user_email", user_email cannot be nil.')
      end

      if @full_name.nil?
        invalid_properties.push('invalid value for "full_name", full_name cannot be nil.')
      end

      if @timezone.nil?
        invalid_properties.push('invalid value for "timezone", timezone cannot be nil.')
      end

      if @role.nil?
        invalid_properties.push('invalid value for "role", role cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn "[DEPRECATED] the `valid?` method is obsolete"
      return false if @user_id.nil?
      return false if @workspace_id.nil?
      return false if @user_email.nil?
      return false if @full_name.nil?
      return false if @timezone.nil?
      return false if @role.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] user_id Value to be assigned
    def user_id=(user_id)
      if user_id.nil?
        fail ArgumentError, "user_id cannot be nil"
      end

      @user_id = user_id
    end

    # Custom attribute writer method with validation
    # @param [Object] workspace_id Value to be assigned
    def workspace_id=(workspace_id)
      if workspace_id.nil?
        fail ArgumentError, "workspace_id cannot be nil"
      end

      @workspace_id = workspace_id
    end

    # Custom attribute writer method with validation
    # @param [Object] user_email Value to be assigned
    def user_email=(user_email)
      if user_email.nil?
        fail ArgumentError, "user_email cannot be nil"
      end

      @user_email = user_email
    end

    # Custom attribute writer method with validation
    # @param [Object] full_name Value to be assigned
    def full_name=(full_name)
      if full_name.nil?
        fail ArgumentError, "full_name cannot be nil"
      end

      @full_name = full_name
    end

    # Custom attribute writer method with validation
    # @param [Object] timezone Value to be assigned
    def timezone=(timezone)
      if timezone.nil?
        fail ArgumentError, "timezone cannot be nil"
      end

      @timezone = timezone
    end

    # Custom attribute writer method with validation
    # @param [Object] role Value to be assigned
    def role=(role)
      if role.nil?
        fail ArgumentError, "role cannot be nil"
      end

      @role = role
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        user_id == other.user_id &&
        workspace_id == other.workspace_id &&
        user_email == other.user_email &&
        full_name == other.full_name &&
        timezone == other.timezone &&
        role == other.role &&
        image_id == other.image_id &&
        is_deleted == other.is_deleted
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [user_id, workspace_id, user_email, full_name, timezone, role, image_id, is_deleted].hash
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
