# frozen_string_literal: true

module Wavix
  module Types
    # Message delivery report (DLR).
    class MessagesDeliveryReport < Internal::Types::Model
      field :message_id, -> { String }, optional: false, nullable: false

      field :message_type, -> { String }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :tag, -> { String }, optional: true, nullable: false

      field :status, -> { Wavix::Types::MessageDeliveryStatus }, optional: false, nullable: false

      field :segments_count, -> { Integer }, optional: false, nullable: false

      field :sent, -> { String }, optional: false, nullable: true

      field :delivered, -> { String }, optional: true, nullable: false

      field :error, -> { String }, optional: true, nullable: false

      field :charge, -> { String }, optional: false, nullable: false

      field :carrier_fees, -> { String }, optional: false, nullable: false
    end
  end
end
