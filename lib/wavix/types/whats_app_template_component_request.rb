# frozen_string_literal: true

module Wavix
  module Types
    # A header, body, footer, or buttons component of a new WhatsApp template. Consumed by `whatsapp_templates_create`.
    # The `type` field selects the variant, and a `header` component is further selected by `format`.
    class WhatsAppTemplateComponentRequest < Internal::Types::Model
      extend Wavix::Internal::Types::Union

      discriminant :type

      member -> { Wavix::Types::WhatsAppTemplateHeaderComponentRequest }, key: "HEADER"

      member -> { Wavix::Types::WhatsAppTemplateBodyComponentRequest }, key: "BODY"

      member -> { Wavix::Types::WhatsAppTemplateFooterComponentRequest }, key: "FOOTER"

      member -> { Wavix::Types::WhatsAppTemplateButtonsComponentRequest }, key: "BUTTONS"
    end
  end
end
