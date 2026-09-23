# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppProblemErrorClass
      extend Wavix::Internal::Types::Enum

      PERMANENT = "permanent"
      RETRIABLE = "retriable"
      RATE_LIMITED = "rate_limited"
      INVALID_TEMPLATE = "invalid_template"
    end
  end
end
