# frozen_string_literal: true

module Wavix
  module Types
    class CountryHasNoRegionsErrorResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false
    end
  end
end
