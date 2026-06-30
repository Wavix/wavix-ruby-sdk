# frozen_string_literal: true

module Wavix
  module Numbers
    module Types
      class BulkUpdateNumbersResponse < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Wavix::Types::Number] }, optional: true, nullable: false
      end
    end
  end
end
