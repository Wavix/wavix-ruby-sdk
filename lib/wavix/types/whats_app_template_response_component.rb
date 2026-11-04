# frozen_string_literal: true

module Wavix
  module Types
    # A component of a stored WhatsApp template. Returned inside templates by `whatsapp_templates_list`,
    # `whatsapp_templates_get`, and `whatsapp_templates_create`. Section types other than header, body, footer, and
    # buttons can carry fields of their own.
    class WhatsAppTemplateResponseComponent < Internal::Types::Model
      field :type, -> { String }, optional: false, nullable: false

      field :format, -> { Wavix::Types::WhatsAppTemplateResponseComponentFormat }, optional: true, nullable: false

      field :text, -> { String }, optional: true, nullable: false

      field :example, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :buttons, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false
    end
  end
end
