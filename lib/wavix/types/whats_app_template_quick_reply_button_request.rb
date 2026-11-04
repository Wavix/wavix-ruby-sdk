# frozen_string_literal: true

module Wavix
  module Types
    # Button that sends its label back as a reply. Consumed by `whatsapp_templates_create`.
    class WhatsAppTemplateQuickReplyButtonRequest < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
