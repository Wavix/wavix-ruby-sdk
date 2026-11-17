# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message. Returned in `content` of a `whatsapp.message.received` event. The `type` field
    # decides which other field holds the content. Wavix can add content types, so ignore a message whose `type` you
    # don't recognize. Possible values:
    #
    # - `text` — Text.
    # - `image` — An image, with an optional caption.
    # - `video` — A video, with an optional caption.
    # - `audio` — An audio file or a voice note.
    # - `document` — A document, with its file name and an optional caption.
    # - `sticker` — A sticker.
    # - `location` — A location.
    # - `contacts` — One or more contact cards.
    # - `reaction` — An emoji reaction to an earlier message, or the removal of one.
    # - `button_reply` — A tap on a quick reply button of a message you sent.
    # - `list_reply` — An item picked from a list in a message you sent.
    # - `flow_response` — The response to a WhatsApp Flow the contact completed.
    class WhatsAppInboundContent < Internal::Types::Model
      extend Wavix::Internal::Types::Union

      discriminant :type

      member -> { Wavix::Types::WhatsAppInboundTextContent }, key: "TEXT"

      member -> { Wavix::Types::WhatsAppInboundImageContent }, key: "IMAGE"

      member -> { Wavix::Types::WhatsAppInboundVideoContent }, key: "VIDEO"

      member -> { Wavix::Types::WhatsAppInboundAudioContent }, key: "AUDIO"

      member -> { Wavix::Types::WhatsAppInboundDocumentContent }, key: "DOCUMENT"

      member -> { Wavix::Types::WhatsAppInboundStickerContent }, key: "STICKER"

      member -> { Wavix::Types::WhatsAppInboundLocationContent }, key: "LOCATION"

      member -> { Wavix::Types::WhatsAppInboundContactsContent }, key: "CONTACTS"

      member -> { Wavix::Types::WhatsAppInboundReactionContent }, key: "REACTION"

      member -> { Wavix::Types::WhatsAppInboundButtonReplyContent }, key: "BUTTON_REPLY"

      member -> { Wavix::Types::WhatsAppInboundListReplyContent }, key: "LIST_REPLY"

      member -> { Wavix::Types::WhatsAppInboundFlowResponseContent }, key: "FLOW_RESPONSE"
    end
  end
end
