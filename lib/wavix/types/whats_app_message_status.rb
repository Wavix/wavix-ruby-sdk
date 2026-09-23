# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppMessageStatus
      extend Wavix::Internal::Types::Enum

      FAILED = "failed"
      SENT = "sent"
      DELIVERED = "delivered"
      UNDELIVERED = "undelivered"
      EXPIRED = "expired"
      REJECTED = "rejected"
      UNKNOWN = "unknown"
    end
  end
end
