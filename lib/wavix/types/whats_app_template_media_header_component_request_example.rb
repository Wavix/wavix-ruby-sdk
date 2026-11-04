# frozen_string_literal: true

module Wavix
  module Types
    # Sample media file.
    class WhatsAppTemplateMediaHeaderComponentRequestExample < Internal::Types::Model
      field :header_handle, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
