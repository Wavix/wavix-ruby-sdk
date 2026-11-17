# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppMessageFailedEventDataStatus
      extend Wavix::Internal::Types::Enum

      UNDELIVERED = "undelivered"
      EXPIRED = "expired"
      REJECTED = "rejected"
    end
  end
end
