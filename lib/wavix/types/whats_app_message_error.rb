# frozen_string_literal: true

module Wavix
  module Types
    # Why a message you sent wasn't delivered. Returned in `whatsapp.message.failed` events and when you retrieve or
    # list WhatsApp messages. Wavix retries temporary failures itself, so you get an error only after Wavix stops
    # retrying.
    class WhatsAppMessageError < Internal::Types::Model
      field :code, -> { Wavix::Types::WhatsAppMessageErrorCode }, optional: false, nullable: false

      field :subcode, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :action, -> { Wavix::Types::WhatsAppMessageErrorAction }, optional: false, nullable: false

      field :docs_url, -> { String }, optional: false, nullable: false
    end
  end
end
