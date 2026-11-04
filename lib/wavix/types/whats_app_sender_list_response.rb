# frozen_string_literal: true

module Wavix
  module Types
    # Returned by `whatsapp_senders_list`.
    class WhatsAppSenderListResponse < Internal::Types::Model
      field :senders, -> { Internal::Types::Array[Wavix::Types::WhatsAppSender] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
