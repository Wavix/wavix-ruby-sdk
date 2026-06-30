# frozen_string_literal: true

module Wavix
  module Types
    # An inbound message
    class InboundMessage < Internal::Types::Model
      field :message_id, -> { String }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :message_body, -> { Wavix::Types::MessageBody }, optional: false, nullable: false

      field :received_at, -> { String }, optional: false, nullable: false
    end
  end
end
