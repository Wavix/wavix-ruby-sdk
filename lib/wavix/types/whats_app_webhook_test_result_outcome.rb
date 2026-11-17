# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppWebhookTestResultOutcome
      extend Wavix::Internal::Types::Enum

      DELIVERED = "delivered"
      HTTP_ERROR = "http_error"
      TIMEOUT = "timeout"
      CONNECTION_ERROR = "connection_error"
      TLS_ERROR = "tls_error"
      BLOCKED = "blocked"
    end
  end
end
