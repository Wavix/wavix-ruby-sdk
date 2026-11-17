# frozen_string_literal: true

module Wavix
  module Types
    # A group of items in a list. Consumed in `content.list.sections` of [Send a WhatsApp
    # message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message).
    class WhatsAppSendListSection < Internal::Types::Model
      field :title, -> { String }, optional: true, nullable: false

      field :items, -> { Internal::Types::Array[Wavix::Types::WhatsAppSendListRow] }, optional: false, nullable: false
    end
  end
end
