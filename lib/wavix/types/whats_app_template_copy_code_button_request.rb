# frozen_string_literal: true

module Wavix
  module Types
    # Button that copies a code to the clipboard. Consumed by `whatsapp_templates_create`.
    class WhatsAppTemplateCopyCodeButtonRequest < Internal::Types::Model
      field :example, -> { String }, optional: false, nullable: false
    end
  end
end
