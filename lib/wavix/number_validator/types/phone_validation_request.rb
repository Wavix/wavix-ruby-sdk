# frozen_string_literal: true

module Wavix
  module NumberValidator
    module Types
      class PhoneValidationRequest < Internal::Types::Model
        field :phone_numbers, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :type, -> { Wavix::Types::PhoneNumberValidationType }, optional: false, nullable: false

        field :async, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :force, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
