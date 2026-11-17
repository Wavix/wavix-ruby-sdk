# frozen_string_literal: true

module Wavix
  module Types
    # A media file to send. Consumed in the `image`, `video`, `audio`, or `document` field of `content` of [Send a
    # WhatsApp message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message).
    class WhatsAppSendMedia < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :caption, -> { String }, optional: true, nullable: false

      field :filename, -> { String }, optional: true, nullable: false
    end
  end
end
