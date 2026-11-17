# frozen_string_literal: true

module Wavix
  module Types
    # The ad or post that brought the contact to the conversation. Returned in `referral` of a
    # `whatsapp.message.received` event when the contact tapped a click-to-WhatsApp ad.
    class WhatsAppInboundReferral < Internal::Types::Model
      field :source_type, -> { Wavix::Types::WhatsAppInboundReferralSourceType }, optional: false, nullable: false

      field :source_id, -> { String }, optional: false, nullable: false

      field :source_url, -> { String }, optional: false, nullable: false

      field :headline, -> { String }, optional: false, nullable: true

      field :body, -> { String }, optional: false, nullable: true

      field :click_id, -> { String }, optional: false, nullable: true
    end
  end
end
