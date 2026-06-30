# frozen_string_literal: true

module Wavix
  module Types
    # Phone number available for purchase.
    class AvailableNumber < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :activation_fee, -> { String }, optional: false, nullable: false

      field :monthly_fee, -> { String }, optional: false, nullable: false

      field :per_min, -> { String }, optional: false, nullable: false

      field :channels, -> { String }, optional: false, nullable: false

      field :city, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :country_short_name, -> { String }, optional: false, nullable: false

      field :cnam, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :free_min, -> { Integer }, optional: false, nullable: false

      field :number, -> { String }, optional: false, nullable: false

      field :require_docs, -> { Internal::Types::Array[Integer] }, optional: false, nullable: false

      field :sms_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :sms_price, -> { Integer }, optional: false, nullable: false

      field :domestic_cli, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
