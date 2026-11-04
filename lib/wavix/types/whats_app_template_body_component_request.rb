# frozen_string_literal: true

module Wavix
  module Types
    # Body of a new WhatsApp template. Required, exactly once. Consumed by `whatsapp_templates_create`.
    class WhatsAppTemplateBodyComponentRequest < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :example, -> { Wavix::Types::WhatsAppTemplateBodyComponentRequestExample }, optional: true, nullable: false
    end
  end
end
