# frozen_string_literal: true

module Wavix
  module Types
    # Buttons component of a new WhatsApp template. Consumed by `whatsapp_templates_create`.
    class WhatsAppTemplateButtonsComponentRequest < Internal::Types::Model
      field :buttons, -> { Internal::Types::Array[Wavix::Types::WhatsAppTemplateButtonRequest] }, optional: false, nullable: false
    end
  end
end
