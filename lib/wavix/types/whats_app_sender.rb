# frozen_string_literal: true

module Wavix
  module Types
    # A WhatsApp sender, which is a phone number registered with WhatsApp in one of your account's WhatsApp Business
    # Accounts. Returned by `whatsapp_senders_list` and `whatsapp_senders_get`.
    class WhatsAppSender < Internal::Types::Model
      field :phone_number, -> { String }, optional: false, nullable: false

      field :display_name, -> { String }, optional: false, nullable: true

      field :status, -> { Wavix::Types::WhatsAppSenderStatus }, optional: false, nullable: false

      field :quality_rating, -> { Wavix::Types::WhatsAppSenderQualityRating }, optional: false, nullable: true

      field :waba, -> { Wavix::Types::WhatsAppWaba }, optional: false, nullable: false
    end
  end
end
