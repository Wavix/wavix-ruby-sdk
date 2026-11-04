# frozen_string_literal: true

module Wavix
  module Types
    # Location header of a new WhatsApp template. Takes neither `text` nor `example`. Consumed by
    # `whatsapp_templates_create`.
    class WhatsAppTemplateLocationHeaderComponentRequest < Internal::Types::Model
      field :type, -> { Wavix::Types::WhatsAppTemplateLocationHeaderComponentRequestType }, optional: false, nullable: false
    end
  end
end
