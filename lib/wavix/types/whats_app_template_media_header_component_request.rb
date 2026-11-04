# frozen_string_literal: true

module Wavix
  module Types
    # Media header of a new WhatsApp template. Takes no `text`. Consumed by `whatsapp_templates_create`.
    class WhatsAppTemplateMediaHeaderComponentRequest < Internal::Types::Model
      field :type, -> { Wavix::Types::WhatsAppTemplateMediaHeaderComponentRequestType }, optional: false, nullable: false

      field :example, -> { Wavix::Types::WhatsAppTemplateMediaHeaderComponentRequestExample }, optional: true, nullable: false
    end
  end
end
