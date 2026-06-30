# frozen_string_literal: true

module Wavix
  module Types
    # Inbound call destination
    class NumberDestination < Internal::Types::Model
      field :destination, -> { String }, optional: false, nullable: false

      field :priority, -> { Integer }, optional: false, nullable: false

      field :transport, -> { Integer }, optional: false, nullable: false

      field :trunk_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
