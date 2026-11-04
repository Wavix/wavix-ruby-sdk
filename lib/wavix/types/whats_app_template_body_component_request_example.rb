# frozen_string_literal: true

module Wavix
  module Types
    # Sample values for the placeholders in the body text.
    class WhatsAppTemplateBodyComponentRequestExample < Internal::Types::Model
      field :body_text, -> { Internal::Types::Array[Internal::Types::Array[String]] }, optional: false, nullable: false
    end
  end
end
