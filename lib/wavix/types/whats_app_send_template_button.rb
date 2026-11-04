# frozen_string_literal: true

module Wavix
  module Types
    # Dynamic values for one button of the template. Each `type` requires specific fields and rejects the others, as
    # listed in the `type` description. Consumed in `template.buttons` by `whatsapp_messages_send`.
    class WhatsAppSendTemplateButton < Internal::Types::Model
      field :type, -> { Wavix::Types::WhatsAppSendTemplateButtonType }, optional: false, nullable: false

      field :parameter, -> { String }, optional: true, nullable: false

      field :flow_token, -> { String }, optional: true, nullable: false

      field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :thumbnail_product_retailer_id, -> { String }, optional: true, nullable: false

      field :sections, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false

      field :action, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :call_validity_period, -> { Integer }, optional: true, nullable: false

      field :call_context_payload, -> { String }, optional: true, nullable: false
    end
  end
end
