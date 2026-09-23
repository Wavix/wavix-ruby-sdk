# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppSenderStatus
      extend Wavix::Internal::Types::Enum

      BANNED = "banned"
      CONNECTED = "connected"
      DELETED = "deleted"
      DISCONNECTED = "disconnected"
      FLAGGED = "flagged"
      MIGRATED = "migrated"
      PENDING = "pending"
      RATE_LIMITED = "rate_limited"
      RESTRICTED = "restricted"
      UNKNOWN = "unknown"
      UNVERIFIED = "unverified"
    end
  end
end
