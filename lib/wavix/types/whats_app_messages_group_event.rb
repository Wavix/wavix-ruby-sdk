# frozen_string_literal: true

module Wavix
  module Types
    # Event Wavix posts to your webhook of the `messages` group: a received message, the status of a message you sent, a
    # contact's marketing preference, or a test event. The `type` field decides the shape of `data`. Wavix can add event
    # types, so ignore a `type` you don't recognize.
    class WhatsAppMessagesGroupEvent < Internal::Types::Model
      extend Wavix::Internal::Types::Union

      discriminant :type

      member -> { Wavix::Types::WhatsAppMessageReceivedEvent }, key: "WHATSAPP_MESSAGE_RECEIVED"

      member -> { Wavix::Types::WhatsAppMessageSentEvent }, key: "WHATSAPP_MESSAGE_SENT"

      member -> { Wavix::Types::WhatsAppMessageDeliveredEvent }, key: "WHATSAPP_MESSAGE_DELIVERED"

      member -> { Wavix::Types::WhatsAppMessageReadEvent }, key: "WHATSAPP_MESSAGE_READ"

      member -> { Wavix::Types::WhatsAppMessageFailedEvent }, key: "WHATSAPP_MESSAGE_FAILED"

      member -> { Wavix::Types::WhatsAppContactMarketingStoppedEvent }, key: "WHATSAPP_CONTACT_MARKETING_STOPPED"

      member -> { Wavix::Types::WhatsAppContactMarketingResumedEvent }, key: "WHATSAPP_CONTACT_MARKETING_RESUMED"

      member -> { Wavix::Types::WhatsAppWebhookTestEvent }, key: "TEST"
    end
  end
end
