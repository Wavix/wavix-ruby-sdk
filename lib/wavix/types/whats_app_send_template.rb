# frozen_string_literal: true

module Wavix
  module Types
    # The template to send and the values for its dynamic parts. Consumed in `template` by `whatsapp_messages_send`.
    class WhatsAppSendTemplate < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :language, -> { String }, optional: false, nullable: false

      field :placeholders, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :header, -> { Wavix::Types::WhatsAppSendTemplateHeader }, optional: true, nullable: false

      field :buttons, -> { Internal::Types::Array[Wavix::Types::WhatsAppSendTemplateButton] }, optional: true, nullable: false
    end
  end
end
