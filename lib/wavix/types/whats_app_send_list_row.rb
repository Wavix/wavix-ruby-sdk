# frozen_string_literal: true

module Wavix
  module Types
    # An item in a list. Consumed in `content.list.sections.items` of [Send a WhatsApp
    # message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message).
    class WhatsAppSendListRow < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: true, nullable: false
    end
  end
end
