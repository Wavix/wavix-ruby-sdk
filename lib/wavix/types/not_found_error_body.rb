# frozen_string_literal: true

module Wavix
  module Types
    class NotFoundErrorBody < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
