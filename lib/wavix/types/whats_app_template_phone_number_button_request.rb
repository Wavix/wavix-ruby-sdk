# frozen_string_literal: true

module Wavix
  module Types
    # Button that calls a phone number. Consumed by `whatsapp_templates_create`.
    class WhatsAppTemplatePhoneNumberButtonRequest < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :phone_number, -> { String }, optional: false, nullable: false
    end
  end
end
