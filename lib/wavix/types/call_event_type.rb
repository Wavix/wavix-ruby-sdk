# frozen_string_literal: true

module Wavix
  module Types
    module CallEventType
      extend Wavix::Internal::Types::Enum

      CALL_SETUP = "call_setup"
      RINGING = "ringing"
      EARLY_MEDIA = "early_media"
      ANSWERED = "answered"
      COMPLETED = "completed"
      BUSY = "busy"
      CANCELLED = "cancelled"
      REJECTED = "rejected"
      ON_CALL_EVENT = "on_call_event"
    end
  end
end
