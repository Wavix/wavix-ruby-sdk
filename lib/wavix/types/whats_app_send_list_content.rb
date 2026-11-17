# frozen_string_literal: true

module Wavix
  module Types
    # Content of a message without a template that is a text with a list of items to pick from. Consumed in `content` of
    # [Send a WhatsApp message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message).
    class WhatsAppSendListContent < Internal::Types::Model
      field :list, -> { Wavix::Types::WhatsAppSendList }, optional: false, nullable: false
    end
  end
end
