# frozen_string_literal: true

module Wavix
  module Types
    # Data of a `whatsapp.contact.marketing_stopped` or `whatsapp.contact.marketing_resumed` event. It names the contact
    # and the sender the choice applies to.
    class WhatsAppContactMarketingPreferenceEventData < Internal::Types::Model
      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false
    end
  end
end
