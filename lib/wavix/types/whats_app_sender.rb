# frozen_string_literal: true

module Wavix
  module Types
    class WhatsAppSender < Internal::Types::Model
      field :phone_number, -> { String }, optional: false, nullable: false

      field :display_name, -> { String }, optional: true, nullable: false

      field :status, -> { Wavix::Types::WhatsAppSenderStatus }, optional: false, nullable: false

      field :quality_rating, -> { Wavix::Types::WhatsAppSenderQualityRating }, optional: true, nullable: false

      field :message_tier, -> { Wavix::Types::WhatsAppSenderMessageTier }, optional: true, nullable: false
    end
  end
end
