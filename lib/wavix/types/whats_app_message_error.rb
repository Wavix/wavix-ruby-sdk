# frozen_string_literal: true

module Wavix
  module Types
    # Why a message you sent wasn't delivered. Returned in `whatsapp.message.failed` events and by [Retrieve a WhatsApp
    # message](https://docs.wavix.com/api-reference/whatsapp/retrieve-a-whatsapp-message). The code and explanation come
    # from a fixed Wavix list and don't depend on the provider.
    class WhatsAppMessageError < Internal::Types::Model
      field :code, -> { Wavix::Types::WhatsAppMessageErrorCode }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :docs_url, -> { String }, optional: false, nullable: false
    end
  end
end
