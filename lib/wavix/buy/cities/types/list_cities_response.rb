# frozen_string_literal: true

module Wavix
  module Buy
    module Cities
      module Types
        class ListCitiesResponse < Internal::Types::Model
          field :cities, -> { Internal::Types::Array[Wavix::Types::City] }, optional: false, nullable: false
        end
      end
    end
  end
end
