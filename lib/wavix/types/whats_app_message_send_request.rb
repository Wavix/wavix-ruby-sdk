# frozen_string_literal: true

module Wavix
  module Types
    # Attributes of a WhatsApp template message to send. Consumed by `whatsapp_messages_send`.
    class WhatsAppMessageSendRequest < Internal::Types::Model
      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :idempotency_key, -> { String }, optional: true, nullable: false

      field :template, -> { Wavix::Types::WhatsAppSendTemplate }, optional: false, nullable: false
    end
  end
end
