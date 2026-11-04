# frozen_string_literal: true

module Wavix
  module Types
    # A button in the `buttons` component of a new WhatsApp template. Consumed by `whatsapp_templates_create`. The
    # `type` field selects the variant.
    class WhatsAppTemplateButtonRequest < Internal::Types::Model
      extend Wavix::Internal::Types::Union

      discriminant :type

      member -> { Wavix::Types::WhatsAppTemplateQuickReplyButtonRequest }, key: "QUICK_REPLY"

      member -> { Wavix::Types::WhatsAppTemplateURLButtonRequest }, key: "URL"

      member -> { Wavix::Types::WhatsAppTemplatePhoneNumberButtonRequest }, key: "PHONE_NUMBER"

      member -> { Wavix::Types::WhatsAppTemplateCopyCodeButtonRequest }, key: "COPY_CODE"
    end
  end
end
