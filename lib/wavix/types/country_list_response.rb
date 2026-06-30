# frozen_string_literal: true

module Wavix
  module Types
    class CountryListResponse < Internal::Types::Model
      field :countries, -> { Internal::Types::Array[Wavix::Types::Country] }, optional: false, nullable: false
    end
  end
end
