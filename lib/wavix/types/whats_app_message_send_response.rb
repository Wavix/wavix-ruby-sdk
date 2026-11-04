# frozen_string_literal: true

module Wavix
  module Types
    # Returned by `whatsapp_messages_send`.
    class WhatsAppMessageSendResponse < Internal::Types::Model
      field :message, -> { Wavix::Types::WhatsAppMessage }, optional: false, nullable: false
    end
  end
end
