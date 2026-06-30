# frozen_string_literal: true

module Wavix
  module Types
    # An account financial statement
    class Invoice < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :amount, -> { String }, optional: false, nullable: false

      field :from_date, -> { String }, optional: false, nullable: false

      field :to_date, -> { String }, optional: false, nullable: false
    end
  end
end
