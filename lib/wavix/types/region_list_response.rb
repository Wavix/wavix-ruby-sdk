# frozen_string_literal: true

module Wavix
  module Types
    class RegionListResponse < Internal::Types::Model
      field :regions, -> { Internal::Types::Array[Wavix::Types::Region] }, optional: false, nullable: false
    end
  end
end
