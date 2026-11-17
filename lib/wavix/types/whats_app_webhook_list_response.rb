# frozen_string_literal: true

module Wavix
  module Types
    # The WhatsApp webhooks of your account, returned when you list them.
    class WhatsAppWebhookListResponse < Internal::Types::Model
      field :webhooks, -> { Internal::Types::Array[Wavix::Types::WhatsAppWebhook] }, optional: false, nullable: false
    end
  end
end
