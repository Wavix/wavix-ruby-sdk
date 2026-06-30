# frozen_string_literal: true

module Wavix
  module NumberValidator
    module Types
      class GetNumberValidatorRequest < Internal::Types::Model
        field :phone_number, -> { String }, optional: false, nullable: false

        field :type, -> { Wavix::Types::PhoneNumberValidationType }, optional: false, nullable: false
      end
    end
  end
end
