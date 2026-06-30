# frozen_string_literal: true

module Wavix
  module Types
    class TcrErrorMessage < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
