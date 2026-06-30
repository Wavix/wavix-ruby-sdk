# frozen_string_literal: true

module Wavix
  module Types
    class TwoFactorVerificationResendResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :channel, -> { String }, optional: false, nullable: false

      field :destination, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
