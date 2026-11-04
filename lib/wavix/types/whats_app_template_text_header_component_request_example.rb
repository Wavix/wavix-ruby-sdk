# frozen_string_literal: true

module Wavix
  module Types
    # Sample for the `{{1}}` placeholder.
    class WhatsAppTemplateTextHeaderComponentRequestExample < Internal::Types::Model
      field :header_text, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
