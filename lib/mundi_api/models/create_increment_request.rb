# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Request for creating a new increment
  class CreateIncrementRequest < BaseModel
    # The increment value
    # @return [Float]
    attr_accessor :value

    # Increment type. Can be either flat or percentage.
    # @return [String]
    attr_accessor :increment_type

    # The item where the increment will be applied
    # @return [String]
    attr_accessor :item_id

    # Number of cycles that the increment will be applied
    # @return [Integer]
    attr_accessor :cycles

    # Description
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['value'] = 'value'
      @_hash['increment_type'] = 'increment_type'
      @_hash['item_id'] = 'item_id'
      @_hash['cycles'] = 'cycles'
      @_hash['description'] = 'description'
      @_hash
    end

    def initialize(value = nil,
                   increment_type = nil,
                   item_id = nil,
                   cycles = nil,
                   description = nil)
      @value = value
      @increment_type = increment_type
      @item_id = item_id
      @cycles = cycles
      @description = description
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      value = hash['value']
      increment_type = hash['increment_type']
      item_id = hash['item_id']
      cycles = hash['cycles']
      description = hash['description']

      # Create object from extracted values.
      CreateIncrementRequest.new(value,
                                 increment_type,
                                 item_id,
                                 cycles,
                                 description)
    end
  end
end
