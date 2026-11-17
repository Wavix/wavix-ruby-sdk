# frozen_string_literal: true

module Wavix
  module Types
    # Attributes of a WhatsApp message to send. Send exactly one of `template` and `content`. Use `content` only while
    # the 24-hour service window of the recipient is open. Consumed by `whatsapp_messages_send`.
    class WhatsAppMessageSendRequest < Internal::Types::Model
      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :idempotency_key, -> { String }, optional: true, nullable: false

      field :template, -> { Wavix::Types::WhatsAppSendTemplate }, optional: true, nullable: false

      field :content, -> { Wavix::Types::WhatsAppSendContent }, optional: true, nullable: false
    end
  end
end
