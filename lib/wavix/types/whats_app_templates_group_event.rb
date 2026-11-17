# frozen_string_literal: true

module Wavix
  module Types
    # Event Wavix posts to your webhook of the `templates` group: a change to the status, category, or quality rating of
    # one of your templates, or a test event. The `type` field decides the shape of `data`. Wavix can add event types,
    # so ignore a `type` you don't recognize.
    class WhatsAppTemplatesGroupEvent < Internal::Types::Model
      extend Wavix::Internal::Types::Union

      discriminant :type

      member -> { Wavix::Types::WhatsAppTemplateApprovedEvent }, key: "WHATSAPP_TEMPLATE_APPROVED"

      member -> { Wavix::Types::WhatsAppTemplateRejectedEvent }, key: "WHATSAPP_TEMPLATE_REJECTED"

      member -> { Wavix::Types::WhatsAppTemplatePausedEvent }, key: "WHATSAPP_TEMPLATE_PAUSED"

      member -> { Wavix::Types::WhatsAppTemplateDisabledEvent }, key: "WHATSAPP_TEMPLATE_DISABLED"

      member -> { Wavix::Types::WhatsAppTemplateFlaggedEvent }, key: "WHATSAPP_TEMPLATE_FLAGGED"

      member -> { Wavix::Types::WhatsAppTemplateCategoryChangedEvent }, key: "WHATSAPP_TEMPLATE_CATEGORY_CHANGED"

      member -> { Wavix::Types::WhatsAppTemplateQualityChangedEvent }, key: "WHATSAPP_TEMPLATE_QUALITY_CHANGED"

      member -> { Wavix::Types::WhatsAppTemplateUpdatedEvent }, key: "WHATSAPP_TEMPLATE_UPDATED"

      member -> { Wavix::Types::WhatsAppWebhookTestEvent }, key: "TEST"
    end
  end
end
