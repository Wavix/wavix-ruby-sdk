# frozen_string_literal: true

module Wavix
  module Types
    # Footer of a new WhatsApp template. Consumed by `whatsapp_templates_create`.
    class WhatsAppTemplateFooterComponentRequest < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
