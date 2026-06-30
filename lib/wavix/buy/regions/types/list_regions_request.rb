# frozen_string_literal: true

module Wavix
  module Buy
    module Regions
      module Types
        class ListRegionsRequest < Internal::Types::Model
          field :country_id, -> { Integer }, optional: false, nullable: false

          field :text_enabled_only, -> { Internal::Types::Boolean }, optional: true, nullable: false
        end
      end
    end
  end
end
