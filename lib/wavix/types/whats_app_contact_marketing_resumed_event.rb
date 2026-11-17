# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.contact.marketing_resumed`. A contact asked to receive marketing messages from one of your
    # senders again. Posted to your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppContactMarketingResumedEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppContactMarketingPreferenceEventData }, optional: false, nullable: false
    end
  end
end
