# frozen_string_literal: true

module Wavix
  module Types
    # Data of a `whatsapp.message.sent`, `whatsapp.message.delivered`, or `whatsapp.message.read` event. It identifies
    # the message; the event type carries its status.
    class WhatsAppMessageStatusEventData < Internal::Types::Model
      field :message_uuid, -> { String }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :template, -> { Wavix::Types::WhatsAppMessageTemplate }, optional: false, nullable: true
    end
  end
end
