# frozen_string_literal: true

module Wavix
  module Types
    class PhoneValidationBatchResultResponse < Internal::Types::Model
      field :status, -> { String }, optional: false, nullable: false

      field :pending, -> { Integer }, optional: false, nullable: false

      field :count, -> { Integer }, optional: false, nullable: false

      field :items, -> { Internal::Types::Array[Wavix::Types::PhoneValidationResultResponse] }, optional: false, nullable: false
    end
  end
end
