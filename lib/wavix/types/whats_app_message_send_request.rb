# frozen_string_literal: true

module Wavix
  module Types
    class WhatsAppMessageSendRequest < Internal::Types::Model
      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :template, -> { Wavix::Types::WhatsAppMessageSendRequestTemplate }, optional: false, nullable: false
    end
  end
end
