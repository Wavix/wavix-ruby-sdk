# frozen_string_literal: true

module Wavix
  module Types
    # Attributes of a new WhatsApp template. Consumed by `whatsapp_templates_create`.
    class WhatsAppTemplateCreateRequest < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :language, -> { String }, optional: false, nullable: false

      field :category, -> { Wavix::Types::WhatsAppTemplateCreateRequestCategory }, optional: false, nullable: false

      field :components, -> { Internal::Types::Array[Wavix::Types::WhatsAppTemplateComponentRequest] }, optional: false, nullable: false

      field :waba_id, -> { String }, optional: true, nullable: false

      field :sender, -> { String }, optional: true, nullable: false
    end
  end
end
