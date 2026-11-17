# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppInboundMessageContentType
      extend Wavix::Internal::Types::Enum

      TEXT = "text"
      IMAGE = "image"
      VIDEO = "video"
      DOCUMENT = "document"
      AUDIO = "audio"
      STICKER = "sticker"
      LOCATION = "location"
      CONTACTS = "contacts"
      REACTION = "reaction"
      BUTTON_REPLY = "button_reply"
      LIST_REPLY = "list_reply"
      FLOW_RESPONSE = "flow_response"
      UNSUPPORTED = "unsupported"
    end
  end
end
