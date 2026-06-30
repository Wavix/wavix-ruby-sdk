# frozen_string_literal: true

module Wavix
  module Cart
    module Types
      class RemoveCartResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
