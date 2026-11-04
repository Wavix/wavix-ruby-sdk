# frozen_string_literal: true

module Wavix
  module Types
    # A WhatsApp Business Account linked to your account, embedded in senders and templates.
    class WhatsAppWaba < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true
    end
  end
end
