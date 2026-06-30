# frozen_string_literal: true

module Wavix
  module Types
    # SMS Sender ID.
    class SenderID < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :sender_id, -> { String }, optional: false, nullable: false

      field :type, -> { Wavix::Types::SenderIDType }, optional: false, nullable: false

      field :allowlisted_in, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :usecase, -> { String }, optional: true, nullable: false

      field :samples, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
