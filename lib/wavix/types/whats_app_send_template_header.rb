# frozen_string_literal: true

module Wavix
  module Types
    # Header content, required only when the template's `header` component needs one. Each `type` requires specific
    # fields and rejects the others, as listed in the `type` description. Consumed in `template.header` by
    # `whatsapp_messages_send`.
    class WhatsAppSendTemplateHeader < Internal::Types::Model
      field :type, -> { Wavix::Types::WhatsAppSendTemplateHeaderType }, optional: false, nullable: false

      field :placeholder, -> { String }, optional: true, nullable: false

      field :media_url, -> { String }, optional: true, nullable: false

      field :filename, -> { String }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: true, nullable: false

      field :longitude, -> { Integer }, optional: true, nullable: false

      field :parameter_name, -> { String }, optional: true, nullable: false

      field :text, -> { String }, optional: true, nullable: false
    end
  end
end
