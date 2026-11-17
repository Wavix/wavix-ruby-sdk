# frozen_string_literal: true

module Wavix
  module Types
    # Data of a `whatsapp.message.received` event. It carries the received message, its phone numbers, and what you need
    # to reply.
    class WhatsAppMessageReceivedEventData < Internal::Types::Model
      field :message_uuid, -> { String }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :profile_name, -> { String }, optional: false, nullable: true

      field :content, -> { Wavix::Types::WhatsAppInboundContent }, optional: false, nullable: false

      field :context, -> { Wavix::Types::WhatsAppInboundContext }, optional: false, nullable: true

      field :referral, -> { Wavix::Types::WhatsAppInboundReferral }, optional: false, nullable: true

      field :service_window_open_until, -> { String }, optional: false, nullable: false
    end
  end
end
