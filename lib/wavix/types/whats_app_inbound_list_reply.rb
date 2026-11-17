# frozen_string_literal: true

module Wavix
  module Types
    # An item picked from a list. Returned in `content.list_reply` of a `whatsapp.message.received` event.
    class WhatsAppInboundListReply < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true
    end
  end
end
