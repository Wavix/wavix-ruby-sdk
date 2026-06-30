# frozen_string_literal: true

module Wavix
  module Types
    class Country < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :has_provinces_or_states, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
