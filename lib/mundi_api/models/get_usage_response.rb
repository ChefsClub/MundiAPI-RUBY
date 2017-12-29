# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Response object for getting a usage
  class GetUsageResponse < BaseModel
    # Id
    # @return [String]
    attr_accessor :id

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # Description
    # @return [String]
    attr_accessor :description

    # Used at
    # @return [DateTime]
    attr_accessor :used_at

    # Creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Status
    # @return [String]
    attr_accessor :status

    # Subscription item
    # @return [GetSubscriptionItemResponse]
    attr_accessor :subscription_item

    # Subscription item
    # @return [DateTime]
    attr_accessor :deleted_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['quantity'] = 'quantity'
      @_hash['description'] = 'description'
      @_hash['used_at'] = 'used_at'
      @_hash['created_at'] = 'created_at'
      @_hash['status'] = 'status'
      @_hash['subscription_item'] = 'subscription_item'
      @_hash['deleted_at'] = 'deleted_at'
      @_hash
    end

    def initialize(id = nil,
                   quantity = nil,
                   description = nil,
                   used_at = nil,
                   created_at = nil,
                   status = nil,
                   subscription_item = nil,
                   deleted_at = nil)
      @id = id
      @quantity = quantity
      @description = description
      @used_at = used_at
      @created_at = created_at
      @status = status
      @subscription_item = subscription_item
      @deleted_at = deleted_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      quantity = hash['quantity']
      description = hash['description']
      used_at = DateTime.rfc3339(hash['used_at']) if hash['used_at']
      created_at = DateTime.rfc3339(hash['created_at']) if hash['created_at']
      status = hash['status']
      subscription_item = GetSubscriptionItemResponse.from_hash(hash['subscription_item']) if
        hash['subscription_item']
      deleted_at = DateTime.rfc3339(hash['deleted_at']) if hash['deleted_at']

      # Create object from extracted values.
      GetUsageResponse.new(id,
                           quantity,
                           description,
                           used_at,
                           created_at,
                           status,
                           subscription_item,
                           deleted_at)
    end
  end
end
