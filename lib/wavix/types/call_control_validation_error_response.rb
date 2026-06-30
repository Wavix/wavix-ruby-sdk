# frozen_string_literal: true

module Wavix
  module Types
    class CallControlValidationErrorResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :errors, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
    end
  end
end
