# frozen_string_literal: true

module Wavix
  module Types
    # Header of a new WhatsApp template. Consumed by `whatsapp_templates_create`. The `format` field selects the
    # variant.
    class WhatsAppTemplateHeaderComponentRequest < Internal::Types::Model
      extend Wavix::Internal::Types::Union

      discriminant :format

      member -> { Wavix::Types::WhatsAppTemplateTextHeaderComponentRequest }, key: "TEXT"

      member -> { Wavix::Types::WhatsAppTemplateMediaHeaderComponentRequest }, key: "IMAGE"

      member -> { Wavix::Types::WhatsAppTemplateMediaHeaderComponentRequest }, key: "VIDEO"

      member -> { Wavix::Types::WhatsAppTemplateMediaHeaderComponentRequest }, key: "DOCUMENT"

      member -> { Wavix::Types::WhatsAppTemplateLocationHeaderComponentRequest }, key: "LOCATION"
    end
  end
end
