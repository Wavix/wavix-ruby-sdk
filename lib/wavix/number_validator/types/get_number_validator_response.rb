# frozen_string_literal: true

module Wavix
  module NumberValidator
    module Types
      class GetNumberValidatorResponse < Internal::Types::Model
        field :phone_number, -> { String }, optional: false, nullable: false

        field :valid, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :country_code, -> { String }, optional: false, nullable: true

        field :e164format, -> { String }, optional: false, nullable: false, api_name: "e164_format"

        field :national_format, -> { String }, optional: false, nullable: false

        field :ported, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :mcc, -> { String }, optional: true, nullable: false

        field :mnc, -> { String }, optional: true, nullable: false

        field :number_type, -> { String }, optional: true, nullable: false

        field :carrier_name, -> { String }, optional: true, nullable: false

        field :risky_destination, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :unallocated_range, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :reachable, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :roaming, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :timezone, -> { String }, optional: true, nullable: false

        field :charge, -> { String }, optional: false, nullable: false

        field :error_code, -> { String }, optional: false, nullable: false
      end
    end
  end
end
