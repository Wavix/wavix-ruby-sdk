# frozen_string_literal: true

module Wavix
  module Types
    class WhatsAppTemplate < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :language, -> { String }, optional: false, nullable: false

      field :category, -> { Wavix::Types::WhatsAppTemplateCategory }, optional: false, nullable: false

      field :status, -> { Wavix::Types::WhatsAppTemplateStatus }, optional: false, nullable: false

      field :quality_rating, -> { Wavix::Types::WhatsAppTemplateQualityRating }, optional: true, nullable: false

      field :submitted_at, -> { String }, optional: true, nullable: false

      field :components, -> { Internal::Types::Array[Wavix::Types::WhatsAppTemplateComponent] }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
