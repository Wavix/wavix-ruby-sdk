# frozen_string_literal: true

module Wavix
  module Buy
    module Countries
      module Types
        class ListCountriesResponse < Internal::Types::Model
          field :countries, -> { Internal::Types::Array[Wavix::Types::Country] }, optional: false, nullable: false
        end
      end
    end
  end
end
