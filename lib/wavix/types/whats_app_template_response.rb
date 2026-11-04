# frozen_string_literal: true

module Wavix
  module Types
    # Returned by `whatsapp_templates_get` and `whatsapp_templates_create`.
    class WhatsAppTemplateResponse < Internal::Types::Model
      field :template, -> { Wavix::Types::WhatsAppTemplate }, optional: false, nullable: false
    end
  end
end
