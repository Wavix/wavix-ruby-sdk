# frozen_string_literal: true

module Wavix
  module Types
    class AccountLimits < Internal::Types::Model
      field :max_call_duration, -> { Integer }, optional: false, nullable: false

      field :max_sip_channels, -> { Integer }, optional: false, nullable: false

      field :max_call_rate, -> { String }, optional: false, nullable: false
    end
  end
end
