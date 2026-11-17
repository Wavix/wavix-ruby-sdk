# frozen_string_literal: true

module Wavix
  module Types
    # Data of a template event. It carries the template's status, category, and quality rating after the change, and the
    # previous value of the attribute that changed.
    class WhatsAppTemplateEventData < Internal::Types::Model
      field :template_uuid, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :language, -> { String }, optional: false, nullable: false

      field :status, -> { Wavix::Types::WhatsAppTemplateEventDataStatus }, optional: false, nullable: false

      field :category, -> { Wavix::Types::WhatsAppTemplateEventDataCategory }, optional: false, nullable: false

      field :quality_rating, -> { Wavix::Types::WhatsAppTemplateEventDataQualityRating }, optional: false, nullable: true

      field :previous_attributes, -> { Wavix::Types::WhatsAppTemplatePreviousAttributes }, optional: false, nullable: false
    end
  end
end
