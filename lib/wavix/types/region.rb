# frozen_string_literal: true

module Wavix
  module Types
    # State or province of the country, if applicable.
    class Region < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
