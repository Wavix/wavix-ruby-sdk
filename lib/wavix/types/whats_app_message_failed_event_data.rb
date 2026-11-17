# frozen_string_literal: true

module Wavix
  module Types
    # Data of a `whatsapp.message.failed` event. It identifies the message and says why it wasn't delivered.
    class WhatsAppMessageFailedEventData < Internal::Types::Model
      field :message_uuid, -> { String }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :template, -> { Wavix::Types::WhatsAppMessageTemplate }, optional: false, nullable: true

      field :status, -> { Wavix::Types::WhatsAppMessageFailedEventDataStatus }, optional: false, nullable: false

      field :error, -> { Wavix::Types::WhatsAppMessageError }, optional: false, nullable: false
    end
  end
end
