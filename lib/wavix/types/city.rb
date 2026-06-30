# frozen_string_literal: true

module Wavix
  module Types
    class City < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :area_code, -> { Integer }, optional: false, nullable: false
    end
  end
end
