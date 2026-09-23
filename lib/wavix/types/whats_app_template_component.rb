# frozen_string_literal: true

module Wavix
  module Types
    # One structural component (header, body, footer, or buttons) of a WhatsApp message template.
    class WhatsAppTemplateComponent < Internal::Types::Model
      field :type, -> { Wavix::Types::WhatsAppTemplateComponentType }, optional: false, nullable: false

      field :format, -> { Wavix::Types::WhatsAppTemplateComponentFormat }, optional: true, nullable: false

      field :text, -> { String }, optional: true, nullable: false

      field :example, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :buttons, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false
    end
  end
end
