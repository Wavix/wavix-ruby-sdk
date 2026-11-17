# frozen_string_literal: true

module Wavix
  module Types
    # Fields to update on a WhatsApp webhook. Consumed by [Update a WhatsApp
    # webhook](https://docs.wavix.com/api-reference/whatsapp/update-a-whatsapp-webhook). Specify at least one field;
    # fields you omit keep their values.
    class WhatsAppWebhookUpdateRequest < Internal::Types::Model
      field :url, -> { String }, optional: true, nullable: false

      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
