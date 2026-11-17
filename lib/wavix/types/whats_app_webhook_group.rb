# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppWebhookGroup
      extend Wavix::Internal::Types::Enum

      MESSAGES = "messages"
      TEMPLATES = "templates"
      SENDERS = "senders"
    end
  end
end
