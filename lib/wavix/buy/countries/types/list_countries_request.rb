# frozen_string_literal: true

module Wavix
  module Buy
    module Countries
      module Types
        class ListCountriesRequest < Internal::Types::Model
          field :text_enabled_only, -> { Internal::Types::Boolean }, optional: true, nullable: false
        end
      end
    end
  end
end
