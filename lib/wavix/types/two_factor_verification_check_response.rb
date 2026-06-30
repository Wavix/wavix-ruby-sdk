# frozen_string_literal: true

module Wavix
  module Types
    class TwoFactorVerificationCheckResponse < Internal::Types::Model
      field :is_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
