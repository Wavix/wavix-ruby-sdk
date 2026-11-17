# frozen_string_literal: true

module Wavix
  module Types
    # A single WhatsApp webhook, returned when you create or retrieve a webhook.
    class WhatsAppWebhookResponse < Internal::Types::Model
      field :webhook, -> { Wavix::Types::WhatsAppWebhook }, optional: false, nullable: false
    end
  end
end
