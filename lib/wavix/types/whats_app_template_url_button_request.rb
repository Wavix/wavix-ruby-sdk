# frozen_string_literal: true

module Wavix
  module Types
    # Button that opens a URL. Consumed by `whatsapp_templates_create`.
    class WhatsAppTemplateURLButtonRequest < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :example, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
