# frozen_string_literal: true

module Wavix
  module Types
    # Text header of a new WhatsApp template. Requires `text`. Consumed by `whatsapp_templates_create`.
    class WhatsAppTemplateTextHeaderComponentRequest < Internal::Types::Model
      field :type, -> { Wavix::Types::WhatsAppTemplateTextHeaderComponentRequestType }, optional: false, nullable: false

      field :text, -> { String }, optional: false, nullable: false

      field :example, -> { Wavix::Types::WhatsAppTemplateTextHeaderComponentRequestExample }, optional: true, nullable: false
    end
  end
end
