# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppMessageStatus
      extend Wavix::Internal::Types::Enum

      SENT = "sent"
      DELIVERED = "delivered"
      READ = "read"
      UNDELIVERED = "undelivered"
      EXPIRED = "expired"
      REJECTED = "rejected"
      UNKNOWN = "unknown"
    end
  end
end
