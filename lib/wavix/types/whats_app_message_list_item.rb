# frozen_string_literal: true

module Wavix
  module Types
    class WhatsAppMessageListItem < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :direction, -> { Wavix::Types::WhatsAppMessageListItemDirection }, optional: false, nullable: false

      field :status, -> { Wavix::Types::WhatsAppMessageListItemStatus }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
