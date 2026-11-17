# frozen_string_literal: true

module Wavix
  module Types
    # A media file in a received message. Returned in the `image`, `video`, `audio`, `document`, or `sticker` field of
    # the content of a `whatsapp.message.received` event.
    class WhatsAppInboundMedia < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :mime_type, -> { String }, optional: false, nullable: false

      field :caption, -> { String }, optional: false, nullable: true

      field :filename, -> { String }, optional: false, nullable: true
    end
  end
end
