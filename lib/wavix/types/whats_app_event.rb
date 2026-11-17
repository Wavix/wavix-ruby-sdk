# frozen_string_literal: true

module Wavix
  module Types
    # A WhatsApp event returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events). It has the same fields as the event
    # Wavix posts to your webhook, and `type` decides the shape of `data`.
    class WhatsAppEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
    end
  end
end
