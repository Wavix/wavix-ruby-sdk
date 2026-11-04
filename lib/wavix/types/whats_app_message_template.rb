# frozen_string_literal: true

module Wavix
  module Types
    # The template that a WhatsApp message was sent with. Returned in `template` by `whatsapp_messages_send`.
    class WhatsAppMessageTemplate < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :language, -> { String }, optional: false, nullable: false
    end
  end
end
