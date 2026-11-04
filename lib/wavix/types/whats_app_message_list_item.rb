# frozen_string_literal: true

module Wavix
  module Types
    # A WhatsApp message your account sent or received. Returned by `whatsapp_messages_list` and
    # `whatsapp_messages_get`.
    class WhatsAppMessageListItem < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :direction, -> { Wavix::Types::WhatsAppMessageListItemDirection }, optional: false, nullable: false

      field :status, -> { Wavix::Types::WhatsAppMessageListItemStatus }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
