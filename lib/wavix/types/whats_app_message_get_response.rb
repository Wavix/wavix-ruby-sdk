# frozen_string_literal: true

module Wavix
  module Types
    # Returned by `whatsapp_messages_get`.
    class WhatsAppMessageGetResponse < Internal::Types::Model
      field :message, -> { Wavix::Types::WhatsAppMessageListItem }, optional: false, nullable: false
    end
  end
end
