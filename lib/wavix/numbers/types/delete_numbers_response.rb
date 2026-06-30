# frozen_string_literal: true

module Wavix
  module Numbers
    module Types
      class DeleteNumbersResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
