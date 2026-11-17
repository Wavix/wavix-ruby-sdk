# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.template.updated`. The status of one of your templates changed to a value that has no
    # event type of its own, such as `pending` or `deleted`. Posted to your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppTemplateUpdatedEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppTemplateEventData }, optional: false, nullable: false
    end
  end
end
