# frozen_string_literal: true

module Wavix
  module Types
    # Content of a message sent without a template, inside the 24-hour service window. Consumed in `content` of [Send a
    # WhatsApp message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message). The `type` field decides
    # which other field holds the content. Possible values:
    #
    # - `text` — Text.
    # - `image` — An image, with an optional caption.
    # - `video` — A video, with an optional caption.
    # - `audio` — An audio file.
    # - `document` — A document, with an optional file name and caption.
    # - `buttons` — A text with up to 3 reply buttons.
    # - `list` — A text with a button that opens a list of up to 10 items.
    class WhatsAppSendContent < Internal::Types::Model
      extend Wavix::Internal::Types::Union

      discriminant :type

      member -> { Wavix::Types::WhatsAppSendTextContent }, key: "TEXT"

      member -> { Wavix::Types::WhatsAppSendImageContent }, key: "IMAGE"

      member -> { Wavix::Types::WhatsAppSendVideoContent }, key: "VIDEO"

      member -> { Wavix::Types::WhatsAppSendAudioContent }, key: "AUDIO"

      member -> { Wavix::Types::WhatsAppSendDocumentContent }, key: "DOCUMENT"

      member -> { Wavix::Types::WhatsAppSendButtonsContent }, key: "BUTTONS"

      member -> { Wavix::Types::WhatsAppSendListContent }, key: "LIST"
    end
  end
end
