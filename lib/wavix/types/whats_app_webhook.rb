# frozen_string_literal: true

module Wavix
  module Types
    # A WhatsApp webhook of your account, returned when you create, list, or retrieve a webhook.
    class WhatsAppWebhook < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :group, -> { Wavix::Types::WhatsAppWebhookGroup }, optional: false, nullable: false

      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :enabled_events, -> { Internal::Types::Array[Wavix::Types::WhatsAppEventType] }, optional: true, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :secret, -> { String }, optional: true, nullable: false
    end
  end
end
