# frozen_string_literal: true

module Wavix
  module Types
    # A text with a button that opens a list of items. Consumed in `content.list` of [Send a WhatsApp
    # message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message). When the recipient picks an item,
    # Wavix sends a `whatsapp.message.received` event with the item's `id` in `content.list_reply`.
    class WhatsAppSendList < Internal::Types::Model
      field :header, -> { String }, optional: true, nullable: false

      field :body, -> { String }, optional: false, nullable: false

      field :footer, -> { String }, optional: true, nullable: false

      field :button_text, -> { String }, optional: false, nullable: false

      field :sections, -> { Internal::Types::Array[Wavix::Types::WhatsAppSendListSection] }, optional: false, nullable: false
    end
  end
end
