# frozen_string_literal: true

module Wavix
  module Types
    class UnprocessableEntityErrorBody < Internal::Types::Model
      field :error, -> { String }, optional: true, nullable: false

      field :error_dids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
