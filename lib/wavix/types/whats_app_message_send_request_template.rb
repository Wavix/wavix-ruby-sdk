# frozen_string_literal: true

module Wavix
  module Types
    class WhatsAppMessageSendRequestTemplate < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :language, -> { String }, optional: false, nullable: false

      field :placeholders, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :header, -> { Wavix::Types::WhatsAppMessageSendRequestTemplateHeader }, optional: true, nullable: false

      field :buttons, -> { Internal::Types::Array[Wavix::Types::WhatsAppMessageSendRequestTemplateButtonsItem] }, optional: true, nullable: false
    end
  end
end
