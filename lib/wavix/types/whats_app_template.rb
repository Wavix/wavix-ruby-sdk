# frozen_string_literal: true

module Wavix
  module Types
    # A WhatsApp message template with its review status and components. Returned by `whatsapp_templates_list`,
    # `whatsapp_templates_get`, and `whatsapp_templates_create`.
    class WhatsAppTemplate < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :language, -> { String }, optional: false, nullable: false

      field :category, -> { Wavix::Types::WhatsAppTemplateCategory }, optional: false, nullable: false

      field :status, -> { Wavix::Types::WhatsAppTemplateStatus }, optional: false, nullable: false

      field :quality_rating, -> { Wavix::Types::WhatsAppTemplateQualityRating }, optional: false, nullable: true

      field :submitted_at, -> { String }, optional: true, nullable: false

      field :components, -> { Internal::Types::Array[Wavix::Types::WhatsAppTemplateResponseComponent] }, optional: false, nullable: false

      field :waba, -> { Wavix::Types::WhatsAppWaba }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
