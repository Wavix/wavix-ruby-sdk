# frozen_string_literal: true

module Wavix
  module Types
    # Data of a `test` event. It names the webhook the event was sent to.
    class WhatsAppWebhookTestEventData < Internal::Types::Model
      field :webhook_id, -> { String }, optional: false, nullable: false
    end
  end
end
