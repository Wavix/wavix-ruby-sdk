# frozen_string_literal: true

module Wavix
  module Types
    class PhoneLookupDetails < Internal::Types::Model
      field :number_type, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :current_carrier, -> { String }, optional: false, nullable: false
    end
  end
end
