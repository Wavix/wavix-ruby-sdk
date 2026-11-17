# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.template.category_changed`. Meta moved one of your templates to another category, which
    # changes the rate of each message sent with it. Posted to your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppTemplateCategoryChangedEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppTemplateEventData }, optional: false, nullable: false
    end
  end
end
