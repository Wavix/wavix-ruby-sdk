# frozen_string_literal: true

module Wavix
  module Types
    # Content of a WhatsApp message that one of your WhatsApp senders received. Returned in `content` by [List WhatsApp
    # messages](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-messages) and [Retrieve a WhatsApp
    # message](https://docs.wavix.com/api-reference/whatsapp/retrieve-a-whatsapp-message).
    class WhatsAppInboundMessageContent < Internal::Types::Model
      field :type, -> { Wavix::Types::WhatsAppInboundMessageContentType }, optional: false, nullable: false

      field :text, -> { String }, optional: true, nullable: false

      field :media_id, -> { String }, optional: true, nullable: false

      field :media_url, -> { String }, optional: true, nullable: false

      field :mime_type, -> { String }, optional: true, nullable: false
    end
  end
end
