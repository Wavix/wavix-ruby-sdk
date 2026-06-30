# frozen_string_literal: true

module Wavix
  module Buy
    module Regions
      module Types
        class ListRegionsResponse < Internal::Types::Model
          field :regions, -> { Internal::Types::Array[Wavix::Types::Region] }, optional: false, nullable: false
        end
      end
    end
  end
end
