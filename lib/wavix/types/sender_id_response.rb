# frozen_string_literal: true

module Wavix
  module Types
    class SenderIDResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :sender_id, -> { String }, optional: false, nullable: false

      field :type, -> { Wavix::Types::SenderIDResponseType }, optional: false, nullable: false

      field :usecase, -> { String }, optional: true, nullable: false

      field :samples, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :allowlisted_in, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
