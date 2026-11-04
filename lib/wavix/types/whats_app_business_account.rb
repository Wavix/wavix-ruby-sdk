# frozen_string_literal: true

module Wavix
  module Types
    # A WhatsApp Business Account linked to your account. Returned by `whatsapp_wabas_list` and `whatsapp_wabas_get`.
    class WhatsAppBusinessAccount < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :messaging_limit, -> { Wavix::Types::WhatsAppBusinessAccountMessagingLimit }, optional: true, nullable: false

      field :sender_count, -> { Integer }, optional: false, nullable: false
    end
  end
end
