# frozen_string_literal: true

module Wavix
  module Types
    module CallStatusWebhookDirection
      extend Wavix::Internal::Types::Enum

      INBOUND = "inbound"
      OUTBOUND = "outbound"
    end
  end
end
