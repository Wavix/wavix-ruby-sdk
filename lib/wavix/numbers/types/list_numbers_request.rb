# frozen_string_literal: true

module Wavix
  module Numbers
    module Types
      class ListNumbersRequest < Internal::Types::Model
        field :city_id, -> { Integer }, optional: true, nullable: false

        field :search, -> { String }, optional: true, nullable: false

        field :label, -> { String }, optional: true, nullable: false

        field :label_present, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
