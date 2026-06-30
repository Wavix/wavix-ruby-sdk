# frozen_string_literal: true

module Wavix
  module Types
    class ProfileResponseDefaultDestinationsItem < Internal::Types::Model
      field :transport, -> { String }, optional: true, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
