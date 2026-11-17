# frozen_string_literal: true

module Wavix
  module Types
    # Body of the request that creates a WhatsApp webhook.
    class WhatsAppWebhookCreateRequest < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :group, -> { Wavix::Types::WhatsAppWebhookGroup }, optional: false, nullable: false
    end
  end
end
