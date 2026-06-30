# frozen_string_literal: true

module Wavix
  module Types
    class CityListResponse < Internal::Types::Model
      field :cities, -> { Internal::Types::Array[Wavix::Types::City] }, optional: false, nullable: false
    end
  end
end
