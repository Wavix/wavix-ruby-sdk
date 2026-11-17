# frozen_string_literal: true

module Wavix
  module Types
    # Content of a message without a template that is a video. Consumed in `content` of [Send a WhatsApp
    # message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message).
    class WhatsAppSendVideoContent < Internal::Types::Model
      field :video, -> { Wavix::Types::WhatsAppSendMedia }, optional: false, nullable: false
    end
  end
end
