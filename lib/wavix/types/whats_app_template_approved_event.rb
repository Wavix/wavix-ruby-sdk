# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.template.approved`. The provider approved one of your templates, so you can send it.
    # Posted to your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppTemplateApprovedEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppTemplateEventData }, optional: false, nullable: false
    end
  end
end
