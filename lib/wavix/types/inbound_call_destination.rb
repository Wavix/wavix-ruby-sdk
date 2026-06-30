# frozen_string_literal: true

module Wavix
  module Types
    # Inbound call destination
    class InboundCallDestination < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :destination, -> { String }, optional: false, nullable: false

      field :priority, -> { Integer }, optional: false, nullable: false

      field :transport, -> { Integer }, optional: false, nullable: false

      field :trunk_id, -> { Integer }, optional: false, nullable: true

      field :srtp, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :trunk_label, -> { String }, optional: false, nullable: true
    end
  end
end
