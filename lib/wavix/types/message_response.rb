# frozen_string_literal: true

module Wavix
  module Types
    class MessageResponse < Internal::Types::Model
      field :message_id, -> { String }, optional: false, nullable: false

      field :message_type, -> { String }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :direction, -> { String }, optional: false, nullable: false

      field :mcc, -> { String }, optional: false, nullable: true

      field :mnc, -> { String }, optional: false, nullable: true

      field :message_body, -> { Wavix::Types::MessageBody }, optional: false, nullable: false

      field :tag, -> { String }, optional: false, nullable: true

      field :status, -> { Wavix::Types::MessageDeliveryStatus }, optional: false, nullable: false

      field :segments, -> { Integer }, optional: false, nullable: false

      field :charge, -> { String }, optional: false, nullable: false

      field :submitted_at, -> { String }, optional: false, nullable: false

      field :sent_at, -> { String }, optional: false, nullable: true

      field :delivered_at, -> { String }, optional: false, nullable: true

      field :error_message, -> { String }, optional: false, nullable: true

      field :carrier_fees, -> { String }, optional: true, nullable: false
    end
  end
end
