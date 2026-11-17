# frozen_string_literal: true

module Wavix
  module Types
    # Event Wavix posts to your webhook of the `senders` group: a change to the status or quality rating of one of your
    # senders, or a test event. The `type` field decides the shape of `data`. Wavix can add event types, so ignore a
    # `type` you don't recognize.
    class WhatsAppSendersGroupEvent < Internal::Types::Model
      extend Wavix::Internal::Types::Union

      discriminant :type

      member -> { Wavix::Types::WhatsAppSenderConnectedEvent }, key: "WHATSAPP_SENDER_CONNECTED"

      member -> { Wavix::Types::WhatsAppSenderRestrictedEvent }, key: "WHATSAPP_SENDER_RESTRICTED"

      member -> { Wavix::Types::WhatsAppSenderFlaggedEvent }, key: "WHATSAPP_SENDER_FLAGGED"

      member -> { Wavix::Types::WhatsAppSenderBannedEvent }, key: "WHATSAPP_SENDER_BANNED"

      member -> { Wavix::Types::WhatsAppSenderDisconnectedEvent }, key: "WHATSAPP_SENDER_DISCONNECTED"

      member -> { Wavix::Types::WhatsAppSenderQualityChangedEvent }, key: "WHATSAPP_SENDER_QUALITY_CHANGED"

      member -> { Wavix::Types::WhatsAppSenderUpdatedEvent }, key: "WHATSAPP_SENDER_UPDATED"

      member -> { Wavix::Types::WhatsAppWebhookTestEvent }, key: "TEST"
    end
  end
end
