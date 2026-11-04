# frozen_string_literal: true

module Wavix
  module Types
    # A WhatsApp message you sent. Returned by `whatsapp_messages_send`.
    class WhatsAppMessage < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :status, -> { Wavix::Types::WhatsAppMessageStatus }, optional: false, nullable: false

      field :template, -> { Wavix::Types::WhatsAppMessageTemplate }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
