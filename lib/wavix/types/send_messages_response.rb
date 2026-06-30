# frozen_string_literal: true

module Wavix
  module Types
    class SendMessagesResponse < Internal::Types::Model
      field :carrier_fees, -> { String }, optional: true, nullable: false

      field :charge, -> { String }, optional: true, nullable: false

      field :direction, -> { String }, optional: true, nullable: false

      field :delivered_at, -> { String }, optional: true, nullable: false

      field :error_message, -> { String }, optional: true, nullable: false

      field :from, -> { String }, optional: true, nullable: false

      field :mcc, -> { String }, optional: true, nullable: false

      field :mnc, -> { String }, optional: true, nullable: false

      field :message_body, -> { Wavix::Types::MessageBody }, optional: true, nullable: false

      field :message_id, -> { String }, optional: true, nullable: false

      field :message_type, -> { String }, optional: true, nullable: false

      field :segments, -> { Integer }, optional: true, nullable: false

      field :sent_at, -> { String }, optional: true, nullable: false

      field :status, -> { String }, optional: true, nullable: false

      field :submitted_at, -> { String }, optional: true, nullable: false

      field :tag, -> { String }, optional: true, nullable: false

      field :to, -> { String }, optional: true, nullable: false
    end
  end
end
