# frozen_string_literal: true

module Wavix
  module Types
    module MessageDeliveryStatus
      extend Wavix::Internal::Types::Enum

      ACCEPTED = "accepted"
      PENDING = "pending"
      SENT = "sent"
      DELIVERED = "delivered"
      UNDELIVERED = "undelivered"
      EXPIRED = "expired"
      REJECTED = "rejected"
      DLR_EXPIRED = "dlr_expired"
    end
  end
end
