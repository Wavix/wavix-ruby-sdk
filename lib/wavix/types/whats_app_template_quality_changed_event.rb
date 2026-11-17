# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.template.quality_changed`. Meta changed the quality rating of one of your templates.
    # Posted to your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppTemplateQualityChangedEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppTemplateEventData }, optional: false, nullable: false
    end
  end
end
