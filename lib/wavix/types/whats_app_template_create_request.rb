# frozen_string_literal: true

module Wavix
  module Types
    class WhatsAppTemplateCreateRequest < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :language, -> { String }, optional: false, nullable: false

      field :category, -> { Wavix::Types::WhatsAppTemplateCreateRequestCategory }, optional: false, nullable: false

      field :components, -> { Internal::Types::Array[Wavix::Types::WhatsAppTemplateComponent] }, optional: false, nullable: false
    end
  end
end
